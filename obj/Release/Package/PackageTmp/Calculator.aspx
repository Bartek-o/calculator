<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Calculator.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Calculator</title>
	<link rel="stylesheet" href="~/Content/container.css"/>
	<link rel="stylesheet" href="~/Content/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
		<div id="box">
			<div id="calculator">
				<div id="result_field">
					<input runat="server" type="text" id="result" value="0" readonly="readonly"/>
				</div>
				<div class="buttons_container">
					<asp:Button runat="server" type="button" class="btn btn-info btn-lg" Onclick="Operator" Text="√"/>
					<asp:Button runat="server" type="button" class="btn btn-warning btn-lg" Onclick="ClearResultInput" Text="CE"/>
					<asp:Button runat="server" type="button" class="btn btn-warning btn-lg" Onclick="Backspace" Text="←"/>
					<asp:Button runat="server" type="button" class="btn btn-info btn-lg" Onclick="Operator" Text="/"/>
				</div>
				<div class="buttons_container">
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" Onclick="Number" Text="7"/>
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" Onclick="Number" Text="8"/>
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" Onclick="Number" Text="9"/>
					<asp:Button runat="server" type="button" class="btn btn-info btn-lg" Onclick="Operator" Text="*"/>
				</div>
				<div class="buttons_container">
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" Onclick="Number" Text="4"/>
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" Onclick="Number" Text="5"/>
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" Onclick="Number" Text="6"/>
					<asp:Button runat="server" type="button" class="btn btn-info btn-lg" Onclick="Operator" Text="-"/>
				</div>
				<div class="buttons_container">
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" onclick="Number" Text="1"/>
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" Onclick="Number" Text="2"/>
					<asp:Button runat="server" type="button" class="btn btn-secondary btn-lg" Onclick="Number" Text="3"/>
					<asp:Button runat="server" type="button" class="btn btn-info btn-lg" Onclick="Operator" Text="+"/>
				</div>
				<div class="buttons_container">
					<asp:Button runat="server" class="btn btn-danger btn-lg" OnClick="Clear" Text="C"/>
					<asp:Button runat="server" class="btn btn-secondary btn-lg" Onclick="Number" Text="0"/>
					<asp:Button runat="server" class="btn btn-info btn-lg" Onclick="Number" Text=","/>
					<asp:Button runat="server" class="btn btn-success btn-lg" Onclick="Calculate" Text="="/>
				</div>
			</div>
		</div>
		<asp:HiddenField id="hiddenNumber" Value="" runat="server"/>
		<asp:HiddenField id="hiddenOperator" Value="" runat="server"/>
		<asp:HiddenField id="HiddenFlag" Value="" runat="server"/>
    </form>
</body>
</html>
