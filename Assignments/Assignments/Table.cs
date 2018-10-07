using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignments
{
    class Table
    {
        public void table(int num) {
            Console.WriteLine("\n" + "The {0} table is:",num);
            Console.Write("_______________\n");
            for (int i = 1; i <= 20; i++)
            {
                Console.WriteLine("{0}*{1}={2}", num, i, num * i);
            }
        }
    }
}
