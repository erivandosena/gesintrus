<%@ Page language="c#" Debug="true" Codebehind="AniverMes.pas" AutoEventWireup="false" Inherits="AniverMes.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
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
      <p></p>
      <p align="left"><strong><font face="Verdana" size="2">::&nbsp;Lista de Aniversariantes por Mês</font>
        </strong><strong><font face="Verdana" size="2">

            <hr width="100%" size="1">
          </font>
        </strong></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p>
      <ASP:Label id="Label1" style="LEFT: 38px; TOP: 32px" runat="server" font-names="Tahoma" font-bold="True" font-size="Smaller" height="17px">Selecione o Mês:</ASP:Label>&nbsp; 
        <ASP:DropDownList id="DropDownList1" style="LEFT: 38px; TOP: 54px" runat="server" width="199px" autopostback="True">
          <ASP:ListItem value="1">JANEIRO</ASP:ListItem>
          <ASP:ListItem value="2">FEVEREIRO</ASP:ListItem>
          <ASP:ListItem value="3">MAR&#199;O</ASP:ListItem>
          <ASP:ListItem value="4">ABRIL</ASP:ListItem>
          <ASP:ListItem value="5">MAIO</ASP:ListItem>
          <ASP:ListItem value="6">JUNHO</ASP:ListItem>
          <ASP:ListItem value="7">JULHO</ASP:ListItem>
          <ASP:ListItem value="8">AGOSTO</ASP:ListItem>
          <ASP:ListItem value="9">SETEMBRO</ASP:ListItem>
          <ASP:ListItem value="10">OUTUBRO</ASP:ListItem>
          <ASP:ListItem value="11">NOVEMBRO</ASP:ListItem>
          <ASP:ListItem value="12">DEZEMBRO</ASP:ListItem>
        </ASP:DropDownList>
      </p>
      <p>
        <ASP:DataGrid id="DataGrid1" runat="server" width="753px" bordercolor="White" borderstyle="Ridge" borderwidth="2px" cellspacing="1" backcolor="White" cellpadding="3" gridlines="None" font-names="Tahoma" font-size="Smaller" autogeneratecolumns="False" allowpaging="True">
          <FooterStyle forecolor="Black" backcolor="#C6C3C6"></FooterStyle>
          <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#9471DE"></SelectedItemStyle>
          <ItemStyle forecolor="Black" backcolor="#DEDFDE"></ItemStyle>
          <HeaderStyle font-bold="True" forecolor="#E7E7FF" backcolor="#4A3C8C"></HeaderStyle>
          <Columns>
            <ASP:HyperLinkColumn datanavigateurlfield="cod_soci" datanavigateurlformatstring="Impressoes.aspx?cod_soci={0}" datatextfield="cod_soci" headertext="Impress&#227;o" datatextformatstring="Selecionar"></ASP:HyperLinkColumn>
            <ASP:BoundColumn datafield="nome" headertext="Nome do S&#243;cio"></ASP:BoundColumn>
            <ASP:BoundColumn datafield="endereco" headertext="Endere&#231;o"></ASP:BoundColumn>
            <ASP:BoundColumn datafield="matricula" headertext="Matr&#237;cula"></ASP:BoundColumn>
            <ASP:BoundColumn datafield="ficha" headertext="Ficha"></ASP:BoundColumn>
          </Columns>
          <PagerStyle nextpagetext="Pr&#243;xima" prevpagetext="Anterior" horizontalalign="Center" forecolor="Black" position="TopAndBottom" backcolor="#C6C3C6" mode="NumericPages"></PagerStyle>
        </ASP:DataGrid>
      </p>
      <p><ASP:Button id="BtnVisualizar" runat="server" text="Visualizar Impressão" width="140px" font-names="Tahoma" style="LEFT: 22px; TOP: 1190px"></ASP:Button>&nbsp; <ASP:Button id="BtnCancelar" runat="server" text="Cancelar" width="85px" causesvalidation="False" font-names="Tahoma" style="LEFT: 94px; TOP: 102px"></ASP:Button>
      </p>
     </form>
  </body>
</html>
