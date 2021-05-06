<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <div class="col-md-3">
            Book Title:
        </div>
        <div class="col-md-9">            
            <asp:TextBox ID="txtBookTitle" runat="server" CssClass="form-control"></asp:TextBox>            
        </div>

        <div class="col-md-3">
            Price:
        </div>
        <div class="col-md-9">            
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>            
        </div>

        <div class="col-md-3">
            Publish Date:
        </div>
        <div class="col-md-9">            
            <asp:TextBox ID="txtPublishDate" runat="server" CssClass="form-control"></asp:TextBox>            
        </div>

        <div class="col-md-3">
            Author:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlAuthors" runat="server" DataSourceID="dsdAuthors" DataTextField="LastName" DataValueField="AuthorID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdAuthors" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, LastName FROM Authors"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">
            Publisher:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlPublishers" runat="server" DataSourceID="dsdPublishers" DataTextField="PublisherName" DataValueField="PublisherID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdPublishers" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">
            Genre:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlGenres" runat="server" DataSourceID="dsdGenres" DataTextField="GenreName" DataValueField="GenreID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdGenres" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">
            Word Count:
        </div>
        <div class="col-md-9">            
            <asp:TextBox ID="txtWordCount" runat="server" CssClass="form-control"></asp:TextBox>            
        </div>

        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Add Book" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblCheck" runat="server" CssClass="alert alert-success" Text="The book has been added." Visible="False"></asp:Label>
        </div>

    </div>
</asp:Content>
