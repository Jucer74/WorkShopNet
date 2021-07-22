using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace WorkShopNet.App
{
    public class RegularExpressionValidator : RulesValidations, IValidateMethod
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
            Regex regex = new Regex(ValidationConstants.InitialCapitalLetterRegularExpression);
            return regex.IsMatch(identifier);
        }

        protected override bool IsNullOrEmptyIdentifier(string identifier)
        {
            return base.IsNullOrEmptyIdentifier(identifier);
        }

        protected override bool IsValidMaximunLength(string identifier)
        {
            Regex regex = new Regex(ValidationConstants.MaximumLengthRegularExpression);
            return regex.IsMatch(identifier);
        }

        protected override bool IsValidMinimunLength(string identifier)
        {
            Regex regex = new Regex(ValidationConstants.MinimumLengthRegularExpression);
            return regex.IsMatch(identifier);
        }
    }
}