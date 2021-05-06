<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyBooks.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.MyBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Build a table to list your book collection -->
    <!-- What server control should you use? -->

    <h3>Book Collection</h3>
    <div class="row">
        <div class="col-md-12">
            <asp:Panel ID="pnlBookCollection" runat="server" CssClass="row">
                <asp:Table ID="tblBookCollection" runat="server" CssClass="table table-striped">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>Book Title</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Author's Last Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Publish Date</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Publisher's Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Genre</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
