<%@ Page language="c#" Debug="true" Codebehind="Seleciona.pas" AutoEventWireup="false" Inherits="Seleciona.TWebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
      <ASP:DataGrid id="DataGrid1" runat="server" width="400px" showheader="False" gridlines="None" font-names="Tahoma" font-size="10pt">
        <Columns>
          <ASP:ButtonColumn text="Adicionar" buttontype="PushButton" commandname="Select"></ASP:ButtonColumn>
        </Columns>
      </ASP:DataGrid>
     </form>
  </body>
</html>
