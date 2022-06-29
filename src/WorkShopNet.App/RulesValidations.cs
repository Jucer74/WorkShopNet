namespace WorkShopNet.App
{
    public abstract class RulesValidations
    {
        protected abstract bool IsInitialCapitalLetter(string identifier);

        protected virtual bool IsNullOrEmptyIdentifier(string identifier)
        {
            return string.IsNullOrEmpty(identifier) || string.IsNullOrWhiteSpace(identifier);
        }

        protected abstract bool IsValidMaximunLength(string identifier);

        protected abstract bool IsValidMinimunLength(string identifier);
    }
}