using System.Collections.Generic;

namespace WorkShopNet.App
{
    public interface IValidateMethod
    {
        List<string> Validate(string identifier);
    }
}