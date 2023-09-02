/// <summary>
/// This class implements a simple program that
/// will compute the amount of interest that is
/// earned on $17,000 invested at an interest
/// rate of 0.027 for one year.  The interest and
/// the value of the investment after one year are
/// printed to standard output.
/// </summary>
public class Interest {
   
   public static void Main(string[] args) {
   
       /* Declare the variables. */
   
       double principal;     // The value of the investment.
       double rate;          // The annual interest rate.
       double interest;      // Interest earned in one year.
       
       /* Do the computations. */
       
       principal = 17000;
       rate = 0.027;
       interest = principal * rate;   // Compute the interest.
       
       principal = principal + interest;
             // Compute value of investment after one year, with interest.
             // (Note: The new value replaces the old value of principal.)
             
       /* Output the results. */
             
       System.Console.Write("The interest earned is $");
       System.Console.WriteLine(interest);
       System.Console.Write("The value of the investment after one year is $");
       System.Console.WriteLine(principal);
                      
   } // end of Main()
      
} // end of class Interest