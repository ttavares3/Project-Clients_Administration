<%@ Page Title="" Language="C#" MasterPageFile="~/MPInicial.master" AutoEventWireup="true" CodeFile="RegistarUser.aspx.cs" Inherits="RegistarUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style5 {
            width: 88%;
            height: 245px;
        }
        .auto-style6 {
            width: 174px;
        }
    .auto-style7 {
        width: 174px;
        height: 51px;
    }
    .auto-style8 {
        height: 51px;
    }
    .auto-style9 {
        width: 174px;
        text-align: left;
    }
    .auto-style10 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
    <br />
    <table align="center" class="auto-style5">
        <tr>
            <td class="auto-style6"><strong>Utilizador:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Preenchimento Obrigatório!" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Email:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Preenchimento Obrigatório! " ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Palavra-Passe:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Preenchimento Obrigatório! " ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Não é uma Palavra-Passe válida!" ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Registar Palavra-Passe:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Preenchimento Obrigatório! " ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="As passes introduzidas são diferentes!" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Button ID="Button1" runat="server" Height="24px" Text="Submeter" Width="77px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;<input id="Reset1" type="reset" value="Limpar" />&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
    </table>
</p>
<p>
    &nbsp;</p>
</asp:Content>

