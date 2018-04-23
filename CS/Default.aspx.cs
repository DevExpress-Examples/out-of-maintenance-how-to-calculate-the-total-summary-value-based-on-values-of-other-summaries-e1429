using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;

namespace WebApplication11 {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
        }

        protected void ASPxGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e) {
            ASPxSummaryItem incomeSummary = (sender as ASPxGridView).TotalSummary["Income"];
            ASPxSummaryItem expenseSummary = (sender as ASPxGridView).TotalSummary["Expense"];
            Decimal income = Convert.ToDecimal(((ASPxGridView)sender).GetTotalSummaryValue(incomeSummary));
            Decimal expense = Convert.ToDecimal(((ASPxGridView)sender).GetTotalSummaryValue(expenseSummary));
            e.TotalValue = income - expense;
        }
        
    }
}
