using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignments
{
    class EvenOdd
    {
        public void evenOdd(Int32 num)
        {
            
            
            Console.WriteLine("\nTo check {0} is Even or Odd", num);
            Console.Write("_________________________\n");
            if (num % 2 == 0)
            {
                Console.WriteLine("\n"+"{0} is even",num);
            }
            else
            {
                Console.WriteLine("\n {0} is odd",num);
            }
        }
    }
}
