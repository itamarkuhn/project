<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="myproject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div style=" height: 450px;">
    <table style="width: 565px; height: 421px; background-color:#E4DCD1; margin:0 auto">
        <%--Displays Login Logo Image--%>
        <tr>
            <td colspan="2" align="center">
                <img id="Img1" src="~/Image/LOGINLOGO.jpg" alt="" runat="server" 
                    style="height: 190px; width: 199px"/>
            </td>               
        </tr>

        <%--Email ID with Required Field Validation--%>
        <tr>
            <td align="center" style="width:50%">
                <b>Email Id:</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Height="29px" 
                    Width="166px" Font-Bold="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Email-ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%--Password with Required Field Validation--%>
        <tr>
            <td align="center" style="width:50%">
                <b>Password:</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="29px" 
                    Width="166px" TextMode="Password" Font-Bold="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <%--Button for Login & redirect to Default page--%>
        <tr>
            <td colspan="2" align="center" >
                <asp:ImageButton ID="ImageButton1" runat="server" Height="46px" 
                    ImageUrl="~/Images/LoginButton.png" Width="201px" 
                    onclick="ImageButton1_Click" /><hr />
            </td>
        </tr>

        <tr>
            <%--Label for displaying Error message--%>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
            </td>

            <%--Link Button for redirecting to Register page--%>
            <td align="right">
                <asp:LinkButton ID="LinkButton1" 
                    runat="server"  Font-Bold="True" Font-Italic="True" ForeColor="Red" 
                    onclick="LinkButton1_Click" CausesValidation="False">Register Here...</asp:LinkButton>
            </td>
        </tr>

    </table>
</div>
    </form>
</body>
</html>
