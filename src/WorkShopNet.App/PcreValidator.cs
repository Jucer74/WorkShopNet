using PCRE;
using System.Collections.Generic;

namespace WorkShopNet.App
{
    public class PcreValidator : RulesValidations, IValidateMethod
    {
        public List<string> Validate(string identifier)
        {
            List<string> errorList = new();

            if (IsNullOrEmptyIdentifier(identifier))
            {
                errorList.Add(ValidationMessages.NullOrEmptyIdentifierError);
            }
            else
            {
                if (!IsValidMinimunLength(identifier))
                {
                    errorList.Add(ValidationMessages.MinimumLengthError);
                }

                if (!IsValidMaximunLength(identifier))
                {
                    errorList.Add(ValidationMessages.MaximumLengthError);
                }

                if (!IsInitialCapitalLetter(identifier))
                {
                    errorList.Add(ValidationMessages.InitialCapitalLetterError);
                }
            }

            return errorList;
        }

        protected override bool IsInitialCapitalLetter(string identifier)
        {
            var match = PcreRegex.Match(identifier, ValidationConstants.InitialCapitalLetterRegularExpression);
            return match.Success;
        }

        protected override bool IsNullOrEmptyIdentifier(string identifier)
        {
            return base.IsNullOrEmptyIdentifier(identifier);
        }

        protected override bool IsValidMaximunLength(string identifier)
        {
            var match = PcreRegex.Match(identifier, ValidationConstants.MaximumLengthRegularExpression);
            return match.Success;
        }

        protected override bool IsValidMinimunLength(string identifier)
        {
            var match = PcreRegex.Match(identifier, ValidationConstants.MinimumLengthRegularExpression);
            return match.Success;
        }
    }
}