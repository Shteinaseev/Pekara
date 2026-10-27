<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prikaz.aspx.cs" Inherits="Pekara._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="806px">
            <Columns>
                <asp:BoundField DataField="sifraPeciva" HeaderText="Šifra peciva" />
                <asp:BoundField DataField="nazivPekare" HeaderText="Naziv Pekare" />
                <asp:BoundField DataField="nazivPeciva" HeaderText="Naziv peciva" />
                <asp:BoundField DataField="vrstaPeciva" HeaderText="Vrsta peciva" />
                <asp:BoundField DataField="tipBrašna" HeaderText="Tip brašna" />
                <asp:BoundField DataField="cena" HeaderText="Cena" />
                <asp:ButtonField Text="Obrisi" />
            </Columns>

        </asp:GridView>
        <asp:Button ID="add" runat="server" Text="Dodai novo pecivo" />

    </main>

</asp:Content>
