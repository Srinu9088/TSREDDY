using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignments
{
    class Colors
    {
        enum Color {
            red,
            yellow,
            green
        }
        public void printColor() {
            Console.WriteLine("Red numeric posiion is:"+(Int32)Color.red);
            Console.WriteLine("Yellow numeric posiion is:" + (Int32)Color.yellow);
            Console.WriteLine("Green numeric posiion is:" + (Int32)Color.green);
        }
    }
}
