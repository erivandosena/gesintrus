<%@ Page language="c#" Debug="true" Codebehind="RelAniverDia.pas" AutoEventWireup="false" Inherits="RelAniverDia.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_TimbleRelat" Src="WUC_TimbleRelat.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
      <uc1:WUC_TimbleRelat id="UserControl1" runat="server"></uc1:WUC_TimbleRelat>
        <table id="AutoNumber1" style="LEFT: 54px; WIDTH: 549px; POSITION: absolute; TOP: 158px; BORDER-COLLAPSE: collapse; HEIGHT: 189px" bordercolor="#111111" cellspacing="0" cellpadding="0" width="549" border="0">
            <tr>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid; HEIGHT: 36px">

                <p align="center"><font face="Arial" size="4">RELAÇÃO DE ANIVERSARIANTES</font><font face="Arial" size="4"></font></p></font></td>
            </tr>
            <tr>
              <td style="BORDER-TOP: 1px solid; HEIGHT: 9px"><font face="Arial" size="2"><strong>
                <p align="center"></p></strong>
                  </font><font face="Arial" size="2"><strong>
                    <p align="center">
                  <ASP:Label id="Label1" runat="server" font-names="Arial" font-size="10pt"></ASP:Label></p></strong>
                  </font>
                <p align="left"><font face="Arial" size="2"><strong>Nome do Associado:</strong>
                  </font></p></td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT: medium none; BORDER-TOP: 1px solid; BORDER-LEFT: medium none">
                <p>
        <ASP:DataGrid id="DataGrid1" runat="server" width="541px" font-names="Tahoma" font-size="Smaller" autogeneratecolumns="False" gridlines="None" showheader="False">
                    <Columns>
                      <ASP:BoundColumn datafield="nome" headertext="Nome do S&#243;cio"></ASP:BoundColumn>
                      <ASP:BoundColumn visible="False" datafield="endereco" headertext="Endere&#231;o"></ASP:BoundColumn>
                      <ASP:BoundColumn visible="False" datafield="matricula" headertext="Matr&#237;cula"></ASP:BoundColumn>
                      <ASP:BoundColumn visible="False" datafield="ficha" headertext="Ficha"></ASP:BoundColumn>
                    </Columns>
                    <PagerStyle nextpagetext="Pr&#243;xima" prevpagetext="Anterior" position="TopAndBottom"></PagerStyle>
        </ASP:DataGrid></p></td>
            </tr>
            <tr>
              <td>
                <hr width="100%" color="#000000" size="1">
&nbsp;
                <ASP:Label id="Label2" runat="server" font-names="Tahoma" font-size="10pt"></ASP:Label></td>
            </tr>
        </table>
     </form>
  </body>
</html>
