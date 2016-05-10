<%@ Page Title=""  EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MasterPages.Menu_3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <form id="form1" >
        <h2>Wybierz</h2>
              <asp:DropDownList ID="ddlSelectItem" AutoPostBack="true" runat="server"  OnSelectedIndexChanged="ddlSelectItem_SelectedIndexChanged">
                     <asp:ListItem Text="Film" Value="1" Selected="true"></asp:ListItem>
                     <asp:ListItem Text="Aktor" Value="2" ></asp:ListItem>
              </asp:DropDownList>

    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
     

        <asp:View ID="ViewFilm" runat="server">

            <div id="formularzFilm">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Tytuł"></asp:Label>
                    <asp:TextBox ID="inputTytul" runat="server" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputTytul" ErrorMessage="Wprowadź tytuł"></asp:RequiredFieldValidator>
                </div>

                <br />
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Opis"></asp:Label>
                    <asp:TextBox ID="inputOpis" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputOpis" ErrorMessage="Wprowadź Opis"></asp:RequiredFieldValidator>
                </div>
                <br />

                 <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Rezyser"></asp:Label>
                    <asp:TextBox ID="inputRezyser" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inputRezyser" ErrorMessage="Wprowadź Rezysera"></asp:RequiredFieldValidator>
                </div>
                <br />

               
                 <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Aktor"></asp:Label>
                    <asp:TextBox ID="inputAktor" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="inputAktor" ErrorMessage="Wprowadź Aktora"></asp:RequiredFieldValidator>
                </div>
                <br />

                    <div class="form-group">
                    <asp:Label ID="Label8" runat="server" Text="Rok"></asp:Label>
                    <asp:TextBox ID="inputRok" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="inputRok" ErrorMessage="Wprowadź Rok"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Niepoprawny format roku yyyy"  ControlToValidate="inputRok" ValidationExpression="[1-9]{4}" ></asp:RegularExpressionValidator>
                    </div>
                <br />


                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Kategoria"></asp:Label>
                    <asp:DropDownList ID="DropDown_Kategorie" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True" Value="Akcja"> Akcja </asp:ListItem>
                            <asp:ListItem Value="Komediowe"> Komediowe </asp:ListItem>
                            <asp:ListItem Value="Dramat"> Dramat </asp:ListItem>
                      
                  </asp:DropDownList>
                </div>
            </div>
        </asp:View>

        <asp:View ID="ViewActor" runat="server">

            <div id="formularzAktor">
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Imie"></asp:Label>
                    <asp:TextBox ID="inputImie" runat="server" Width="128px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputImie" ErrorMessage="Wprowadź imię"></asp:RequiredFieldValidator>
                </div>

                <br />
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Nazwisko"></asp:Label>
                    <asp:TextBox ID="inputNazwisko" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputNazwisko" ErrorMessage="Wprowadź Nazwisko"></asp:RequiredFieldValidator>
                </div>
                <br />

            </div>
        </asp:View>

        
     
    </asp:MultiView>

     <asp:Button CssClass="btn btn-primary" ID="btnAddFilm" runat="server" OnClick="btnAddFilm_Click" Text="Zapisz" />

     </form>
</asp:Content>