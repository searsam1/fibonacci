using System;
namespace LogicalPrograms
{
    public class Program
    {
        public static void Main()
        {
            int a = 0, b = 1, c, n = 7;
            n = int.Parse(Console.ReadLine());
            if(n < 2)
            {
                Console.Write("Please Enter a number greater than two");
            }
            else
            {
                for(int i = 2; i < n; i++)
                {
                    c = a + b;
                    Console.Write(c + " ");
                    a = b;
                    b = c;
                }
            }
            Console.ReadKey();
        }
    }
}
