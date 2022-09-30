<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="SQL_Oppgave.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>ID<br/>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>Fornavn<br/>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>Etternavn<br/>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>Adresse<br/>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>Postnummer<br/>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>Poststed<br/>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>Alder<br/>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>Inntekt<br/>
        </div> <br/>
        <asp:Button ID="Add2" runat="server"  CausesValidation="false" OnClick="Add1"
                            Text="Add"/>
    </form>
</body>
</html>
