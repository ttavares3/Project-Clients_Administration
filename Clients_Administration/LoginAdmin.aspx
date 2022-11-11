<%@ Page Title="" Language="C#" MasterPageFile="~/MPInicial.master" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="LoginAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style5 {
            width: 55%;
            height: 125px;
        }
        .auto-style6 {
            width: 108px;
        }
    .auto-style7 {
        width: 108px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <table align="center" class="auto-style5">
        <tr>
            <td class="auto-style6"><strong>Utilizador:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Preenchimento Obrigatório!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Palavra-Passe:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Preenchimento Obrigatório!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Entrar" />
            </td>
            <td>
                <input id="Reset1" type="reset" value="Limpar" /></td>
        </tr>
    </table>
</p>
<p>
    &nbsp;</p>
</asp:Content>

