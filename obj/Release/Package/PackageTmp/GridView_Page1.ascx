<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GridView_Page1.ascx.cs" Inherits="WebApplication1.WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
 
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script>
    $(document).ready(function () {
        function ajaxpost() {
            alert("Handler for `click` called.");
        }

        var submitBtn = $('#bt1');
        submitBtn.on('click', ajaxpost);
    });
</script>
    <form id="form1" runat="server">
        <div>            
           <asp:Literal ID="litpage1" runat="server"></asp:Literal>
       </div>
        <p>
            &nbsp;</p>
    </form>
</body>

</html>


    
