<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="SQL_Oppgave.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> Fornavn<br/>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> Etternavn<br/>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> Adresse<br/>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> Poststed<br/>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> Postnummer<br/>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox> Alder<br/>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox> Inntekt<br/>
        </div>
        <p>
            <asp:Button ID="Update" runat="server"  CausesValidation="false" OnClick="Update1" Text="Update"/>
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
            PageSize="10" Visible="False">
            <Columns>
                
                <asp:BoundField ItemStyle-Width="100px" DataField="Id" HeaderText="ID" />
                <asp:BoundField ItemStyle-Width="100px" DataField="Fornavn" HeaderText="Fornavn" />
                <asp:BoundField ItemStyle-Width="100px" DataField="Etternavn" HeaderText="Etternavn" />
                <asp:BoundField ItemStyle-Width="100px" DataField="Adresse" HeaderText="Adresse" />
                <asp:BoundField ItemStyle-Width="100px" DataField="PostSted" HeaderText="Poststed" />
                <asp:BoundField ItemStyle-Width="100px" DataField="PostNummer" HeaderText="Postnummer" />
                <asp:BoundField ItemStyle-Width="100px" DataField="Alder" HeaderText="Alder" />
                <asp:BoundField ItemStyle-Width="100px" DataField="Inntekt" HeaderText="Inntekt" />
                <asp:TemplateField ShowHeader="False">
                </asp:TemplateField>
            </Columns>
            </asp:GridView>
    </form>
    
</body>
</html>
