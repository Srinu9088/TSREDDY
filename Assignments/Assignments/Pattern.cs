using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignments
{
    class Pattern
    {
        public void star(int num)
        {
            Console.Write("The Pattern is:\n");
            Console.Write("_______________\n");
            for (int i = 1; i <= num; i++)
            {
                for (int j = 1; j <=i; j++)
                    Console.Write("{0}",i);
                Console.Write("\n");
              
            }
        }

        public void star1(int num)
        {
            Console.Write("The Pattern is:\n");
            Console.Write("_______________\n");
            for (int i = 1; i <= num; i++)
            {
                for (int j = 1; j <= i; j++)
                    Console.Write("{0}", j);
                Console.Write("\n");

            }
        }

        public void star2(int num)
        {
            Console.Write("The Pattern is:\n");
            Console.Write("_______________\n");
            for (int i = 1; i <= num; i++)
            {
                for (int j = 1; j <= i; j++)
                    Console.Write("*");
                Console.Write("\n");

            }
        }
    }
}
