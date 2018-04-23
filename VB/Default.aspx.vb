Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxGridView

Namespace WebApplication11
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub

		Protected Sub ASPxGridView1_CustomSummaryCalculate(ByVal sender As Object, ByVal e As DevExpress.Data.CustomSummaryEventArgs)
			Dim incomeSummary As ASPxSummaryItem = (TryCast(sender, ASPxGridView)).TotalSummary("Income")
			Dim expenseSummary As ASPxSummaryItem = (TryCast(sender, ASPxGridView)).TotalSummary("Expense")
			Dim income As Decimal = Convert.ToDecimal((CType(sender, ASPxGridView)).GetTotalSummaryValue(incomeSummary))
			Dim expense As Decimal = Convert.ToDecimal((CType(sender, ASPxGridView)).GetTotalSummaryValue(expenseSummary))
			e.TotalValue = income - expense
		End Sub

	End Class
End Namespace
