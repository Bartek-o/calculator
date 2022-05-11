using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Clear(object sender, EventArgs e)
        {
            result.Value = "0";
            hiddenNumber.Value = "";
            hiddenOperator.Value = "";
            HiddenFlag.Value = "0";
        }

        protected void ClearResultInput(object sender, EventArgs e)
        {
            result.Value = "0";
        }

        protected void Backspace(object sender, EventArgs e)
        {
            if (result.Value.Length != 1)
            {
                result.Value = result.Value.Substring(0, result.Value.Length - 1);
            }
            else
            {
                result.Value = "0";
            }
        }

        protected void Number(object sender, EventArgs e)
        {
            if (HiddenFlag.Value == "1")
            {
                result.Value = "0";
                HiddenFlag.Value = "11";
            }

            if (result.Value == "0" && (sender as Button).Text != ",")
            {
                result.Value = (sender as Button).Text;
            }
            else
            {
                if ((sender as Button).Text == "," && result.Value.Contains(","))
                {
                    return;
                }
                else
                {
                    result.Value += (sender as Button).Text;
                }
            }
        }

        protected void Operator(object sender, EventArgs e)
        {
            if (result.Value[result.Value.Length - 1].Equals(','))
            {
                result.Value += "0";
            }

            if (HiddenFlag.Value == "11")
            {
                Calculate(sender, e);
            }

            hiddenOperator.Value = (sender as Button).Text;

            if ((sender as Button).Text == "√")
            {
                Calculate(sender, e);
                return;
            }

            hiddenNumber.Value = result.Value;
            HiddenFlag.Value = "1";
        }

        protected void Calculate(object sender, EventArgs e)
        {
            if (result.Value[result.Value.Length-1].Equals(','))
            {
                result.Value += "0";
            }
            string tmp = "";
            switch (hiddenOperator.Value)
            {
                case "+":
                    tmp = (Convert.ToDouble(hiddenNumber.Value) + Convert.ToDouble(result.Value)).ToString();
                    Clear(sender, e);
                    result.Value = tmp;
                    break;
                case "-":
                    tmp = (Convert.ToDouble(hiddenNumber.Value) - Convert.ToDouble(result.Value)).ToString();
                    Clear(sender, e);
                    result.Value = tmp;
                    break;
                case "*":
                    tmp = (Convert.ToDouble(hiddenNumber.Value) * Convert.ToDouble(result.Value)).ToString();
                    Clear(sender, e);
                    result.Value = tmp;
                    break;
                case "/":
                    if (Convert.ToDouble(result.Value) == 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Division by zero!')", true);
                        Clear(sender, e);
                        break;
                    }
                    tmp = (Convert.ToDouble(hiddenNumber.Value) / Convert.ToDouble(result.Value)).ToString();
                    Clear(sender, e);
                    result.Value = tmp;
                    break;
                case "√":
                    tmp = Math.Sqrt(Convert.ToDouble(result.Value)).ToString();
                    Clear(sender, e);
                    result.Value = tmp;
                    break;
            }
        }
    }
}