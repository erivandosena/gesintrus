<%@ Page language="c#" Debug="true" Codebehind="Default.pas" AutoEventWireup="false" Inherits="Default.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Rodape" Src="WUC_Rodape.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title id="titulo"></title>
  </head>

  <body>
	 <form runat="server">
		<uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      <p></p>
      <p align="left">
        <ASP:Label id="Label1" runat="server" font-names="Tahoma" font-size="9pt"></ASP:Label>
	  </p>
	  <p align="center">
        <ASP:Image id="Image1" runat="server" imageurl="Imagem\sistema\gesintrus.gif"></ASP:Image></p>
      <p align="center">
        <uc1:WUC_Rodape id="UserControl2" runat="server"></uc1:WUC_Rodape></p>
      <div align="center"></div>
      <div align="center">
      </div>
      <div align="center">
      </div>
      <div align="center"></div>
      <div align="center">&nbsp;</div>
      <div align="center">
        <ASP:Label id="Label2" runat="server" font-names="Tahoma" font-size="8pt" style="LEFT: 14px; POSITION: absolute; TOP: 374px" width="100%" font-bold="True"></ASP:Label>
      </div>
      <div align="center">
        <ASP:Label id="Label3" runat="server" font-names="Tahoma" font-size="8pt" style="LEFT: 14px; POSITION: absolute; TOP: 390px" width="100%"></ASP:Label>
      </div>
	 </form>
  </body>
</html>
