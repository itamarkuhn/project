<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="myproject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div style="height:870px">
    <table style="width:700px; height:700px; background-color:aliceblue;" align="center">
        <%-- REGISTER LOGO --%>
        <tr style="width:200px; height:200px; vertical-align:central;">
            <td colspan="2" aling="center" width="70px"  height=" 70px">
                <img style="text-align:center;" id="img1" src="~/Image/LOGONOA.jpg" runat="server" alt="" />

            </td>
        </tr>
     <%--First Name with Reqiured & Regular Expression Validation--%>
  <tr>
      <td align="center" style="background-color:Transparent; width:50%">
          <b>First Name:</b>
      </td>
      <td style="background-color:Transparent; vertical-align:top">
          <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Height="29px" 
              Width="166px" Font-Bold="True"></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="TextBox1" ErrorMessage="First Name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
              ControlToValidate="TextBox1" ErrorMessage="First Name should be in Characters" 
              ForeColor="Red" ValidationExpression="^[A-Za-z]$"></asp:RegularExpressionValidator>
      </td>              
  </tr>

  //<%--Last Name with Reqiured & Regular Expression Validation--%>
  <tr>
      <td align="center" style="width:50%">
          <b>Last Name:</b>
      </td>
      <td style="vertical-align:top">
          <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="29px" 
               Width="166px" Font-Bold="True" TabIndex="1"></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ControlToValidate="TextBox2" ErrorMessage="Last Name is empty" 
              ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
              ControlToValidate="TextBox2" ErrorMessage="Last Name should be in Characters" 
              ForeColor="Red" ValidationExpression="^[A-Za-z]$"></asp:RegularExpressionValidator>
      </td>              
  </tr>

  <%--Email Id with Reqiured Field Validation--%>
  <tr>
      <td align="center" style="width:50%">
          <b>Email_ID:</b>
      </td>
      <td style="vertical-align:top">
          <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" Height="29px" 
               Width="166px" TextMode="Email" Font-Bold="True" TabIndex="2"></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
              ControlToValidate="TextBox3" ErrorMessage="Email_ID is empty" 
              ForeColor="Red">*</asp:RequiredFieldValidator>
      </td>                
  </tr>

  <%--Gender with Reqiured Field Validation--%>
  <tr>
      <td align="center" style="width:50%">
          <b>Gender:</b>
      </td>
      <td style="vertical-align:top">
          <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Transparent" 
              Height="31px"  Width="167px" Font-Bold="true" TabIndex="3">
              <asp:ListItem Value="Select Gender">Select Gender</asp:ListItem>
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
              <asp:ListItem>Other</asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ControlToValidate="DropDownList1" ErrorMessage="Select Gender" 
              ForeColor="Red" InitialValue="Select Gender">*</asp:RequiredFieldValidator>
      </td>               
  </tr>

  <%--Address with Reqiured Field Validation--%>
  <tr>
      <td align="center" style="width:50%">
          <b>Address:</b>
      </td>
      <td style="vertical-align:top">
          <asp:TextBox ID="TextBox5" runat="server" BackColor="Transparent" Height="32px" 
               Width="166px" TextMode="MultiLine" Font-Bold="True" TabIndex="4"></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ControlToValidate="TextBox5" ErrorMessage="Address is empty" 
              ForeColor="Red">*</asp:RequiredFieldValidator>
      </td>               
  </tr>

  <%--Phone No. with Reqiured Field & Regular Expression Validation--%>
  <tr>
      <td align="center" style="width:50%">
          <b>Phone_No:</b>
      </td>
      <td style="vertical-align:top">
          <asp:TextBox ID="TextBox6" runat="server" BackColor="Transparent" Height="29px" 
               Width="166px" TextMode="Number" Font-Bold="True" TabIndex="5"></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
              ControlToValidate="TextBox6" ErrorMessage="Phone Number is empty" 
              ForeColor="Red">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
              ControlToValidate="TextBox6" ErrorMessage="Invalid Phone Number" 
              ForeColor="Red" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
      </td>               
  </tr>

  <%--Password with Reqiured Field Validation--%>
  <tr>
      <td align="center" style="width:50%">
          <b>Password:</b>
      </td>
      <td style="vertical-align:top">
          <asp:TextBox ID="TextBox7" runat="server" BackColor="Transparent" Height="29px" 
               Width="166px" TextMode="Password" Font-Bold="True" TabIndex="6"></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
              ControlToValidate="TextBox7" ErrorMessage="Password is empty" 
              ForeColor="Red">*</asp:RequiredFieldValidator>
      </td>                
  </tr>

  <%--Confirm Password with Reqiured Field & Compare Validation--%>
  <tr>
      <td align="center" style="width:50%">
          <b>Confirm Password:</b>
      </td>
      <td style="vertical-align:top">
          <asp:TextBox ID="TextBox8" runat="server" BackColor="Transparent" Height="29px" 
               Width="166px" TextMode="Password" Font-Bold="True" TabIndex="7"></asp:TextBox>
          
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
              ControlToValidate="TextBox8" ErrorMessage="Confirm Password is empty" 
              ForeColor="Red">*</asp:RequiredFieldValidator>
          
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
              ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
              ErrorMessage="Password Not Matched" ForeColor="Red">*</asp:CompareValidator>
      </td>                
  </tr>
      <%--Register Button--%>
            <tr>
                <td colspan="2" align="center">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="49px" 
                        ImageUrl="~/images/loginbutton.jpg" Width="199px" 
                        onclick="ImageButton1_Click" TabIndex="8" /><hr />
                </td>
            </tr>

            <%--Validation Summary For Displaying all Validations Error Mesage--%>
            <tr>
                <td  colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                        HeaderText="Fix the following errors" Font-Bold="True" />
                </td>
            </tr>


            <tr>
                <%--Label for displaying Register Error message--%>
                <td >
                    <asp:Label ID="Label1" runat="server" ForeColor="#66FF66" Font-Bold="true"></asp:Label>
                </td>
        <%-- IF REGISTERD ALREADY --%>
        <tr>
            <td align="center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Users/Login.aspx">Click Here To Login!</asp:HyperLink>
            </td>
        </tr>
    </table>
</div>
    </form>
</body>
</html>
