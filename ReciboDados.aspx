<%@ Page language="c#" Debug="true" Codebehind="ReciboDados.pas" AutoEventWireup="false" Inherits="ReciboDados.TWebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p></p>
      <p></p><ASP:Button id="BtnAdicionar" runat="server" text="Adicionar" width="70px" font-names="Tahoma" style="LEFT: 94px; POSITION: absolute; TOP: 206px"></ASP:Button><ASP:Button id="btnCancelar" runat="server" text="Cancelar" font-names="Tahoma" width="70px" style="LEFT: 14px; POSITION: absolute; TOP: 206px"></ASP:Button>
      <ASP:Label id="Label1" style="LEFT: 14px; POSITION: absolute; TOP: 22px" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True">Valor do recibo:</ASP:Label>
      <ASP:TextBox id="TextBox1" style="LEFT: 14px; POSITION: absolute; TOP: 46px" runat="server" font-names="Tahoma"></ASP:TextBox>
      <ASP:Label id="Label2" style="LEFT: 14px; POSITION: absolute; TOP: 78px" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True">Descrição referente ao recibo:</ASP:Label>
      <ASP:TextBox id="TextBox2" style="LEFT: 14px; POSITION: absolute; TOP: 102px" runat="server" width="350px" textmode="MultiLine" height="85px" font-names="Tahoma"></ASP:TextBox>
     </form>
  </body>
</html>
