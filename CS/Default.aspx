<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication11._Default" %>

<%@ register Assembly="DevExpress.Web.ASPxGridView.v9.1" Namespace="DevExpress.Web.ASPxGridView"
    TagPrefix="dxwgv" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:aspxgridview ID="ASPxGridView1" runat="server" 
            AutoGenerateColumns="False" DataSourceID="AccessDataSource1" 
            KeyFieldName="ID" 
            oncustomsummarycalculate="ASPxGridView1_CustomSummaryCalculate">
            <totalsummary>
                <dxwgv:aspxsummaryitem FieldName="Income" ShowInColumn="Income" 
                    SummaryType="Sum" />
                <dxwgv:aspxsummaryitem FieldName="Expense" ShowInColumn="Expense" 
                    SummaryType="Sum" />
                <dxwgv:aspxsummaryitem FieldName="Total" ShowInColumn="Total" 
                    SummaryType="Custom" />
            </totalsummary>
            <columns>
                <dxwgv:gridviewdatatextcolumn FieldName="Total" UnboundType="String" 
                    VisibleIndex="4">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="ID" Visible="False" VisibleIndex="0">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="Income" VisibleIndex="1">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatatextcolumn FieldName="Expense" VisibleIndex="2">
                </dxwgv:gridviewdatatextcolumn>
                <dxwgv:gridviewdatadatecolumn FieldName="Date" VisibleIndex="3">
                </dxwgv:gridviewdatadatecolumn>
            </columns>
            <settings ShowFooter="True" />
        </dxwgv:aspxgridview>
        
    </div>
    <asp:accessdatasource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Bookkeeper.mdb" SelectCommand="SELECT * FROM [Table1]">
    </asp:accessdatasource>
    </form>
</body>
</html>
