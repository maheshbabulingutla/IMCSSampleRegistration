<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="WebApplication1.review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>user Registration Information </title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
        #Submit1 {
            width: 149px;
        }
    </style>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><span class="label label-default">Review and Confirm Details</span></h1><br />
            <table class="table table-hover" style="width:100%;">
                <tr class="cursor_pointer">
                    <td class="auto-style1">Firstname</td>
                    <td>
                        <asp:Label ID="lbfirstname" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">LastName</td>
                    <td>
                        <asp:Label ID="lblastname" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">UserName</td>
                    <td>
                        <asp:Label ID="lbusername" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">Password</td>
                    <td>
                        <asp:Label ID="lbpassword" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">ConfirmedPassword</td>
                    <td>
                        <asp:Label ID="lbcnfpassword" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">Birthday</td>
                    <td>
                        <asp:Label ID="lbbirthday" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">Email</td>
                    <td>
                        <asp:Label ID="lbemail" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">Age</td>
                    <td>
                        <asp:Label ID="lbage" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">Gender</td>
                    <td>
                        <asp:Label ID="lbgender" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="confirm" runat="server" type="button" CssClass="btn btn-default" OnClick="Button2_Click" Text="Confirm" Width="158px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="cursor_pointer">
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="cancel" runat="server" type="button" CssClass="btn btn-default" OnClick="Button1_Click" Text="Cancel" Width="158px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </div>
        <asp:View ID="View1" runat="server">
        </asp:View>
    </form>
</body>
</html>
