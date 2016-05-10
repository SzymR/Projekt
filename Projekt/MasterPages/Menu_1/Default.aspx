<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MasterPages.Menu_1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Top Filmy</h1>
    <asp:XmlDataSource ID="sourceDVD" runat="server" DataFile="/DvdList.xml" XPath="DvdList/DVD" />
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="/DvdList.xml" XPath="" />

            <asp:GridView ID="GridView1" runat="server" DataSourceID="sourceDVD" AutoGenerateColumns="False" DataKeyNames="ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"     GridLines="None"  
    AllowPaging="true"  
    CssClass="mGrid"  
    PagerStyle-CssClass="pgr"  
    AlternatingRowStyle-CssClass="alt"> 
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <%# XPath("Title") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%# XPath("@Category") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>


            <asp:DetailsView CssClass="mDetails" ID="DetailsView1" runat="server" DataSourceID="XmlDataSource1" Visible="False" DataKeyNames="ID" AutoGenerateRows="False">
                <Fields>
                    <asp:TemplateField HeaderText="Id:">
                        <ItemTemplate>
                            <%# XPath("@ID") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title:">
                        <ItemTemplate>
                            <%# XPath("Title") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category:">
                        <ItemTemplate>
                            <%# XPath("@Category") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price:">
                        <ItemTemplate>
                            <%# XPath("Price") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
</asp:Content>
