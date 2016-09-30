<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <h1><span class="label label-default">User is created</span></h1><br />
    </div>
        <asp:GridView ID="GridView1" runat="server" class="table table-hover" CssClass="table table-hover" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg"/>
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="cfmpassword" HeaderText="cfmpassword" SortExpression="cfmpassword" />
                <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            </Columns>
            <RowStyle CssClass="cursor-pointer" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imcsgroupdbConnectionString %>" SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" type="class" CssClass="btn btn-primary" Text="Go Back To Homepage" Width="201px" OnClick="Button1_Click" />
    </form>
</body>
</html>
