<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="AAA.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: 18px; font-weight: bold;">
    Choose Search Criteria:</p>
<asp:Panel ID="Panel1" runat="server">
    <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="Medium" 
        GroupName="1" Text="Name" AutoPostBack="True" 
        oncheckedchanged="RadioButton1_CheckedChanged" />
    &nbsp;
    <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Medium" 
        GroupName="1" Text="Graduation Year" AutoPostBack="True" 
        oncheckedchanged="RadioButton2_CheckedChanged" />
    &nbsp;
    <asp:RadioButton ID="RadioButton3" runat="server" Font-Size="Medium" 
        GroupName="1" Text="Course" AutoPostBack="True" 
        oncheckedchanged="RadioButton3_CheckedChanged" />
    &nbsp;
    <br />
    <br />
</asp:Panel>
<asp:Panel ID="Panel2" runat="server" Height="83px">
    <asp:Panel ID="Panel3" runat="server" Font-Size="Medium" Height="33px" 
        style="z-index: 4">
        &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Name" Visible="False"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="159px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Go" Visible="False" 
            onclick="Button1_Click" />
        <asp:Panel ID="Panel4" runat="server" Height="29px" 
            style="position: relative; top: -17px; left: 2px; z-index: 3;">
            &nbsp;<asp:Label ID="Label4" runat="server" Text="Graduation Year" Visible="False"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="157px" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Go" onclick="Button2_Click" 
                Visible="False" />
            <br />
            <asp:Panel ID="Panel5" runat="server" Height="32px" 
                style="position: relative; top: 9px; left: -6px; z-index: 7;">
                <asp:Label ID="Label5" runat="server" Text="Course" Visible="False"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList5" runat="server" height="23px" 
                    Visible="False" width="159px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Agriculture</asp:ListItem>
                    <asp:ListItem>Ethnic Studies</asp:ListItem>
                    <asp:ListItem>Sciences</asp:ListItem>
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Visual &amp; Performing Arts</asp:ListItem>
                    <asp:ListItem>Mathematics</asp:ListItem>
                    <asp:ListItem>Education</asp:ListItem>
                    <asp:ListItem>Engineering</asp:ListItem>
                    <asp:ListItem>English &amp; Literature</asp:ListItem>
                    <asp:ListItem>General &amp; Interdisciplinary</asp:ListItem>
                    <asp:ListItem>Military Science</asp:ListItem>
                    <asp:ListItem>Foreign Languages</asp:ListItem>
                    <asp:ListItem>Religions &amp; Theology</asp:ListItem>
                    <asp:ListItem>Public Affairs &amp; Law</asp:ListItem>
                    <asp:ListItem>Medical &amp; Allied Health Care</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Go" Visible="False" 
                    onclick="Button3_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="Label" Visible="False"></asp:Label>
            </asp:Panel>
        </asp:Panel>
        <br />
    </asp:Panel>
</asp:Panel>
    <br />
    <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataKeyNames="Email" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                SortExpression="Email" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" 
                SortExpression="Nationality" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="GradYear" HeaderText="GradYear" 
                SortExpression="GradYear" />
            <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
        Font-Size="Medium" onclick="LinkButton2_Click">Export to MS Excel</asp:LinkButton>
    <br />
</asp:Content>
