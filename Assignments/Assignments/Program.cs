using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignments
{
    class Program
    {
        static void Main(string[] args)
        {
            
            bool flag = true;
            while (flag)
            {
                //Console.WriteLine("A. Even or odd" + "\n" + "B.Table" + "\n" + "C. Pattern" + "\n" + "E.Exit");
                Console.WriteLine("\n\tA or a. Even or odd" +"\n\tB or b.Table"+ "\n\tC or c. Pattern" + "\n\tE or e.Colors"+"\n\tF OR f. Exit ");
                Console.WriteLine("\n\t*******************");
                Console.WriteLine("\nEnter your option");
                string option = Console.ReadLine();
                if (option == "F" || option == "f") { flag = false; break; }
                switch (option)
                {
                    case "A":
                    case "a":
                        EvenOdd obj = new EvenOdd();
                        Console.WriteLine("Enter your number:");
                        Int32 n1 = Convert.ToInt32(Console.ReadLine());
                        obj.evenOdd(n1);
                        Console.WriteLine("\n");
                        break;
                    case "B":
                    case "b":
                        Table ob = new Table();
                        Console.WriteLine("Enter your number:");
                        Int32 n2 = Convert.ToInt32(Console.ReadLine());
                        ob.table(n2);
                        Console.WriteLine("\n");
                        break;
                    case "C":
                    case "c":
                        Pattern pat = new Pattern();
                        Console.WriteLine("Enter Number:");
                        int temp = Convert.ToInt32(Console.ReadLine());
                        pat.star(temp);
                        Console.ReadKey();
                        pat.star1(temp);
                        Console.ReadKey();
                        pat.star2(temp);
                        Console.WriteLine("\n");
                        break;
                    case "E":
                    case "e":
                        Colors col = new Colors();
                        col.printColor();
                        Console.ReadKey();
                        break;
                    //case "F":
                    //case "f":
                    //    flag = false;
                    //    break;
                    default:
                        break;
                }

            }
        }

    }
}

