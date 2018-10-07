using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practice
{
    class Class1
    {
        int age = 0;

        public Class1()
        {
            Console.WriteLine("Default constructor called ");
        }

        public Class1(int a)
        {
            Console.WriteLine("Parameter constructor called ");
            age = a;
        }
        public int Getage()
        {
            return age;
        }
        ~Class1()
        {
            Console.WriteLine("Distructor called");
            Console.ReadKey();
        }
    }
}
