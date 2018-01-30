<%@ Page Title="About Us" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="About.aspx.vb" Inherits="Recharge_Payment.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        About
    </h2>
    <p style="background-color: #CCFF99">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            Height="50px" Width="195px" DefaultMode="Insert"
            Font-Bold="True" Font-Names="Calibri" GridLines="None" 
            style="background-color: #FFCC66" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            
            <Fields>
                <asp:BoundField DataField="phone_number" HeaderText="Phone Number" 
                    SortExpression="phone_number" />
                <asp:BoundField DataField="amount" HeaderText="Amount" 
                    SortExpression="amount" />
                <asp:BoundField DataField="remaining_balance" HeaderText="Remaining Balance" 
                    SortExpression="remaining_balance" />
                <asp:CommandField ShowInsertButton="True"/>
            </Fields>

            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <InsertRowStyle BackColor="#009900" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:rechargehistoryConnectionString1 %>" 
           ProviderName="<%$ ConnectionStrings:rechargehistoryConnectionString1.ProviderName %>"
          
            SelectCommand="SELECT * FROM [rechargehistory]"
            InsertCommand="INSERT INTO [rechargehistory] ([phone_number], [amount], [remaining_balance]) VALUES (@phone_number, @amount, @remaining_balance)" 
            UpdateCommand="UPDATE [rechargehistory] SET [phone_number] = @phone_number, [amount] = @amount, [remaining_balance] = @remaining_balance"
           
            >
            
            <InsertParameters>
                <asp:Parameter Name="phone_number" Type="Int64" />
                <asp:Parameter Name="amount" Type="String" />
                <asp:Parameter Name="remaining_balance" Type="String" />
                
            </InsertParameters>
            
            <UpdateParameters>
                <asp:Parameter Name="phone_number" Type="Int64" />
                <asp:Parameter Name="amount" Type="String" />
                <asp:Parameter Name="remaining_balance" Type="String" />
                
            </UpdateParameters>
      
            </asp:SqlDataSource>
    </p>
</asp:Content>
