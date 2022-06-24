<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FileView.aspx.cs" Inherits="FileOperation.FileView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> 

    <div class="form-group">  
        <asp:Label runat="server" CssClass="col-md-2 control-label"></asp:Label>
            <div cssclass="col-md-10"> <br> 
                <asp:GridView runat="server" ID="DataGridView1" AutoGenerateColumns="False"  
                 OnRowCommand="DataGridView_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" > 
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>  
                        <asp:BoundField HeaderText="File Id" DataField="FileId" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%"    > 
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="File Name" DataField="FileName" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%"  >  
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Size" DataField="Size" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%"  >  
<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Get File" HeaderStyle-Width="10%" ItemStyle-Width="10%" FooterStyle-Width="10%"  >
                             <ItemTemplate>  
                                <asp:LinkButton ID="LbnDownload" runat="server" CommandName="DownloadFile"   
                                    CommandArgument='<%# Eval("FileId") %>'>Download</asp:LinkButton>  
                            </ItemTemplate>  

<FooterStyle Width="10%"></FooterStyle>

<HeaderStyle Width="10%"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                            </asp:TemplateField>
                    </Columns>  
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>  
            </div>  
        </div>   
</asp:Content> 