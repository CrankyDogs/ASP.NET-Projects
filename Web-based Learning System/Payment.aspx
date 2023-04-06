<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Web_based_Learning_System.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

   
    <div class="second-section scholar-form-sub aos-init aos-animate" data-aos="fade-right">

        <h4 class="text-secondary">Pay with eSewa</h4>
        <hr>
        <div class="form-group row">
            <div class="col-sm-3">
                <label>First Name</label>
                <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
            </div>
            <div class="col-sm-3">
                <label>Last Name</label>
               <asp:TextBox CssClass="form-control" ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
            </div>

            <div class="col-sm-3">
                <label>Mobile Number</label>
                <asp:TextBox CssClass="form-control" ID="txtNumber" runat="server" placeholder="Number"></asp:TextBox>
            </div>

            <div class="col-sm-3">
                <label>Amount</label>
                <asp:TextBox CssClass="form-control" ID="txtAmount" runat="server" placeholder="Amount"></asp:TextBox>
            </div>

            <div class="col-md-4">
                <label>Remark</label>
                <asp:TextBox CssClass="form-control" ID="txtRemark" runat="server" placeholder="Remark"></asp:TextBox>
            </div>

            <div class="col-md-4 mt-3">
                <asp:Button class="btn btn-success mt-3 rounded-pill" ID="btnPay" runat="server" Text="Pay Now" OnClick="btnPay_Click" />
              
            </div>
          

        </div>
    </div> </div>  <a href="home.aspx" class="btn btn-outline-secondary rounded-pill fa fa-arrow-left" tabindex="-1" role="button">Back to Home</a>
</asp:Content>
