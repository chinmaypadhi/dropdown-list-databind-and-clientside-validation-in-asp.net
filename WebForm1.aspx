<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dropdown_in_asp.net.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ValidateDropdown() {
            var result = document.getElementById('<%=DropDownList1.ClientID%>').value;
    if (result == "0") {
        alert("Please Select Education");
    }
    else {
        alert("Dropdownlist Selected Value is: " + result);
    }
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList  ID="DropDownList1" runat="server" >
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="ValidateDropdown()" />
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
