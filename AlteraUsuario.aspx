<%@ Page language="c#" Debug="true" Codebehind="AlteraUsuario.pas" AutoEventWireup="false" Inherits="AlteraUsuario.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body ms_positioning="FlowLayout">
     <form runat="server">
      <div align="center">
        <uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      </div>
      <div align="left">
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
        <ASP:Label id="Label1" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040">Nome:</ASP:Label>&nbsp;<ASP:TextBox id="TextNome" runat="server" width="300px" maxlength="20" font-names="Tahoma"></ASP:TextBox>
      </p>
      <p>
        <ASP:Label id="Label3" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040">Senha:</ASP:Label><ASP:TextBox id="TextSenha" runat="server" width="86px" textmode="Password" maxlength="8" font-names="Tahoma"></ASP:TextBox>
      </p>
      <p><ASP:Button id="BtnSalvar" runat="server" text="Salvar" width="85px" font-names="Tahoma"></ASP:Button>&nbsp;<ASP:Button id="BtnExcluir" runat="server" text="Excluir" width="75px" font-names="Tahoma" causesvalidation="False"></ASP:Button>&nbsp;<input type="reset" value="Reset" title="Limpar" style="WIDTH: 91px; HEIGHT: 24px" size="29">&nbsp;<ASP:Button id="BtnCancelar" runat="server" text="Cancelar" width="85px" causesvalidation="False" font-names="Tahoma"></ASP:Button>
      </p>
      <p></p>
      <p>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe o nome de usuário." controltovalidate="TextNome" font-names="Tahoma" font-size="Smaller"></ASP:RequiredFieldValidator></p>
      <p>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" errormessage="Informe a senha." controltovalidate="TextSenha" font-names="Tahoma" font-size="Smaller"></ASP:RequiredFieldValidator></p>
      <p></p>
        <p>
          <cc1:MessageBox id="MessageBox1" runat="server"></cc1:MessageBox></p>
      </div>
     </form>
  </body>
</html>
