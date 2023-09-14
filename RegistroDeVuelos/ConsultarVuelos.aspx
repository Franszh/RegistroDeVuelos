<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarVuelos.aspx.cs" Inherits="RegistroDeVuelos.ConsultarVuelos" %>

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
            height:600px;
            margin:30px auto;
            border-radius: 50px;
            background-color:#fff9f9bd;
            position:relative;
        }
        #container {
            width:470px;
            max-height:500px;
            overflow:auto;
            margin:auto;
        }
        #Label1{
            font-size:20px;
            display:block;
            margin:20px;
        }
        #titulo {
            width:fit-content;
            display:block;
            margin:auto;
            font-size:20px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        #foot{
            position:absolute;
            margin:auto;
            left:0;
            right:0;
            bottom:0;
            text-align:center;
        }
        #HyperLink1 {
            text-decoration:none;
            color:black;
            font-size:18px;
        }
   

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="titulo" runat="server" Text="Vuelos Registrados"></asp:Label>
    <div id="container">
        
        <asp:Label ID="Label1" runat="server" Text="no hay ningun vuelo cargado"></asp:Label>
    </div>
    <div id="foot">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Index.aspx">Inicio</asp:HyperLink>
    </div>    
    
</form>
</body>
</html>
