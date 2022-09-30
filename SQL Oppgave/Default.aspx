<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SQL_Oppgave.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nicolai SQLOppgave</title>
    <meta charset="UTF-8">
</head>
<body>
    <form id="form1" runat="server">
        <div>
      </div>
        <asp:TextBox ID="TextBoxS" runat="server"></asp:TextBox>
        <asp:Button ID="Search1" runat="server" Text="Search" OnClick="Search" /> 
        <br/>
        <br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" Width="967px" OnPageIndexChanging="GridView1_SelectedIndexChanged" style="margin-right: 27px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                
                <asp:BoundField ItemStyle-Width="100px" DataField="Id" HeaderText="ID" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="100px" DataField="Fornavn" HeaderText="Fornavn" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="100px" DataField="Etternavn" HeaderText="Etternavn" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="100px" DataField="Adresse" HeaderText="Adresse" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="100px" DataField="PostSted" HeaderText="Poststed" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="100px" DataField="PostNummer" HeaderText="Postnummer" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="100px" DataField="Alder" HeaderText="Alder" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="100px" DataField="Inntekt" HeaderText="Inntekt" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server"  CausesValidation="false" OnClick="Edit" CommandArgument='<%# Eval("Id") %>'
                            Text="Edit"/>
                        <asp:Button ID="Delete" runat="server"  CausesValidation="false" OnClick="Delete1" CommandArgument='<%# Eval("Id") %>'
                            Text="Delete"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView> <br />
        <asp:Button ID="Add" runat="server"  CausesValidation="false" OnClick="Add1"
                            Text="Add"/>
    </form>
</body>
</html>
