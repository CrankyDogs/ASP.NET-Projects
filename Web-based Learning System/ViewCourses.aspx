<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewCourses.aspx.cs" Inherits="Web_based_Learning_System.ViewCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">

            <div class="col-sm-12">
                <center>
                        <h3>
                        Course List</h3>
                    </center>
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </asp:Panel>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">

                                <asp:SqlDataSource ID="SqlDataSourceCourse" runat="server" ConnectionString="<%$ ConnectionStrings:web-based_learning_systemConnectionString %>" SelectCommand="SELECT * FROM [course_master_table]"></asp:SqlDataSource>

                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridViewCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="course_id" DataSourceID="SqlDataSourceCourse">
                                        <Columns>
                                            <asp:BoundField DataField="course_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id">
                                                <ControlStyle Font-Bold="True" />
                                                <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="container-fluid">
                                                        <div class="row">

                                                            <div class="col-lg-4">
                                                                <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("course_img_link") %>' />
                                                            </div>

                                                            <div class="col-lg-8">
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("course_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <span>Instructor - </span>
                                                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("instructor") %>'></asp:Label>
                                                                        &nbsp;|
                                                                            <span>Language -<span>&nbsp;</span>
                                                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                            </span>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        &nbsp;| Lectures -
                                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("lectures") %>'></asp:Label>
                                                                        &nbsp;| Upload Date -
                                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("upload_date") %>'></asp:Label>
                                                                      </div>
                                                                </div>
                                                                <div class="row">
                                                                    
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">         &nbsp; &nbsp;
                                                                            Description -
                                                                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("course_details") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <br />
                                                                 
                                                                </div>
                                                               <div class="row">
                                                                        <div class="col-4">
                                                                            <asp:Button ID="btnAdminUpdate" visible="False" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" />
                                                                        </div>
                                                                        <div class="col-4">
                                                                            <asp:Button ID="btnAdminDelete"  visible="false" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                                                                        </div>
                                                                    </div>
                                                            </div>
                                                        </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:Button ID="Button1" runat="server" Text="Enroll Now" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
