<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthors.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add A New Author</h3>
    <div class="row">
        <div class="col-md-3">
            Last Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            First Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Gender:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtGender" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Date of Birth:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBirthDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text="Add Author" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblCheck" runat="server" CssClass="alert alert-success" Text="The author has been added to the table." Visible="False"></asp:Label>
        </div>

    </div>
</asp:Content>
