<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MasterPages.Menu_3.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div id="formularz">

            <asp:Label ID="Label1" runat="server" Text="Tytuł"></asp:Label>
            <asp:TextBox ID="inputTytul" runat="server"  Width="128px"></asp:TextBox>

            <br />
            <asp:Label ID="Label2" runat="server" Text="Opis"></asp:Label>
            <asp:TextBox ID="inputOpis" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Data Premiery"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputTytul"  ErrorMessage="Wprowadź tytuł"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputOpis"  ErrorMessage="Wprowadź Opis"></asp:RequiredFieldValidator>

            <asp:Button CssClass="btn btn-primary" ID="btnAddFilm" runat="server" OnClick="btnAddFilm_Click" Text="Zapisz" />

        </div>
</asp:Content>
