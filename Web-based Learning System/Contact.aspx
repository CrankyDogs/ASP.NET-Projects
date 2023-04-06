<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Web_based_Learning_System.Contact" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
.container2{
  width: 85%;
  background: #fff;
  border-radius: 6px;
  padding: 20px 60px 30px 40px;
  
}
.container2 .content{
  display: flex;
  align-items: center;
  justify-content: center;
}
.container2 .content .left-side{
  width: 25%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  margin-top: 15px;
  position: relative;
}
.content .left-side::before{
  content: '';
  position: absolute;
  height: 70%;
  width: 2px;
  right: -15px;
  top: 50%;
  transform: translateY(-50%);
  background: #afafb6;
}
.content .left-side .details{
  margin: 14px;
  text-align: center;
}
.content .left-side .details i{
  font-size: 30px;
  color: #17A2B8;
  margin-bottom: 10px;
}
.content .left-side .details .topic{
  font-size: 18px;
  font-weight: 500;
}
.content .left-side .details .text-one,
.content .left-side .details .text-two{
  font-size: 14px;
  color: #afafb6;
}
.container2 .content .right-side{
  width: 75%;
  margin-left: 75px;
}
.content .right-side .topic-text{
  font-family:"Ubuntu",sans-serif;
  font-size: 24px;
  font-weight: 700;
  color: #7ad514;
}
.right-side .input-box{
  height: 50px;
  width: 100%;
  margin: 12px 0;
}
.right-side .input-box input,
.right-side .input-box textarea{
  height: 100%;
  width: 100%;
  border: none;
  outline: none;
  font-size: 16px;
  background: #F0F1f8;
  border-radius: 6px;
  padding: 0 15px;
  resize: none;
}
.right-side .message-box{
  min-height: 110px;
}
.right-side .input-box textarea{
  padding-top: 6px;
}
.right-side .button{
  display: inline-block;
  margin-top: 12px;
}
.right-side .button input[type="button"]{
  color: #fff;
  font-size: 18px;
  outline: none;
  border: none;
  padding: 8px 16px;
  border-radius: 6px;
  background: #17A2B8;
  cursor: pointer;
  transition: all 0.3s ease;
}
.button input[type="button"]:hover{
  background: #5029bc;
}

@media (max-width: 950px) {
  .container2{
    width: 90%;
    padding: 30px 40px 40px 35px ;
  }
  .container2 .content .right-side{
   width: 75%;

}
}
@media (max-width: 820px) {
  .container2{
    margin: 40px 0;
    height: 100%;
  }
  .container2 .content{
    flex-direction: column-reverse;
  }
 .container2 .content .left-side{
   width: 100%;
   flex-direction: row;
   margin-top: 40px;
   justify-content: center;
   flex-wrap: wrap;
 }
 .container2 .content .left-side::before{
   display: none;
 }
 .container2 .content .right-side{
   width: 100%;
   margin-left: 0;
 }
}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="container2 py-5">
    <div class="content">
      <div class="right-side">
        <div class="topic-text">Give us a feedback</div>
        <p>Feel free to write us.</p>
      <form action="#">
        <div class="input-box">
                <asp:TextBox CssClass="form-control" ID="txtName" runat="server" placeholder="Name"></asp:TextBox>

        </div>
        <div class="input-box">
           <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
        </div>   
          <div class="input-box">
           <asp:TextBox CssClass="form-control" ID="txtPhone" runat="server" placeholder="Phone"></asp:TextBox>
        </div>
        <div class="input-box message-box">
           <asp:TextBox CssClass="form-control" ID="txtMessage" runat="server" placeholder="Message"></asp:TextBox>
        </div>
        <div class="button">
         <asp:Button class="btn-lg btn-primary btn-block" ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
        </div>
      </form>
    </div>
    </div>
  </div>


</asp:Content>
