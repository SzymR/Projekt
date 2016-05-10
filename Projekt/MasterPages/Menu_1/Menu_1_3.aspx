<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu_1_3.aspx.cs" Inherits="MasterPages.Menu_1.Menu_1_3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Top Filmy Dramat</h1>
    <asp:XmlDataSource ID="sourceDVD" runat="server" DataFile="/FilmList.xml" XPath="FilmList/Film[@Kategoria='Dramat']" />
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="/FilmList.xml" XPath="" />

            <asp:GridView ID="GridView1" runat="server" DataSourceID="sourceDVD" AutoGenerateColumns="False" DataKeyNames="ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"     GridLines="None"  
    AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"> 
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="Tytuł">
                        <ItemTemplate>
                            <%# XPath("Tytul") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kategoria">
                        <ItemTemplate>
                            <%# XPath("@Kategoria") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>


            <asp:DetailsView CssClass="mDetails" ID="DetailsView1" runat="server" DataSourceID="XmlDataSource1" Visible="False" DataKeyNames="ID" AutoGenerateRows="False">
                <Fields>                    
                    <asp:TemplateField HeaderText="Tytuł:">
                        <ItemTemplate>
                            <%# XPath("Tytul") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kategoria:">
                        <ItemTemplate>
                            <%# XPath("@Kategoria") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rok produkcji:">
                        <ItemTemplate>
                            <%# XPath("Rok") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Aktorzy:">
                        <ItemTemplate>
                            <asp:DataList ID="DataList1" runat="server" DataSource='<%# XPathSelect("Aktorzy/Aktor") %>'>
<ItemTemplate>
<%# XPath(".") %> <br/>
</ItemTemplate>
</asp:DataList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
</asp:Content>
