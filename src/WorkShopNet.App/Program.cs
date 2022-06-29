///<summary>
/// This application validate an Identifier using the bellow rules
/// - An identifier must not null or empty
/// - An identifier must have at least 5 characters and max 32 characters
/// - An identifier must start with an uppercase letter
///
/// The Validation for the entries use different validation methods
/// - Using Regular Expressions
/// - Using normal IF statements
/// - Throw exceptions in case any rule is not followed
///
/// The application shows the errors list for each broken rule and,
/// If the identifier is correct, returns an empty list.
///
/// The application must execute 1'000.000 iterations for each method (RegEx, If, Exceptions)
/// and for each iteration the task must execute :
/// - A call with an identifier without problem
/// - A call with an identifier that does not meet the minimum length
/// - A call with a string that does not meet the maximum length
/// - A call with a string that does not meet the capital letter rule.
///
/// Each execution must measure total execution time and the
/// average and total processor and memory consumption by each method
///
/// Show execution times and memory / processor information for each method in console.
///</summary>

// Namespaces
using System;
using System.Collections.Generic;
using System.Diagnostics;
using WorkShopNet.App;
using System.Diagnostics.CodeAnalysis;



#region Test-Data

string rightIdentifier = "J20210727";
string badMinimumLengthIdentifier = "A123";
string badMaximumLengthIdentifier = "A".PadRight(ValidationConstants.MaxLength + 1, '0');
string badInitialCapitalLetterIdentifier = "1234567890";

#endregion Test-Data


// Entry Point
Console.Clear();
Console.WriteLine("WorkShop .Net");
Console.WriteLine("-------------");
Console.WriteLine();

//ExecuteValidationMethod(ValidateMethods.RegularExpressionValidate);
ExecuteValidationMethod(ValidateMethods.IfStatementValidate);
//ExecuteValidationMethod(ValidateMethods.ThrowExceptionValidate);
//ExecuteValidationMethod(ValidateMethods.PcreValidate);

#region Methods
[ExcludeFromCodeCoverage]
void ExecuteValidationMethod(Func<string, List<string>> validMethod)
{
    Process currentProcess = Process.GetCurrentProcess();

    string methodName = validMethod.Method.Name;
    Console.WriteLine("{0}\n{1}", methodName, "-".PadRight(methodName.Length, '-'));

    Stopwatch sw = Stopwatch.StartNew();

    List<string> errorList = new();

    for (int i = 0; i < ValidationConstants.Iterationlimit; i++)
    {
        Console.Write(".");
        errorList = validMethod(rightIdentifier);
        errorList = validMethod(badMinimumLengthIdentifier);
        errorList = validMethod(badMaximumLengthIdentifier);
        errorList = validMethod(badInitialCapitalLetterIdentifier);
    }

    sw.Stop();

    // Get the elapsed time as a TimeSpan value and format the output
    TimeSpan ts = sw.Elapsed;
    string elapsedTime = String.Format("{0:00}:{1:00}:{2:00}.{3:00}", ts.Hours, ts.Minutes, ts.Seconds, ts.Milliseconds / 10);
    // Get Used Memory in Megabytes
    long usedMemory = currentProcess.PrivateMemorySize64 / 1024;

    Console.WriteLine("Elapsed Time= {0} / Memory used= {1} MB", elapsedTime, usedMemory);
    Console.WriteLine();
}

#endregion Methods