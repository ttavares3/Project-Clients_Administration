<%@ Page Title="" Language="C#" MasterPageFile="~/MPInicial.master" AutoEventWireup="true" CodeFile="VerUtilizadores.aspx.cs" Inherits="VerUtilizadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <br />
        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton1_Click">Voltar à página do Gestor</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceVerUtilizadores" GridLines="Horizontal" HorizontalAlign="Center" Width="593px">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" OnClientClick="return confirm('Tem a certeza que uqer Actualizar?');" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Edit" OnClientClick="return confirm('Tem a certeza que quer Editar?'); " Text="Editar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False" CommandName="Select" Text="Selecionar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('Tem a certeza que quer Eliminar?'); " Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:TemplateField HeaderText="User" SortExpression="User">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("User") %>'></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("User") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox3" ErrorMessage="Campo Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Não é uma Palavra-Passe válida!" ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Active" SortExpression="Active">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("Active") %>'>
                            <asp:ListItem>S</asp:ListItem>
                            <asp:ListItem>N</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Active") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Admin" SortExpression="Admin">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Bind("Admin") %>'>
                            <asp:ListItem>S</asp:ListItem>
                            <asp:ListItem>N</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Admin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceVerUtilizadores" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([User], [Email], [Password], [Active], [Admin]) VALUES (@User, @Email, @Password, @Active, @Admin)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [User] = @User, [Email] = @Email, [Password] = @Password, [Active] = @Active, [Admin] = @Admin WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="User" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Active" Type="String" />
                <asp:Parameter Name="Admin" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="User" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Active" Type="String" />
                <asp:Parameter Name="Admin" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceUtilizadores" GridLines="Horizontal" Height="171px" HorizontalAlign="Center" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" Width="507px">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                User:
                <asp:TextBox ID="UserTextBox" runat="server" Text='<%# Bind("User") %>' />
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" ErrorMessage="Campo Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Campo Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Campo Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Não é uma Palavra-Passe válida!" ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
                <br />
                Active: &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Active") %>'>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>N</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Campo Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<br />Admin: &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("Admin") %>'>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>N</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Campo Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<br />&nbsp;<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" OnClientClick="return confirm('Tem a certeza que quer Actualizar?');" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                User:
                <asp:TextBox ID="UserTextBox0" runat="server" Text='<%# Bind("User") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox0" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox0" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Active:
                <asp:TextBox ID="ActiveTextBox" runat="server" Text='<%# Bind("Active") %>' />
                <br />
                Admin:
                <asp:TextBox ID="AdminTextBox" runat="server" Text='<%# Bind("Admin") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserir" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                User:
                <asp:Label ID="UserLabel" runat="server" Text='<%# Bind("User") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Active:
                <asp:Label ID="ActiveLabel" runat="server" Text='<%# Bind("Active") %>' />
                <br />
                Admin:
                <asp:Label ID="AdminLabel" runat="server" Text='<%# Bind("Admin") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" OnClientClick="return confirm('Tem a certeza que quer Editar?');" Text="Editar" />
                &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('Tem a certeza que quer Eliminar?');" Text="Eliminar" />
                &nbsp;&nbsp;
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Novo" />
            </ItemTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSourceUtilizadores" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([User], [Email], [Password], [Active], [Admin]) VALUES (@User, @Email, @Password, @Active, @Admin)" SelectCommand="SELECT * FROM [Users] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Users] SET [User] = @User, [Email] = @Email, [Password] = @Password, [Active] = @Active, [Admin] = @Admin WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="User" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Active" Type="String" />
                <asp:Parameter Name="Admin" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="User" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Active" Type="String" />
                <asp:Parameter Name="Admin" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

