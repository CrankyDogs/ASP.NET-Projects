<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="Web_based_Learning_System.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

           <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Registered Users</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img class="w-50 h-50" src="images/usermanagement.svg" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Email ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control rounded-pill" ID="txtUserId" runat="server" placeholder="Email ID"></asp:TextBox>
                              <asp:LinkButton class="btn w-25 btn-primary rounded-pill" ID="btnGo" runat="server" OnClick="btnGo_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control rounded-pill" ID="txtFullName" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control rounded-pill" ID="txtEmail" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>

                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <asp:Button ID="btnDelete" OnClientClick="return confirm('Are you sure you want to delete?')" class="btn btn-outline-danger btn-block btn-lg rounded-pill" runat="server" Text="Delete User Permanently" OnClick="btnDelete_Click" />
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
                           <h4>Member List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>







                   <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConnectionString="<%$ ConnectionStrings:web-based_learning_systemConnectionString %>" SelectCommand="SELECT * FROM [user_master_table]"></asp:SqlDataSource>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridViewUser" runat="server" AutoGenerateColumns="False" DataKeyNames="email_id" DataSourceID="SqlDataSourceUser">
                            <Columns>
                                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                <asp:BoundField DataField="email_id" HeaderText="email_id" ReadOnly="True" SortExpression="email_id" />
                          
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            </Columns>
                         </asp:GridView>





                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
 

