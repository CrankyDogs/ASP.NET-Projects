<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewPayment.aspx.cs" Inherits="Web_based_Learning_System.ViewMessages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <Center><h2 class="text-info">Payments</h2>     </Center>                   
    <div class="container">
                                <div class="dalign-items-center"> 
                            <asp:SqlDataSource ID="SqlDataSourcePayment" runat="server" ConnectionString="<%$ ConnectionStrings:web-based_learning_systemConnectionString %>" SelectCommand="SELECT * FROM [payment_master_table]"></asp:SqlDataSource>
                           
                                <asp:GridView class="table table-striped table-bordered" ID="GridViewPayment" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcePayment" DataKeyNames="phone" >
                                    <Columns>
                                        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                                        <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                                        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" ReadOnly="True" />
                                        <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                                      
                                        <asp:BoundField DataField="remark" HeaderText="Remark" SortExpression="remark" />
                                      
                                    </Columns>
                                </asp:GridView> 
                                     <a href="AdminDashboard.aspx" class="btn btn-outline-secondary rounded-pill fa fa-arrow-left" tabindex="-1" role="button">Back to AdminDashboard</a>
                        </div>
</asp:Content>
