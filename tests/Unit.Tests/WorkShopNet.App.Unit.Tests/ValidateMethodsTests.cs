using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkShopNet.App.Unit.Tests
{
    [TestFixture]
    public class ValidateMethodsTests
    {
        private IValidateMethod validator;
        private Mock<IfStatementValidator> mockIfStatementValidator;

        [SetUp]
        public void SetUp()
        {
            mockIfStatementValidator = new Mock<IfStatementValidator>();
            validator = mockIfStatementValidator.Object;
        }

        [Test]
        public void Validate_Null_Or_Empty_Identifier_Failure()
        {
            // Arrage
            string identifier = string.Empty;
            List<string> expectedResults = new List<string>()
            {
                ValidationMessages.NullOrEmptyIdentifierError
            };

            mockIfStatementValidator.Setup(m => m.Validate(identifier)).Returns(expectedResults);

            // Act
            List<string> result = validator.Validate(identifier);

            // Asserts
            Assert.IsNotNull(result);
            Assert.IsNotEmpty(result);
            Assert.That(result.Count, Is.EqualTo(1));
            Assert.AreEqual(ValidationMessages.NullOrEmptyIdentifierError, result[0]);
        }
    }
}
