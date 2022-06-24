<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="FileOperation.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/jquery-1.10.2.js"></script>  
    <script type="text/javascript">  
        $(function () {  
            debugger;  
            var DivElement = $('#MultipleFileUploader');  
            var i = $('#MultipleFileUploader p').size() + 1;  
            $('#AddAnotherUploader').on('click', function () {  
                $('<p><input type="file" ID="FileUploader1' + i + '" name="FileUploader1' + i + '" class="form-control" /> </p>').appendTo(DivElement);  
                i++;  
                return false;  
            });  
        });  
    </script>  
    <div class="form-horizontal">  
        <h4>Uploading Files Here!</h4>  
        <hr/>  
        <asp:ValidationSummary runat="server" CssClass="text-danger" />  
        <div class="form-group">  
            <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Bold="true">Choose File: </asp:Label>  
            <div class="col-md-10" id="MultipleFileUploader">
                    <asp:FileUpload runat="server" ID="FileUploader"/>
            </div>  
            </div>
        <div class="form-group">  
            <div class="col-md-offset-2 col-md-10">  
                <asp:Button runat="server" ID="BtnUploadFile" OnClick="BtnUploadFile_Click"   
                Text="Upload Files" CssClass="btn btn-default" />  
            </div>  
        </div>
        </div>
</asp:Content>
