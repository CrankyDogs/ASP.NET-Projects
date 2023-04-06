<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CourseManagement.aspx.cs" Inherits="Web_based_Learning_System.CourseManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
                        <div class="col-md-5">

                <div class="card">
                    <div class="card-body bg-light" style="box-shadow:0 2px 8px rgba(0,0,0,0.35)">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Course Details</h4>
                        </center>
                            </div>
                        </div>
                 <%--       <div class="row">
                            <div class="col">
                                <center>
                           <img id="imgview" Height="150px" Width="100px" src="course_details/logo.svg" />
                        </center>
                            </div>
                        </div>--%>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Course ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control rounded-pill" ID="txtCourseId" runat="server" placeholder="Course ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary w-25 rounded-pill" ID="btnGo" runat="server" OnClick="btnGo_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Course Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="txtCourseName" runat="server" placeholder="Course Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control rounded-pill" ID="ddlLanguage" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Nepali" Value="Nepali" />
                                        <asp:ListItem Text="Spanish" Value="Spanish" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="German" Value="German" />
                                    </asp:DropDownList>
                                </div>
                                
                            </div>
                            <div class="col-md-4">
                                <label>Instructor Name</label>
                                <div class="form-group  rounded-pill">
                                    <asp:DropDownList CssClass="rounded-pill" ID="DropDownList1" runat="server"></asp:DropDownList>
                                </div>

                                <label>Lectures</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="txtLectures" runat="server" placeholder="Lectures" TextMode="Number"></asp:TextBox>
                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>Category</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="lstCategory" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Machine Learning" Value="Machine Learning" Selected="True" />
                                        <asp:ListItem Text="Cloud Computing" Value="Cloud Computing" Selected="True" />
                                        <asp:ListItem Text="Web Development" Value="Web Development" Selected="True" />
                                        <asp:ListItem Text="Software Architecture" Value="Software Architecture" Selected="True" />
                                        <asp:ListItem Text="Application Devlopment" Value="Application Devlopment" Selected="True" />
                                        <asp:ListItem Text="Graphical" Value="Graphical" />
                                        <asp:ListItem Text="Analysis" Value="Analysis" />
                                        
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-md-4">
                                <label>Upload Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="txtUploadDate" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Courses Duration</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="txtDuration" runat="server" placeholder="Minutes" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <label>Course Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="txtCourseDescription" runat="server" placeholder="Course Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this);" class="form-control rounded-pill" ID="fileUploadCourse" runat="server" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="btnAdd" class="btn btn-lg btn-block btn-primary rounded-pill" runat="server" Text="Add" OnClick="btnAdd_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="btnUpdate" class="btn btn-lg btn-block rounded-pill btn-outline-success" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="btnDelete" OnClientClick="return confirm('Are yo usure you want to delete?')" class="btn btn-outline-danger btn-block btn-lg rounded-pill" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <br />
                    <a href="AdminDashboard.aspx" class="btn btn-outline-warning rounded-pill fa fa-arrow-left" tabindex="-1" role="button">Back to Admin Dashboard</a>

                </div>
                <br>
            </div>
            <div class="col md-5">
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
                                                                                &nbsp;| <span><span>&nbsp;</span>Category - </span>
                                                                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("category") %>'></asp:Label>
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
                                                                            <div class="col-12">
                                                                                Description -
                                                                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("course_details") %>'></asp:Label>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                </div>
        </div>
    </div>
</asp:Content>
