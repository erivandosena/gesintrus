<%@ Page language="c#" Debug="true" Codebehind="FotoSocio.pas" AutoEventWireup="false" Inherits="FotoSocio.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
      <p>
        <uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      </p>
      <p>
      <p align="left"><strong><font face="Verdana" size="2">::&nbsp;Imagem da fotografia do sócio</font>
        </strong><strong><font face="Verdana" size="2">


            <hr width="100%" size="1">
          </font>
        </strong>
      <input id="file1" type="file" name="file1" runat="Server" style="WIDTH: 400px; HEIGHT: 20px" size="16">&nbsp;<ASP:Button id="Button3" runat="server" text="Salvar" width="85px" font-names="Tahoma" style="LEFT: 14px; TOP: 1678px"></ASP:Button>&nbsp;<ASP:Button id="BtnExcluir" runat="server" text="Excluir" width="85px" font-names="Tahoma" style="LEFT: 14px; TOP: 1678px"></ASP:Button>&nbsp;<ASP:Button id="BtnRetornar" runat="server" text="Retornar" width="85px" causesvalidation="False" font-names="Tahoma" style="LEFT: 302px; TOP: 1678px"></ASP:Button></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p>
	  <p>
        <ASP:DataGrid id="DataGrid1" runat="server" autogeneratecolumns="False" font-names="Tahoma" font-size="Smaller" bordercolor="#CCCCCC" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="3" gridlines="None" showheader="False" font-bold="True">
          <FooterStyle forecolor="#000066" backcolor="White"></FooterStyle>
          <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#669999"></SelectedItemStyle>
          <ItemStyle forecolor="#000066"></ItemStyle>
          <HeaderStyle font-bold="True" forecolor="White" backcolor="#006699"></HeaderStyle>
          <Columns>
            <ASP:BoundColumn datafield="NOME" headertext="NOME"></ASP:BoundColumn>
            <ASP:BoundColumn datafield="FOTO_SOCIO" headertext="FOTO_SOCIO" dataformatstring="&lt;img src={0}&gt;"></ASP:BoundColumn>
          </Columns>
          <PagerStyle horizontalalign="Left" forecolor="#000066" backcolor="White" mode="NumericPages"></PagerStyle></ASP:DataGrid></p>
      <p>
        <cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></p>
     </form>
  </body>
</html>
