<%@ Page language="c#" Debug="true" Codebehind="BuscaUsuario.pas" AutoEventWireup="false" Inherits="BuscaUsuario.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body ms_positioning="FlowLayout">
     <form runat="server">
      <p align="center">
        <uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      </p>
      <p align="left"><strong><font face="Verdana" size="2">:: Alterando Cadastro de Usuários</font>
        </strong><strong><font face="Verdana" size="2">
            <hr width="100%" size="1">
          </font>
        </strong></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p>
        <ASP:TextBox id="TextPesquisa" runat="server" width="300px" maxlength="20"></ASP:TextBox>&nbsp;
        <ASP:Button id="BtnBuscar" runat="server" text="Buscar" width="75px"></ASP:Button>
      </p>
      <p>
        <ASP:DataGrid id="DataGrid1" runat="server" width="550px" bordercolor="White" borderstyle="Ridge" borderwidth="2px" cellspacing="1" backcolor="White" cellpadding="3" gridlines="None" font-names="Tahoma" font-size="Smaller" autogeneratecolumns="False">
          <FooterStyle forecolor="Black" backcolor="#C6C3C6"></FooterStyle>
          <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#9471DE"></SelectedItemStyle>
          <ItemStyle forecolor="Black" backcolor="#DEDFDE"></ItemStyle>
          <HeaderStyle font-bold="True" forecolor="#E7E7FF" backcolor="#4A3C8C"></HeaderStyle>
          <Columns>
            <ASP:HyperLinkColumn datanavigateurlfield="cod_usua" datanavigateurlformatstring="AlteraUsuario.aspx?cod_usua={0}" datatextfield="cod_usua" headertext="A&#231;&#227;o" datatextformatstring="Editar Cadastro"></ASP:HyperLinkColumn>
            <ASP:BoundColumn datafield="nome_usuario" headertext="Nome do Usu&#225;rio"></ASP:BoundColumn>
          </Columns>
          <PagerStyle horizontalalign="Right" forecolor="Black" backcolor="#C6C3C6"></PagerStyle>
        </ASP:DataGrid>
      </p>
      <p><ASP:Button id="BtnCancelar" runat="server" text="Cancelar" width="85px" causesvalidation="False" font-names="Tahoma"></ASP:Button></p>
      <p></p>
     </form>
  </body>
</html>
