namespace WorkShopNet.App
{
    public static class ValidationMessages
    {
        public static readonly string InitialCapitalLetterError = "The identifier must start with a capital letter";
        public static readonly string MaximumLengthError = $"The identifier must a maximum of {ValidationConstants.MaxLength} characters";
        public static readonly string MinimumLengthError = $"The identifier must at least {ValidationConstants.MinLength} characters in length";
        public static readonly string NullOrEmptyIdentifierError = "The identifier must not be null or empty";
    }
}