<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="Web_based_Learning_System.LoginUser" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="bootstrap/css/style.css" rel="stylesheet" />

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <link rel="stylesheet" href="css/UserLogin.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <!-- IMAGE CONTAINER BEGIN -->
                <div class="col-lg-6 col-md-6 d-none d-md-block enrol-on-image-container-login"></div>

                <!-- FORM CONTAINER BEGIN -->

                <div class="col-lg-6 col-md-6 enrol-on-form-container">

                    <div class="col-lg-9 col-md-12 col-sm-8 col-xs-12 enrol-on-form">
                        <div><br />
                            <a href="home.aspx" class="btn btn-outline-secondary rounded-pill fa fa-arrow-left" tabindex="-1" role="button">
                                 Back to Home</a>
                      
                        </div>
    
                            

                        <!-- Company Logo -->
                        <div class="text-center mb-3 mt-5">
                            <img src="images/main-logo.svg" width="150px">
                        </div>
                        <div class="text-center mb-4">
                            <h4>Login in as user</h4>
                        </div>
                        <!-- Form -->
                        <form class="px-3">
                            <!-- Input Box -->
                            <div class="form-input">
                                <div>

                                </div>
                                <asp:TextBox CssClass="form-control form-control-lg" ID="txtEmail" runat="server" placeholder="Email ID"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* _______________Email Required" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                          
						     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                                </div>
                            <div class="form-input">
                                <span><i class="fa fa-lock"></i></span>
                                <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* _______________Password Required" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

                          
                                </div>
                            <div class="row mb-3">
                                <!--Remember Checkbox -->
                                <div class="col-auto d-flex align-items-center">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="cb1"></input>
                                        <label class="custom-control-label" for="cb1">Remember me</label>
                                    </div>
                                </div>
                            </div>
                            <!-- Login Button -->
                            <div class="mb-3 text-center">
                                <asp:Button class="btn btn-primary btn-block rounded-pill" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                            </div>
                       
                            <div class="text-center mt-5" style="color: #777;">
                                Don't have an account? 
							<a class="register-link" href="RegisterUser.aspx">Register here</a>
                            </div>
                        </form>
                    </div>
                    <!-- FORM END -->
                </div>
                <!-- FORM CONTAINER END -->
            </div>
        </div>
    </form>
</body>
</html>
