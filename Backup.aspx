<%@ Page language="c#" Debug="true" Codebehind="Backup.pas" AutoEventWireup="false" Inherits="Backup.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
	 <form runat="server">
      <uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      <p align="left"><strong><font face="Verdana" size="2">::&nbsp;Cópia de Segurança dos&nbsp;Dados do Sistema</font>
        </strong><strong><font face="Verdana" size="2">&nbsp; 


            <hr width="100%" size="1">
          </font>
        </strong></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
        <P></P>
        <P></P>
        <P></P>
        <P></P>
      <p></p>
      <p></p>
      <p>
      <ASP:Label id="Label1" style="LEFT: 38px; TOP: 32px" runat="server" font-names="Tahoma" font-size="Smaller" height="17px">Informe o destino:</ASP:Label>&nbsp;
        <ASP:TextBox id="TextBox1" runat="server" width="350px" font-names="Tahoma"></ASP:TextBox>&nbsp;
        
	  </p>
	  <p>
	  <ASP:Button id="BtnExecutar" runat="server" text="Executar" font-names="Tahoma"></ASP:Button>&nbsp;
		 <ASP:Button id="BtnCancelar" runat="server" text="Cancelar" font-names="Tahoma"></ASP:Button><p>
		<cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></p>
     </form>
  </body>
</html>
