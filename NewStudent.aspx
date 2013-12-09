<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewStudent.aspx.cs" Inherits="AAA.Account.NewStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel3" runat="server" Height="50px">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Blue" 
            Text="Label" Visible="False"></asp:Label>
        <br />
        Name<asp:TextBox ID="TextBox1" runat="server" 
            
            style="z-index: 1; top: -1px; position: relative; left: 71px; width: 163px; height: 21px; text-align: center; margin-top: 0px; margin-bottom: 0px;"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Name cant be empty" ForeColor="Red" 
            style="position: relative"></asp:RequiredFieldValidator>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Height="21px">
        Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="Male" />
        &nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="Female" />
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="171px" height="23px"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ControlToValidate="TextBox3" 
            ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
            style="position: relative" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
            ForeColor="Red" style="position: absolute; z-index: 1; left: 510px; top: 295px">Email cant be empty</asp:RequiredFieldValidator>
    </asp:Panel>
    <br />
    Date of Birth
    <asp:Panel ID="Panel2" runat="server" 
        
        
        style="z-index: 1; left: 101px; top: -23px; position: relative; height: 25px; width: 217px">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="45px">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="23px" 
            Width="57px">
            <asp:ListItem Selected="True">JAN</asp:ListItem>
            <asp:ListItem>FEB</asp:ListItem>
            <asp:ListItem>MAR</asp:ListItem>
            <asp:ListItem>APR</asp:ListItem>
            <asp:ListItem>MAY</asp:ListItem>
            <asp:ListItem>JUN</asp:ListItem>
            <asp:ListItem>JUL</asp:ListItem>
            <asp:ListItem>AUG</asp:ListItem>
            <asp:ListItem>SEP</asp:ListItem>
            <asp:ListItem>OCT</asp:ListItem>
            <asp:ListItem>NOV</asp:ListItem>
            <asp:ListItem>DEC</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" Height="23px" Width="85px">
        </asp:DropDownList>
    </asp:Panel>
    Nationality&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList4" runat="server" height="23px" width="159px">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" height="23px" width="167px"></asp:TextBox>
    <br />
    <br />
    Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList5" runat="server" height="23px" width="159px">
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
    <br />
    <br />
    Graduation Year&nbsp;
    <asp:TextBox ID="TextBox5" runat="server" height="23px" width="167px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red" style="position: relative">Please enter your graduation year</asp:RequiredFieldValidator>
    <br />
    <br />
    Major&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList6" runat="server" height="23px" width="159px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Diploma</asp:ListItem>
        <asp:ListItem>Bachelors</asp:ListItem>
        <asp:ListItem>Masters</asp:ListItem>
        <asp:ListItem>PhD</asp:ListItem>
    </asp:DropDownList>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="DropDownList6" ErrorMessage="RequiredFieldValidator" 
        ForeColor="Red" style="position: relative">You must choose a major</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
        CausesValidation="False" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
