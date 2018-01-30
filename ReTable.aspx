<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReTable.aspx.vb" Inherits="Recharge_Payment.ReTable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recharge History</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            background-color: #66CCFF;
            table-layout: fixed;
        }
    </style>
</head>
<h1 class="style1">Recharge History Table</h1>
<body alink="#003300">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" DataKeyNames="phone_number"
            EmptyDataText="There are no data on the table to display." 
            ForeColor="#333333" AllowSorting="True">
            <AlternatingRowStyle BackColor="White"/>
            <Columns> 
                <asp:TemplateField HeaderText="Phone Number" InsertVisible="True"
                    SortExpression="phone_number">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("phone_number") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("phone_number") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount" SortExpression="amount">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("amount") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Remaining balance" 
                    SortExpression="remaining_balance">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("remaining_balance") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("remaining_balance") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:rechargehistoryConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:rechargehistoryConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM [rechargehistory]"
             DeleteCommand="DELETE FROM [rechargehistory] WHERE [phone_number] = @phone_number"
            >
               <DeleteParameters>
               <asp:Parameter Name="phone_number" Type= "Int64" />
            </DeleteParameters>
            </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
