using System;
using System.Collections.Generic;

namespace WorkShopNet.App
{
    public static class ValidateMethods
    {
        private static IValidateMethod _validator;

        public static List<string> ThrowExceptionValidate(string identifier)
        {
            _validator = new ThrowExceptionValidator();

            return _validator.Validate(identifier);
        }

        public static List<string> IfStatementValidate(string identifier)
        {
            _validator = new IfStatementValidator();

            return _validator.Validate(identifier);
        }

        public static List<string> RegularExpressionValidate(string identifier)
        {
            _validator = new RegularExpressionValidator();

            return _validator.Validate(identifier);
        }

        public static List<string> PcreValidate(string identifier)
        {
            _validator = new PcreValidator();

            return _validator.Validate(identifier);
        }
    }
}