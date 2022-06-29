using NUnit.Framework;
using System.Collections.Generic;

namespace WorkShopNet.App.Unit.Tests
{
    public class IfStatementValidatorTests
    {
        private IfStatementValidator testIfStatementValidator;

        [SetUp]
        public void SetUp()
        {
            testIfStatementValidator = new IfStatementValidator();
        }

        [Test]
        public void Validate_Null_Or_Empty_Identifier_Failure()
        {
            // Arrage
            string identifier = string.Empty;

            // Act
            List<string> result = testIfStatementValidator.Validate(identifier);

            // Asserts
            Assert.IsNotNull(result);
            Assert.IsNotEmpty(result);
            Assert.That(result.Count, Is.EqualTo(1));
            Assert.AreEqual(ValidationMessages.NullOrEmptyIdentifierError, result[0]);
        }

        [Test]
        public void Validate_Identifier_With_Minimun_Length_Failure()
        {
            // Arrage
            string identifier = "A123";

            // Act
            List<string> result = testIfStatementValidator.Validate(identifier);

            // Asserts
            Assert.IsNotNull(result);
            Assert.IsNotEmpty(result);
            Assert.That(result.Count, Is.EqualTo(1));
            Assert.That(result[0], Is.EqualTo(ValidationMessages.MinimumLengthError));
        }

        [Test]
        public void Validate_Identifier_With_Maximun_Length_Failure()
        {
            // Arrage
            string identifier = "A".PadRight(ValidationConstants.MaxLength + 1, '0');

            // Act
            List<string> result = testIfStatementValidator.Validate(identifier);

            // Asserts
            Assert.IsNotNull(result);
            Assert.IsNotEmpty(result);
            Assert.That(result.Count, Is.EqualTo(1));
            Assert.That(result[0], Is.EqualTo(ValidationMessages.MaximumLengthError));
        }


        [Test]
        public void Validate_Identifier_WithOut_Capital_Letter_At_Begin_Failure()
        {
            // Arrage
            string identifier = "123456";

            // Act
            List<string> result = testIfStatementValidator.Validate(identifier);

            // Asserts
            Assert.IsNotNull(result);
            Assert.IsNotEmpty(result);
            Assert.That(result.Count, Is.EqualTo(1));
            Assert.That(result[0], Is.EqualTo(ValidationMessages.InitialCapitalLetterError));
        }

        [Test]
        public void Validate_Identifier_WithOut_Capital_Letter_And_Minimun_Length_Failure()
        {
            // Arrage
            string identifier = "123";

            // Act
            List<string> result = testIfStatementValidator.Validate(identifier);

            // Asserts
            Assert.IsNotNull(result);
            Assert.IsNotEmpty(result);
            Assert.That(result.Count, Is.EqualTo(2));
            Assert.That(result[0], Is.EqualTo(ValidationMessages.MinimumLengthError));
            Assert.That(result[1], Is.EqualTo(ValidationMessages.InitialCapitalLetterError));
        }


    }
}