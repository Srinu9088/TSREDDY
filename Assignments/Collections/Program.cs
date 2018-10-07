using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practice
{
    enum weekday
    {
        Sunday,
        Monday,
        Tuesaday,
        Wednesday,
        Thursday,
        Friday,
        Saturday
    }
    class Program
    {
        static void Main(string[] args)
        {
            /*label: Console.WriteLine("Eneter integer");
      int num = Convert.ToInt32(Console.ReadLine());
      while (num <= 10)
      {
          goto label;
      }*/
            //Console.WriteLine("Enter grater than 10");
            //Console.ReadKey();



            /*Week 4 session3
             * 1. Read users inputs.
             * int num = Convert.ToInt32(Console.ReadLine());
            if (num == 1)
            {
                Console.WriteLine("You Entered 1");
            }
            else if (num == 100)
            {
                Console.WriteLine("You Enterer 100");
            }
            else {
                Console.WriteLine("Invalid input");
            }*/

            /*Week 4 session3
             * Program to read integers until user enters 10.*/
            /*int num = Convert.ToInt32(Console.ReadLine());
           // int[] arr = new int[num];
            for (int i = 0; i < num; i++)
            {
                int input= Convert.ToInt32(Console.ReadLine());
                if (input < 10)
                {
                    //arr[i] = input;
                    Console.WriteLine("Enetered greater than 10");
                }
                else
                    break;
            }*/

            /* week4 session3 
             * Program to find even or odd number*/
            /*int num = Convert.ToInt32(Console.ReadLine());
            if (num%2==0)
            {
                Console.WriteLine("Number is even");
            }
            else
            {
                Console.WriteLine("Number is odd");
            }*/

            /*Week4 session3 
             * Print days using switch case*/
            /* int num = Convert.ToInt32(Console.ReadLine());
             switch (num)
             {
                 case 1: Console.WriteLine("Monday");
                     break;
                 case 2: Console.WriteLine("Tuesday");
                     break;
                 case 3: Console.WriteLine("Wednesday");
                     break;
                 case 4: Console.WriteLine("Thursday");
                     break;
                 case 5: Console.WriteLine("Friday");
                     break;
                 case 6: Console.WriteLine("Saturday");
                     break;
                 case 7: Console.WriteLine("Sunday");
                     break;
                 default:
                     break;
             }*/

            /* Week4 session3
             * Display table of given number*/
            /*int num = Convert.ToInt32(Console.ReadLine());
            for (int i = 1; i <= 20; i++)
            {
                Console.WriteLine("{0}*{1}={2}", num, i, num * i);
            }*/

            /* Week4 session3
             * Display pattern*/
            /*int num = Convert.ToInt32(Console.ReadLine());
            for (int i = 1; i <=num; i++)
            {
                for (int j = 1; j <= i; j++)
                {
                    Console.Write(i);
                }
                Console.WriteLine();
            }*/

            //Week 5 session1
            //string fn = "srinu";
            //string ln = "reddy";
            //string str = fn + "\n" + ln;
            //Console.Write(str);

            //var numbers = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 };
            //for (int i = numbers.Count-1; i >=0; i--)
            //{
            //    if (numbers[i]%2==1)
            //    {
            //        numbers.RemoveAt(i);
            //    }
            //}

            //Lambda expression in c#
            //numbers.ForEach(number => Console.Write(number + " "));


            //week 5 session1
            // Console.ReadKey();
            //string fn = "srinu";
            //string ln = "reddy";
            //string str = fn + " " + ln;
            ////string str = fn + "\n" + ln;
            //Console.Write(str);
            //Console.WriteLine("\n");
            //Console.WriteLine(str.Substring(0,5));
            //StringBuilder stb = new StringBuilder();
            //stb.Append("1\n");
            //stb.Append("ANU\n");
            //stb.Append("TSR\n");
            //stb.Append("4");
            //Console.WriteLine(stb);
            //Console.ReadKey();
            //Class1 ob = new Class1();
            //Console.WriteLine(ob.Getage());
            //ob = new Class1(23);
            //Console.WriteLine(ob.Getage());


            //week5 session2
            //int num = 0;

            //label: Console.WriteLine("Enter integer");
            //var name = Console.ReadLine();
            //num = Convert.ToInt32(Console.ReadLine());
            ////for (int i = 1; i <= 10; i++)//while (num <= 10)
            ////{
            //if (num == 5)
            //{
            //    goto end;
            //}
            //Console.WriteLine("Your name is {0}", name);
            //Console.ReadKey();
            //else goto label;
            //end: Console.WriteLine("Execution ended");
            //}

            // Console.WriteLine("You enter grater than 10");
            //int num = 0;

            //for(int i=0;i<=10;i++)
            //{
            //    if (i == 3)
            //        break;
            //    if (i > 5)
            //        continue;
            //    Console.WriteLine(i);
            //}

            //label: Console.WriteLine("Enter Name");
            //var name = Console.ReadLine();


            //    if (name == "N" || name=="n")
            //    {
            //        goto end;
            //    }
            //    Console.WriteLine("Your name is {0}", name);
            //    goto label;


            //    end: Console.WriteLine("Execution ended");

            Console.WriteLine("Enter Number");
            var num =int.Parse( Console.ReadLine());
            if (num == (int)weekday.Monday)
            {
                Console.Write(weekday.Monday.ToString());
            }
            else if (num == (int)weekday.Tuesaday)
            {
                Console.Write(weekday.Tuesaday.ToString());
            }
            else if (num == (int)weekday.Wednesday)
            {
                Console.Write(weekday.Wednesday.ToString());
            }
            else if (num == (int)weekday.Thursday)
            {
                Console.Write(weekday.Thursday.ToString());
            }
            else if (num == (int)weekday.Friday)
            {
                Console.Write(weekday.Friday.ToString());
            }
            else if (num == (int)weekday.Saturday)
            {
                Console.Write(weekday.Saturday.ToString());
            }
            else if (num == (int)weekday.Sunday)
            {
                Console.Write(weekday.Sunday.ToString());
            }

            //switch (num)
            //{
            //    case 1:
            //        Console.WriteLine("Monday");
            //        break;
            //    case 2:
            //        Console.WriteLine("Tuesday");
            //        break;
            //    case 3:
            //        Console.WriteLine("Wednesday");
            //        break;
            //    case 4:
            //        Console.WriteLine("Thursday");
            //        break;
            //    case 5:
            //        Console.WriteLine("Friday");
            //        break;
            //    case 6:
            //        Console.WriteLine("Saturday");
            //        break;
            //    case 7:
            //        Console.WriteLine("Sunday");
            //        break;
            //    default:
            //        break;
            //}

            Console.ReadKey();

        }
    }
}
