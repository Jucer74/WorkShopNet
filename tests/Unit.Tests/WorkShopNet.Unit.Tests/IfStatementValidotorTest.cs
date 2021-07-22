using System.Collections.Generic;
using WorkShopNet.App;
using Xunit;

namespace WorkShopNet.Unit.Tests
{
    public class IfStatementValidotorTest
    {
        private readonly IValidateMethod validator;

        public IfStatementValidotorTest()
        {
            validator = new IfStatementValidator();
        }

        [Theory]
        [InlineData(null)]
        [InlineData("")]
        [InlineData("    ")]
        public void IfStatementValidator_Validate_Identifier_Fail(string identifier)
        {
            // Act
            List<string> errorList = validator.Validate(identifier);

            // Assert
            Assert.NotEmpty(errorList);
            Assert.Contains(ValidationMessages.NullOrEmptyIdentifierError, errorList);
        }

        [Fact]
        public void IfStatementValidator_Validate_Identifier_Initial_Capital_Letter_Fail()
        {
            // Arrange
            string identifier = "12345";

            // Act
            List<string> errorList = validator.Validate(identifier);

            // Assert
            Assert.NotEmpty(errorList);
            Assert.Single(errorList);
            Assert.Contains(ValidationMessages.InitialCapitalLetterError, errorList);
        }

        [Fact]
        public void IfStatementValidator_Validate_Identifier_Maximum_Length_Fail()
        {
            // Arrange
            string identifier = "A".PadRight(ValidationConstants.MaxLength + 1, '0');

            // Act
            List<string> errorList = validator.Validate(identifier);

            // Assert
            Assert.NotEmpty(errorList);
            Assert.Single(errorList);
            Assert.Contains(ValidationMessages.MaximumLengthError, errorList);
        }

        [Fact]
        public void IfStatementValidator_Validate_Identifier_Minimum_Length_Fail()
        {
            // Arrange
            string identifier = "A123";

            // Act
            List<string> errorList = validator.Validate(identifier);

            // Assert
            Assert.NotEmpty(errorList);
            Assert.Single(errorList);
            Assert.Contains(ValidationMessages.MinimumLengthError, errorList);
        }

        [Fact]
        public void IfStatementValidator_Validate_Identifier_Success()
        {
            // Arrange
            string identifier = "JUI447";

            // Act
            List<string> errorList = validator.Validate(identifier);

            // Assert
            Assert.Empty(errorList);
        }

        [Fact]
        public void IfStatementValidator_Validate_Identifier_Initial_Capital_Letter_And_Minimum_Length_Fail()
        {
            // Arrange
            string identifier = "1234";

            // Act
            List<string> errorList = validator.Validate(identifier);

            // Assert
            Assert.NotEmpty(errorList);
            Assert.Equal(2, errorList.Count);
            Assert.Contains(ValidationMessages.InitialCapitalLetterError, errorList);
            Assert.Contains(ValidationMessages.MinimumLengthError, errorList);
        }
    }
}