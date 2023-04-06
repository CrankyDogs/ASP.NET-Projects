<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewMessages.aspx.cs" Inherits="Web_based_Learning_System.ViewMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container-fluid my-5">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Message Details</h4>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <img width="200px" src="images/feedback.svg" />
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control rounded-pill" ID="txtUserId" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:LinkButton class="btn rounded-pill btn-primary w-25" ID="btnGo" runat="server" OnClick="btnGo_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="txtFullName" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            

                        </div>
                        <div class="row">
                            <div class="col-5 mx-auto">
                                <asp:Button ID="btnDelete" OnClientClick="return confirm('Are you sure you want to delete?')" class="btn rounded-pill btn-lg btn-block btn-outline-danger" runat="server" Text="Delete Feedback" OnClick="btnDelete_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Message List</h4>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <asp:SqlDataSource ID="SqlDataSourceMessage" runat="server" ConnectionString="<%$ ConnectionStrings:web-based_learning_systemConnectionString %>" SelectCommand="SELECT * FROM [messsage_master_table]"></asp:SqlDataSource>

                        <asp:GridView class="table table-striped table-bordered" ID="GridViewMessage" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceMessage" DataKeyNames="ID">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                                <asp:BoundField DataField="phone" HeaderText="Contact" SortExpression="phone" />

                            </Columns>
                        </asp:GridView>





                        
                    </div>



                </div>
            </div>
        </div>
    </div>



</asp:Content>
