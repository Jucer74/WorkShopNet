using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkShopNet.App
{
    public class ThrowExceptionValidator : IValidateMethod
    {
        public List<string> Validate(string identifier)
        {
            List<string> errorList = new();

            try
            {
                ValidNullOrEmptyIdentifier(identifier);
                ValidMinimunLength(identifier);
                ValidMaximunLength(identifier);
                ValidInitialCapitalLetter(identifier);
            }
            catch (Exception ex)
            {
                errorList.Add(ex.Message);
            }

            return errorList;
        }

        protected void ValidNullOrEmptyIdentifier(string identifier)
        {
            if (string.IsNullOrEmpty(identifier))
            {
                throw new Exception(ValidationMessages.NullOrEmptyIdentifierError);
            }
        }

        protected void ValidInitialCapitalLetter(string identifier)
        {
            if (!char.IsUpper(identifier, 0))
            {
                throw new Exception(ValidationMessages.InitialCapitalLetterError);
            }
        }

        protected void ValidMaximunLength(string identifier)
        {
            if (identifier.Length > ValidationConstants.MaxLength)
            {
                throw new Exception(ValidationMessages.MaximumLengthError);
            }
        }

        protected void ValidMinimunLength(string identifier)
        {
            if (identifier.Length < ValidationConstants.MinLength)
            {
                throw new Exception(ValidationMessages.MinimumLengthError);
            }
        }
    }
}