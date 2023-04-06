<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Web_based_Learning_System.LoginAdmin" EnableEventValidation="false" %>


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
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <!-- IMAGE CONTAINER BEGIN -->
                <div class="col-lg-6 col-md-6 d-none d-md-block enrol-on-image-container-login admin-img-container"></div>

                <!-- FORM CONTAINER BEGIN -->

                <div class="col-lg-6 col-md-6 enrol-on-form-container">

                    <div class="col-lg-9 col-md-12 col-sm-8 col-xs-12 enrol-on-form">
                        <div><br />
                            <a href="home.aspx" class="btn btn-outline-secondary rounded-pill fa fa-arrow-left" tabindex="-1" role="button">
                                 Back to Home</a>
                      
                        </div>

                        <!-- Company Logo -->
                        <div class="text-center mb-3 mt-5">
                            <img src="images/main-logo.svg" width="150px" />
                        </div>
                        <div class="text-center mb-4">
                            <h4>Login in as admin</h4>
                        </div>
                        <!-- Form -->
                        <form class="px-3">
                            <!-- Input Box -->
                            <div class="form-input">
                                <span><i class="fa fa-envelope"></i></span>
                                <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" placeholder="Admin ID"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* _______________ID Required" ForeColor="Red" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>

                                
                            </div>
                            <div class="form-input">
                                <span><i class="fa fa-lock"></i></span>
                                <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* _______________Password Required" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                               
                          
                                </div>
                                       <!-- Login Button -->
                            <div class="mb-3 text-center">
                                <asp:Button class="btn btn-primary btn-block rounded-pill" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

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

