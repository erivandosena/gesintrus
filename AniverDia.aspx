<%@ Page language="c#" Debug="true" Codebehind="AniverDia.pas" AutoEventWireup="false" Inherits="AniverDia.TWebForm1" %>
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
      <p>
      <p align="left"><strong><font face="Verdana" size="2">::&nbsp;Lista de Aniversariantes do Dia</font>
        </strong><strong><font face="Verdana" size="2"><hr width="100%" size="1">
          </font>
        </strong></p>
      <p></p>
      <p></p>
      <p></p>
      <p>
      <ASP:Label id="Label1" style="LEFT: 38px; TOP: 32px" runat="server" font-names="Tahoma" font-bold="True" font-size="Smaller" height="17px"></ASP:Label>&nbsp;
        
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
      <p></p>
     </form>
  </body>
</html>
