<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dropdown_in_asp.net.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var x = () => {
            var s = document.getElementById("DropDownList1").value;
            if (s == 1) {
                alert("plz enter any value without 1");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList  ID="DropDownList1" runat="server" >
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
