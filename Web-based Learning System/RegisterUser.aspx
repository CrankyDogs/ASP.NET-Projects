<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="Web_based_Learning_System.RegisterUser" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Register</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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
                <div class="col-lg-6 col-md-6 d-none d-md-block enrol-on-image-container-register"></div>

                <!-- FORM CONTAINER BEGIN -->

                <div class="col-lg-6 col-md-6 enrol-on-form-container">

                    <div class="col-lg-9 col-md-12 col-sm-8 col-xs-12 enrol-on-form">
                        <div><br />
                            <a href="home.aspx" class="btn btn-outline-secondary rounded-pill fa fa-arrow-left" tabindex="-1" role="button">
                                 Back to Home</a>
                      
                        </div>
                        
                            <div class="text-right mb-5" style="color: #777;">
                                Already have an account? 
							<a class="register-link" href="LoginUser.aspx">Login here</a>
                            </div>
					<!-- Company Logo -->
					<div class="text-center mb-3 mt-5">
						<img src="images/main-logo.svg" width="150px"/>
					</div>
					<div class="text-center mb-4">
				    <h4>Create an account</h4>
				  </div>
					<!-- Form -->
					<form class="px-3">
						<!-- Input Box -->
						<div class="form-input">
							<span><i class="fa fa-user"></i></span>
							<asp:TextBox CssClass="form-control" ID="txtFullName" runat="server" placeholder="Full Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* _______________Name Required" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
						
                        </div>
						<div class="form-input">
							<span><i class="fa fa-envelope"></i></span>
							 <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* _______________Email Required" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

						     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                        </div>
						<div class="form-input">
							<span><i class="fa fa-lock"></i></span>
							 <asp:TextBox class="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* _______________Password Required" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
						    
                        </div>

                        <div class="form-input">
							<span><i class="fa fa-lock"></i></span>
							 <asp:TextBox class="form-control" ID="txtConfirmPassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage=" *_______________Password Donot Match" ForeColor="Red" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>
						</div>
						<!-- Register Button -->
				    <div class="mb-3 text-center"> 
                        <asp:Button class="btn btn-primary btn-lg rounded-pill" ID="btn_SignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" Width="130px" />
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
