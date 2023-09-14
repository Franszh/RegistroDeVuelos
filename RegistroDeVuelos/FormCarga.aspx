<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCarga.aspx.cs" Inherits="RegistroDeVuelos.FormCarga" %>

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
        #titulo1 {
            margin-bottom:20px;
            font-size:30px;
            margin:140px;
        }
        form {
            width:500px;
            height:600px;
            margin:30px auto;
            border-radius: 50px;
            background-color:#fff9f9bd;
            position:relative;
        }
        #DivForm {
            width:300px;
            
            margin:30px 50px;
        }
        
        
        .Inputs {
            display:block;
            margin-bottom: 30px;
        }
        .Labels {
            display:block;
            font-size:20px;
        }
        #Button1{
            width:200px;
            height:27px;
            margin:100px 90px;

            border-radius:10px;
            border:none;
            background-image:linear-gradient(#eacaca,#fff9f9bd);
            box-shadow:#adacacbd 1px 2px 6px;
        }
        #Button1:focus {
            box-shadow:#80808000 1px 3px 5px;
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
        <asp:Label ID="titulo1" runat="server" Text="Ingrese los datos"></asp:Label>
          <div id="DivForm">
              <asp:Label CssClass="Labels" ID="Label1" runat="server" Text="Numero de Vuelo"></asp:Label>
              <asp:DropDownList CssClass="Inputs" ID="DropDownList1" runat="server" required="True" ValidateRequestMode="Enabled">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>AR 200</asp:ListItem>
                  <asp:ListItem>AR 201</asp:ListItem>
                  <asp:ListItem>AR 300</asp:ListItem>
                  <asp:ListItem>AR 303</asp:ListItem>
              </asp:DropDownList>
              <asp:Label CssClass="Labels" ID="Label2" runat="server" Text="Fecha de Salida"></asp:Label>
              <asp:TextBox CssClass="Inputs" ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
              <asp:Label CssClass="Labels" ID="Label3" runat="server" Text="Hora"></asp:Label>
              <asp:TextBox CssClass="Inputs" ID="TextBox2" runat="server" TextMode="Time"></asp:TextBox>

              <asp:Label runat="server" ID="labelinfo"></asp:Label>
              <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click"/>
              
          </div>
          <div id="foot">
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Index.aspx">Inicio</asp:HyperLink>
          </div>
    </form>
</body>
</html>
