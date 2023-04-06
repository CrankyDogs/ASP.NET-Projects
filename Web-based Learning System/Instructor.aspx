<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Instructor.aspx.cs" Inherits="Web_based_Learning_System.Instructor" %>

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
    <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>&nbsp;</h4>
                                        <h4>&nbsp;</h4>
                                        <h4>&nbsp;</h4>
                                        <h4>Instructor Details</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="images/instructor.svg" />
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Instructor ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control rounded-pill" ID="txtInstructorId" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary w-25 rounded-pill" ID="btnGO" runat="server" Text="Go" OnClick="btnGO_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Instructor Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="txtInstrutorName" runat="server" placeholder="Instructor Name"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="btnAdd" class="btn btn-lg rounded-pill btn-block btn-success" runat="server" Text="Add" OnClick="btnAdd_Click" />

                            </div>
                            <div class="col-4">
                                <asp:Button ID="btnUpdate" class="btn btn-lg rounded-pill btn-outline-warning btn-block" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="btnDelete" OnClientClick="return confirm('Are you sure you want to delete?')" class="btn btn-lg btn-outline-danger rounded-pill btn-block" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                            </div>
                        </div>
                    </div>
                </div>

                <br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Instructor List</h4>
                                    </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSourceInstructor" runat="server" ConnectionString="<%$ ConnectionStrings:web-based_learning_systemConnectionString %>" SelectCommand="SELECT * FROM [instructor_master_table]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridViewInstructor" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceInstructor">
                                    <Columns>
                                        <asp:BoundField DataField="instructor_id" HeaderText="Instructor ID" SortExpression="instructor_id" />
                                        <asp:BoundField DataField="instructor_name" HeaderText="Instructor Name" SortExpression="instructor_name" />
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
