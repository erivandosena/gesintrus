<%@ Page language="c#" Debug="true" Codebehind="Calendario.pas" AutoEventWireup="false" Inherits="Calendario.TWebForm2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
      <table cellspacing="1" cellpadding="1" width="225" border="0" style="WIDTH: 225px; HEIGHT: 219px">
          <tr>
            <td>
              <ASP:Calendar id="Calendar1" runat="server" font-names="Verdana" borderwidth="1px" nextprevformat="FullMonth" backcolor="White" width="350px" forecolor="Black" height="190px" font-size="9pt" bordercolor="White" style="LEFT: 1px; TOP: 1px">
                <TodayDayStyle backcolor="#CCCCCC"></TodayDayStyle>
                <NextPrevStyle font-size="8pt" font-bold="True" forecolor="#333333" verticalalign="Bottom"></NextPrevStyle>
                <DayHeaderStyle font-size="8pt" font-bold="True"></DayHeaderStyle>
                <SelectedDayStyle forecolor="White" backcolor="#333399"></SelectedDayStyle>
                <TitleStyle font-size="12pt" font-bold="True" borderwidth="4px" forecolor="#333399" bordercolor="Black" backcolor="White"></TitleStyle>
                <OtherMonthDayStyle forecolor="#999999"></OtherMonthDayStyle></ASP:Calendar></td>
          </tr>
          <tr>
			<td>&nbsp; 
              <ASP:Button id="btnCancelar" runat="server" text="Cancelar" font-names="Tahoma" width="70px"></ASP:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <ASP:Button id="BtnAdicionar" runat="server" text="Adicionar" width="70px" font-names="Tahoma"></ASP:Button>
</td>
          </tr>
      </table>
     </form>
  </body>
</html>
