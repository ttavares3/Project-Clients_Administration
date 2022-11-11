<%@ Page Title="" Language="C#" MasterPageFile="~/MPInicial.master" AutoEventWireup="true" CodeFile="ListaClientes.aspx.cs" Inherits="ListaClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 68%;
            height: 120px;
        }
        .auto-style5 {
            width: 160px;
        }
        .auto-style6 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <br />
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style5"><strong>Nome:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Morada:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="218px"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Inserir" />
                </td>
                <td>
                    <input id="Reset1" type="reset" value="Limpar" /></td>
            </tr>
        </table>
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style6">
        <strong><em>Listagem de Clientes</em></strong></p>
    <p class="auto-style6">
        <strong>
        <asp:LinkButton ID="LinkButton6" runat="server" CssClass="auto-style1" OnClick="LinkButton6_Click">Ver</asp:LinkButton>
&nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" CssClass="auto-style1" OnClick="LinkButton7_Click">Fechar</asp:LinkButton>
        </strong>
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="Id" DataSourceID="VerClientes" Height="23px" HorizontalAlign="Center" Width="837px">
            <Columns>
                <asp:CommandField CancelText="Cancelar" DeleteText="Eliminar" EditText="Editar" SelectText="Selecionar" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Actualizar" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Morada" HeaderText="Morada" SortExpression="Morada" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="VerClientes" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" DeleteCommand="DELETE FROM [Clientes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Clientes] ([Nome], [Morada]) VALUES (@Nome, @Morada)" SelectCommand="SELECT * FROM [Clientes]" UpdateCommand="UPDATE [Clientes] SET [Nome] = @Nome, [Morada] = @Morada WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Morada" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Morada" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style2">
        &nbsp;</p>
    <div class="auto-style2">
    </div>
    <p class="auto-style2">
        &nbsp;</p>
</asp:Content>

