<%@ Page language="c#" Debug="true" Codebehind="Login.pas" AutoEventWireup="false" Inherits="Login.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Rodape" Src="WUC_Rodape.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title>GESINTRUS - Login do Sistema</title>
  </head>

  <body ms_positioning="borl_attrinfo=&quot;'+ms_positioning'&quot;">
     <form runat="server">
      <p align="center">
        <table id="AutoNumber1" style="WIDTH: 394px; BORDER-COLLAPSE: collapse; HEIGHT: 356px" bordercolor="#111111" height="356" cellspacing="0" cellpadding="0" width="394" border="0">
            <tr>
              <td width="841" colspan="3" height="126">
      <p align="center">
        <ASP:Image id="Image1" runat="server" imageurl="Imagem\sistema\logo_inforamos.gif"></ASP:Image>
      </p></td>
            </tr>
            <tr>
              <td width="841" colspan="3" height="24">
                <p align="center">&nbsp;</p></td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: medium none" width="841" bgcolor="#dee2e6" colspan="3" height="27">
                <p align="center">
                  <b><font face="Tahoma" color="#808080" size="2">Login do Sistema</font>
                  </b>
                </p></td>
            </tr>
            <tr>
              <td style="BORDER-TOP: medium none; HEIGHT: 37px" width="7" height="44" rowspan="7">
                <p align="center">
                  <ASP:Image id="Image2" runat="server" imageurl="Imagem\sistema\login_sistema.gif" borderwidth="1px" imagealign="Middle"></ASP:Image>
                </p></td>
              <td style="BORDER-RIGHT: medium none; BORDER-TOP: 1px solid; HEIGHT: 37px" width="217" height="29">&nbsp;</td>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; HEIGHT: 37px" valign="bottom" width="485" height="29">
                <b><font face="Tahoma" size="2">Nome:</font>
                </b></td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT: medium none; HEIGHT: 7px" width="217" height="1"></td>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; HEIGHT: 7px" valign="top" width="485" height="1"><ASP:TextBox id="TextUsuario" runat="server" width="170px" maxlength="20" font-names="Tahoma"></ASP:TextBox></td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT: medium none; HEIGHT: 5px" width="217" height="1"></td>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; HEIGHT: 5px" valign="bottom" width="485" height="1">
                <b><font face="Tahoma" size="2">Senha:</font>
                </b></td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT: medium none; HEIGHT: 13px" width="217" height="1"></td>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; HEIGHT: 13px" valign="top" width="485" height="1"><ASP:TextBox id="TextSenha" runat="server" width="170px" textmode="Password" maxlength="8" font-names="Tahoma"></ASP:TextBox></td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT: medium none; HEIGHT: 17px" width="217" height="1"></td>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; HEIGHT: 17px" width="485" height="1"></td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT: medium none; HEIGHT: 20px" width="217" height="1"></td>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none; HEIGHT: 20px" width="485" height="1">
                <div align="center"><ASP:Button id="BtnLogin" runat="server" text="Login" width="70px" font-names="Tahoma"></ASP:Button>&nbsp;<input style="WIDTH: 70px; HEIGHT: 24px" onclick="javascript:window.close()" type="button" size="17" value="Fechar">
                </div></td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT: medium none; BORDER-BOTTOM: 1px solid; HEIGHT: 28px" width="217" height="16"></td>
              <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: 1px solid; HEIGHT: 28px" width="485" height="16">
      <p align="center"></p></td>
            </tr>
            <tr>
              <td style="HEIGHT: 13px" width="841" colspan="3" height="19"></td>
            </tr>
        </table>
      </p>
      <p align="left">
        <cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox>
      </p>
      <p></p>
      <p></p>
      <p></p>
      <p align="center">
        <uc1:WUC_Rodape id="UserControl2" runat="server"></uc1:WUC_Rodape>
      </p>
     </form>
  </body>
</html>
