using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculator
{
    public partial class Form1 : Form
    {
        double FirstNumber;
        double SecondNumber;
        double Result;
        string Operation;
        

        public Form1()
        {
            InitializeComponent();
        }

        private void n1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "1";
            }
            //else if(Result>1.0 || Result>1.0)
            //{
            //    textBox1.Text = string.Empty;
            //    Result = 0.0;
            //    Result = 0.0;
            //    textBox1.Text = "1";
            //}
            else if(Result>0.0)
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "1";
            }
            //else if (Result >= 1.0 || Result >= 1.0)
            //{
            //    textBox1.Text = string.Empty;
            //    Result = 0.0;
            //    Result = 0.0;
            //    textBox1.Text = "1";
            //}
            else
            {
                textBox1.Text = textBox1.Text + "1";
            }
            //if(textBox1.Text.Length>=1)
            //{
            //    textBox1.Text = string.Empty;
            //    textBox1.Text = "1";
            //}
            //else
            //{
            //    textBox1.Text = "1";
            //}
        }

        private void n2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "2";
            }
            else if (Result > 0.0)
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "2";
            }
            else
            {
                textBox1.Text = textBox1.Text + "2";
            }
        }

        private void n3_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "3";
            }
            else if (Result > 0.0)
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "3";
            }
            else
            {
                textBox1.Text = textBox1.Text + "3";
            }
        }

        private void n4_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "4";
            }
            else if (Result > 0.0)
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "4";
            }
            else
            {
                textBox1.Text = textBox1.Text + "4";
            }
        }

        private void n5_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "5";
            }
            else if (Result > 0.0 )
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "5";
            }
            else
            {
                textBox1.Text = textBox1.Text + "5";
            }
        }

        private void n6_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "6";
            }
            else if (Result > 0.0)
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "6";
            }
            else
            {
                textBox1.Text = textBox1.Text + "6";
            }
        }

        private void n7_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "7";
            }
            else if (Result > 0.0)
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "7";
            }
            else
            {
                textBox1.Text = textBox1.Text + "7";
            }
        }
        private void n8_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "8";
            }
            else if (Result > 0.0 )
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "8";
            }
            else
            {
                textBox1.Text = textBox1.Text + "8";
            }
        }
        private void n9_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "0" && textBox1.Text != null)
            {
                textBox1.Text = "9";
            }
            else if (Result > 0.0)
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "9";
            }
            else
            {
                textBox1.Text = textBox1.Text + "9";
            }
        }

        private void n0_Click(object sender, EventArgs e)
        {
          
            if (Result > 0.0)
            {
                textBox1.Text = string.Empty;
                Result = 0.0;
                
                textBox1.Text = "0";
            }
            else
            {
                textBox1.Text = textBox1.Text + "0";
            }
           
        }

        private void bclr_Click(object sender, EventArgs e)
        {
            textBox1.Text = "0";
        }

        private void bdot_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox1.Text + ".";
        }

        private void badd_Click(object sender, EventArgs e)
        {
            FirstNumber = Convert.ToDouble(textBox1.Text);
            Result = 0;
            textBox1.Text = "0";
            Operation = "+";
        }

        private void bsub_Click(object sender, EventArgs e)
        {
            FirstNumber = Convert.ToDouble(textBox1.Text);
            Result = 0;
            textBox1.Text = "0";
            Operation = "-";
        }

        private void bmul_Click(object sender, EventArgs e)
        {
            FirstNumber = Convert.ToDouble(textBox1.Text);
            Result = 0;
            textBox1.Text = "0";
            Operation = "*";
        }

        private void bdiv_Click(object sender, EventArgs e)
        {
            FirstNumber = Convert.ToDouble(textBox1.Text);
            Result = 0;
            textBox1.Text = "0";
            Operation = "/";
        }

        private void bequ_Click(object sender, EventArgs e)
        {
            

            SecondNumber = Convert.ToDouble(textBox1.Text);

            if (Operation == "+")
            {
                Result = (FirstNumber + SecondNumber);
                textBox1.Text = Convert.ToString(Result);
               // FirstNumber = Result;
                //textBox1.Text = string.Empty;
            }
            if (Operation == "-")
            {
                Result = (FirstNumber - SecondNumber);
                textBox1.Text = Convert.ToString(Result);
               // FirstNumber = Result;
            }
            if (Operation == "*")
            {
                Result = (FirstNumber * SecondNumber);
                textBox1.Text = Convert.ToString(Result);
                //FirstNumber = Result;
            }
            if (Operation == "/")
            {
                if (SecondNumber == 0)
                {
                    textBox1.Text = "Cannot divide by zero";

                }
                else
                {
                    Result = (FirstNumber / SecondNumber);
                    textBox1.Text = Convert.ToString(Result);
                    //FirstNumber = Result;
                }
            }
        }

        private void bdel_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Length > 0)
            {
                textBox1.Text = textBox1.Text.Remove(textBox1.Text.Length - 1);
            }
        }

       

        private void bsqrt_Click(object sender, EventArgs e)
        {
            Result= (Math.Sqrt(Convert.ToDouble(textBox1.Text)));
            textBox1.Text = Convert.ToString(Result);
        }

        private void bpow2_Click(object sender, EventArgs e)
        {
            Result = Math.Pow(Convert.ToDouble(textBox1.Text), 2);
            textBox1.Text = Convert.ToString(Result);
        }

        private void bpow3_Click(object sender, EventArgs e)
        {
            Result = Math.Pow(Convert.ToDouble(textBox1.Text), 3);
            textBox1.Text = Convert.ToString(Result);
        }

        private void bfact_Click(object sender, EventArgs e)
        {
            Result = 1;
            for(double i=1;i<=Convert.ToDouble(textBox1.Text);i++)
            {
                Result = Result * i;
            }
            textBox1.Text = Convert.ToString(Result);
        }

        private void bpi_Click(object sender, EventArgs e)
        {
            textBox1.Text = "3.142";
        }

        private void blog_Click(object sender, EventArgs e)
        {
            Result = Math.Log(Convert.ToDouble(textBox1.Text));
            textBox1.Text = Convert.ToString(Result);
        }

        private void blog10_Click(object sender, EventArgs e)
        {
            Result = Math.Log10(Convert.ToDouble(textBox1.Text));
            textBox1.Text = Convert.ToString(Result);
        }

        private void bsin_Click(object sender, EventArgs e)
        {
            Result = (Math.Sin((Convert.ToDouble(Math.PI)/180)* (Convert.ToDouble(textBox1.Text))));
            textBox1.Text = Convert.ToString(Result);
        }

        private void bcos_Click(object sender, EventArgs e)
        {
            Result = (Math.Cos((Convert.ToDouble(Math.PI) / 180) * (Convert.ToDouble(textBox1.Text))));
            textBox1.Text = Convert.ToString(Result);
        }

        private void btan_Click(object sender, EventArgs e)
        {
            Result = (Math.Tan((Convert.ToDouble(Math.PI) / 180) * (Convert.ToDouble(textBox1.Text))));
            textBox1.Text = Convert.ToString(Result);
        }

        private void bhalf_Click(object sender, EventArgs e)
        {
            Result = Convert.ToDouble(textBox1.Text)/2;
            textBox1.Text = Convert.ToString(Result);
        }

        private void bsin_1_Click(object sender, EventArgs e)
        {
            Result = (Math.Asin((Convert.ToDouble(Math.PI) / 180) * (Convert.ToDouble(textBox1.Text))));
            textBox1.Text = Convert.ToString(Result);
        }

        private void bcos_1_Click(object sender, EventArgs e)
        {
            Result = (Math.Acos((Convert.ToDouble(Math.PI) / 180) * (Convert.ToDouble(textBox1.Text))));
            textBox1.Text = Convert.ToString(Result);
        }

        private void btan_1_Click(object sender, EventArgs e)
        {
            Result = (Math.Atan((Convert.ToDouble(Math.PI) / 180) * (Convert.ToDouble(textBox1.Text))));
            textBox1.Text = Convert.ToString(Result);
        }
    }
}
