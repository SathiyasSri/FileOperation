<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FileOperation.Index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br>
    <div class="form-group" >
    <asp:Button ID="btnConfirm" runat="server" Text="Upload"
PostBackUrl="~/FileUpload.aspx" CssClass="btn btn-default"  />
    <br><br>
        <asp:Button ID="Button1" runat="server" Text="View/Download"
PostBackUrl="~/FileView.aspx" CssClass="btn btn-default"  />
    </div>
    </asp:Content>
