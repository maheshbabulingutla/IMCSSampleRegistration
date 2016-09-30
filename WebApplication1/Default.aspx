<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
		<div>
			<br/>
			<p class="lead">IMCSGroup Registration</p>
			<br />
				<div class="container">
					<div class="row">
				<label for="firstname"> FirstName :  </label><br />
				<asp:TextBox ID="firstname" name="firstName" runat="server" MaxLength="30"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstname" Display="Dynamic" ErrorMessage="Enter your FirstName" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>
					 <div class="row">
				<label for="lastname"> LastName :  </label><br />
				<asp:TextBox ID="lastname" name="lastName" runat="server"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastname" Display="Dynamic" ErrorMessage="Enter your LastName" ForeColor="Red"></asp:RequiredFieldValidator>
						 </div>
						<div class="row">
				<label for="TextBox3"> UserName :  </label><br />
				<asp:TextBox ID="username" name="userName" runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="username" Display="Dynamic" ErrorMessage="Enter your UserName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
							</div>
					<div class="row">
				<label for="password"> Password :  </label><br />
				<asp:TextBox ID="password" name="password" runat="server" textmode="password" EnableViewState="False"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
						</div>
					<div class="row">
				<label for="cnfpassword"> Confirm Password :  </label><br />
				<asp:TextBox ID="cnfpassword" name="confirmPassword" runat="server" textmode="password"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cnfpassword" Display="Dynamic" ErrorMessage="Enter password again" ForeColor="Red"></asp:RequiredFieldValidator>
						<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="cnfpassword" Display="Dynamic" ErrorMessage="Enter the same password" ForeColor="Red"></asp:CompareValidator>
						</div>
					<div class="row">
				 <label for="birthday"> Birthday :  </label><br />
				<asp:TextBox ID="birthday" name="Birthday" runat="server">MM/DD/YYYY</asp:TextBox>
						</div>
				<div class="row">
				 <label for="email"> Email :  </label>
					<br />
				<asp:TextBox ID="email" name="Email" runat="server"></asp:TextBox>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Enter valid EmailID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
						</div>
				<div class="row">
				 <label for="age"> Age :  </label><br />
				<asp:TextBox ID="age" name="age" runat="server"></asp:TextBox>
					<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="age" Display="Dynamic" ErrorMessage="Age must be a Number" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
					</div>
				<div class="row">
					<div class="dropdown">
				 <label for="gender"> Gender :  </label><br />
					 <asp:DropDownList ID="DropDownList1" runat="server">
						 <asp:ListItem>Male</asp:ListItem>
						 <asp:ListItem>Female</asp:ListItem>
					</asp:DropDownList>
						</div>
					</div>
					 <br />
					<div class="row">
						<div class="btn-group">
						<asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" OnClick="Button1_Click" /> <br />
						</div>
						<input id="Reset1" type="reset" value="Reset" class="btn btn-primary" />
				 </div>
				 <label for="email">
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imcsgroupdbConnectionString %>" SelectCommand="SELECT * FROM [registration]"></asp:SqlDataSource>
			</label>
		<br />
		</div>
			</div>
	</asp:Content>
