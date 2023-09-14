<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="RegistroDeVuelos.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
        body {
            background-image:url(images/background-avion.jpg);
            background-size:cover;
        }
        form {
            width:500px;
            height:40px;
            border: solid 1px black;
            margin:30px auto;
            border-radius: 50px;
        }
        #nav {
            
            margin:10px;
            text-align:center;
        }
        
        .links {
            text-decoration:none;
            color:black;
            margin:40px;

        }

    </style>
</head>

<body>
     
    <form id="form1" runat="server">
        <div id="nav">
            <asp:HyperLink CLASS="links"  runat="server" NavigateUrl="FormCarga.aspx">Cargar</asp:HyperLink>
            <asp:HyperLink CLASS="links"  runat="server" NavigateUrl="ConsultarVuelos.aspx">Consultar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
