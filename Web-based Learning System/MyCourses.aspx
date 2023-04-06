<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyCourses.aspx.cs" Inherits="Web_based_Learning_System.MyCourses" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        Enrolled Course
    </h2>
    <asp:GridView class="table table-striped table-bordered" AutoGenerateColumns="False" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="user_Id" HeaderText="user_Id" SortExpression="user_Id" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="course_Id" HeaderText="course_Id" SortExpression="course_Id" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name" ReadOnly="True"></asp:BoundField>
        <asp:BoundField DataField="lecturer_name" HeaderText="lecturer_name" SortExpression="lecturer_name" ReadOnly="True"></asp:BoundField>
            
        </Columns>
    </asp:GridView>
</asp:Content>
