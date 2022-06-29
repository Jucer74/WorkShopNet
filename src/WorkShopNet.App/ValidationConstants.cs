namespace WorkShopNet.App
{
    public static class ValidationConstants
    {
        #region Boundaries

        public const int Iterationlimit = 10;
        public const int MaxLength = 32;
        public const int MinLength = 5;

        #endregion Boundaries

        #region RegularExpressions

        public const string InitialCapitalLetterRegularExpression = @"^[A-Z][A-Za-z0-9]*";
        public static readonly string MaximumLengthRegularExpression = "^[a-zA-Z0-9]{1,32}$";
        public static readonly string MinimumLengthRegularExpression = "[a-zA-Z0-9]{5,}";

        #endregion RegularExpressions
    }
}