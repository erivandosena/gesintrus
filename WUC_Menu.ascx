<%@ Control Language="c#" AutoEventWireup="false" Codebehind="WUC_Menu.pas" Inherits="WUC_Menu.TWebUserControl1"%>

<%@ Register TagPrefix="cc1" Namespace="skmMenu" Assembly="skmMenu" %>

<style type="text/css">.subMenu {
	BORDER-RIGHT: black thin solid; BORDER-TOP: black thin solid; BORDER-LEFT: black thin solid; BORDER-BOTTOM: black thin solid
}
</style>
<div align="center">

<cc1:Menu id="Menu1" runat="server" Font-Names="Tahoma" Font-Size="9pt" BackColor="#E0E0E0"
	Cursor="Pointer" ItemSpacing="2" ItemPadding="2" HighlightTopMenu="False" Layout="Horizontal"
	SubmenuCSSClass="subMenu" height="20px" width="550px">
  <SelectedMenuItemStyle backcolor="#FFC080"></SelectedMenuItemStyle>
</cc1:Menu>
</div>
<div align="left">
  <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
      <tr>
        <td>
<ASP:Label id="Label1" runat="server" font-names="Tahoma" font-size="8pt"></ASP:Label></td>
        <td></td>
        <td>
          <p align="right"><font face="Tahoma" size="1">&nbsp;</font>
          </p></td>
      </tr>
  </table>
</div>
