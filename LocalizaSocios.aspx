<%@ Page language="c#" Debug="true" Codebehind="LocalizaSocios.pas" AutoEventWireup="false" Inherits="LocalizaSocios.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body ms_positioning="borl_attrinfo=&quot;'+ms_positioning'&quot;">
	 <form runat="server">
      <p align="center">
        <uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      </p>
      <p align="left"></p>
      <p align="left"><strong><font face="Verdana" size="2">::&nbsp;Localizar Sócio(s)</font>
        </strong><strong><font face="Verdana" size="2">
            <hr width="100%" size="1">
          </font>
        </strong></p>
      <p></p>
      <p></p>
        <P></P>
        <P></P>
        <P></P>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
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
      <ASP:Label id="Label64" style="LEFT: 14px; TOP: 94px" runat="server" font-names="Verdana" font-size="9pt" forecolor="Black">Nome do Sócio:</ASP:Label>
        <ASP:TextBox id="TextPesquisa" runat="server" width="362px" maxlength="50"></ASP:TextBox>&nbsp;
        <ASP:Button id="BtnBuscar" runat="server" text="Buscar" width="75px"></ASP:Button>&nbsp;<ASP:Button id="BtnNovo" runat="server" text="Novo" width="85px" causesvalidation="False" font-names="Tahoma"></ASP:Button>&nbsp;<ASP:Button id="BtnCancelar" runat="server" text="Cancelar" width="85px" causesvalidation="False" font-names="Tahoma"></ASP:Button>
      </p>
      <p align="center">
        <ASP:DataGrid id="DataGrid1" runat="server" width="753px" bordercolor="White" borderstyle="Ridge" borderwidth="2px" cellspacing="1" backcolor="White" cellpadding="3" gridlines="None" font-names="Tahoma" font-size="Smaller" autogeneratecolumns="False" allowpaging="True">
            <FooterStyle forecolor="Black" backcolor="#C6C3C6"></FooterStyle>
            <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#9471DE"></SelectedItemStyle>
            <ItemStyle forecolor="Black" backcolor="#DEDFDE"></ItemStyle>
            <HeaderStyle font-bold="True" forecolor="#E7E7FF" backcolor="#4A3C8C"></HeaderStyle>
            <Columns>
              <ASP:HyperLinkColumn datanavigateurlfield="cod_soci" datanavigateurlformatstring="AlteraSocio.aspx?cod_soci={0}" datatextfield="cod_soci" headertext="Altera&#231;&#227;o" datatextformatstring="Editar Cadastro"></ASP:HyperLinkColumn>
              <ASP:HyperLinkColumn datanavigateurlfield="cod_soci" datanavigateurlformatstring="Impressoes.aspx?cod_soci={0}" datatextfield="cod_soci" headertext="Impress&#227;o" datatextformatstring="Relat&#243;rios"></ASP:HyperLinkColumn>
              <ASP:HyperLinkColumn datanavigateurlfield="cod_soci" datanavigateurlformatstring="FotoSocio.aspx?cod_soci={0}" datatextfield="cod_soci" headertext="Imagem" datatextformatstring="Foto"></ASP:HyperLinkColumn>
              <ASP:BoundColumn datafield="nome" headertext="Nome do S&#243;cio"></ASP:BoundColumn>
              <ASP:BoundColumn datafield="matricula" headertext="Matr&#237;cula"></ASP:BoundColumn>
              <ASP:BoundColumn datafield="ficha" headertext="Ficha"></ASP:BoundColumn>
              <ASP:BoundColumn visible="False" datafield="data_nascimento" headertext="Data Nascimento"></ASP:BoundColumn>
            </Columns>
            <PagerStyle nextpagetext="Pr&#243;xima" prevpagetext="Anterior" horizontalalign="Center" forecolor="Black" position="TopAndBottom" backcolor="#C6C3C6" mode="NumericPages"></PagerStyle>
        </ASP:DataGrid>
      </p>
	  <p align="left"></p>
     </form>
  </body>
</html>
