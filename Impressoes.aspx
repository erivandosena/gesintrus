<%@ Page language="c#" Debug="true" Codebehind="Impressoes.pas" AutoEventWireup="false" Inherits="Impressoes.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
      <p align="center">
        <uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      </p>
      <p align="center"><strong></strong>
      </p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="center"><strong></strong></p>
      <p align="left"><strong><font face="Verdana" size="2">:: Impressão de documentos</font>
        </strong><strong><font face="Verdana" size="2">
            <hr width="100%" size="1"></font></strong></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p></font></strong>
      <p align="left">
        <ASP:Label id="LabelNome" runat="server" font-names="Tahoma" font-size="10pt"></ASP:Label></p>
      <p><font>
        <ASP:Label id="Label4" runat="server" font-names="Tahoma" font-size="10pt">Selecione o tipo de documento:</ASP:Label>&nbsp;<strong></strong></font>
        <ASP:DropDownList id="DropDownList1" runat="server" font-names="Tahoma" width="391px" autopostback="True">
          <ASP:ListItem value="Declaracao1">Declara&#231;&#227;o de atividade rural</ASP:ListItem>
          <ASP:ListItem value="Declaracao2">Declara&#231;&#227;o para companhia de energia el&#233;trica</ASP:ListItem>
          <ASP:ListItem value="Transferencia1">Transfer&#234;ncia de s&#243;cio</ASP:ListItem>
          <ASP:ListItem value="Carteira">Carteira do S&#243;cio</ASP:ListItem>
          <ASP:ListItem value="ReciboPagamento">Recibo de Pagamento</ASP:ListItem>
        </ASP:DropDownList>
      </p>
      <p><font>
        <ASP:Label id="Label1" runat="server" font-names="Tahoma" font-size="10pt" visible="False">Cidade:</ASP:Label><strong>&nbsp;</strong></font>
        <ASP:TextBox id="TextBox1" runat="server" width="200px" visible="False" font-names="Tahoma"></ASP:TextBox>
        <strong>&nbsp;&nbsp; 
        </strong><ASP:Label id="Label2" runat="server" font-names="Tahoma" font-size="10pt" visible="False">Estado:</ASP:Label><strong>&nbsp;
        </strong><ASP:TextBox id="TextBox2" runat="server" width="200px" visible="False" font-names="Tahoma"></ASP:TextBox><strong>&nbsp;&nbsp; 
        </strong><ASP:Label id="Label3" runat="server" font-names="Tahoma" font-size="10pt" visible="False">Uf:</ASP:Label>
        <ASP:TextBox id="TextBox3" runat="server" width="26px" visible="False" font-names="Tahoma" maxlength="2"></ASP:TextBox>
      </p>
      <p><ASP:Button id="BtnVisualizar" runat="server" text="Visualizar Impressão" width="140px" font-names="Tahoma" style="LEFT: 22px; TOP: 1190px"></ASP:Button>&nbsp;&nbsp; 
        <ASP:CheckBox id="CheckBox1" runat="server" text="Com assinatura do agricultor rural." font-names="Tahoma" font-size="10pt" autopostback="True"></ASP:CheckBox></p>
      <p>
        <ASP:Label id="Label6" runat="server" font-names="Arial" font-size="9pt" forecolor="DimGray">Observação: Caso os campos do formulário não forem suficientes para dispor as informações, poderá ser anexados complemento ao formulário impresso.</ASP:Label></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p><ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe o nome da Cidade." controltovalidate="TextBox1" font-names="Tahoma" font-size="Smaller" style="LEFT: 6px; TOP: 1510px" display="None"></ASP:RequiredFieldValidator><ASP:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" errormessage="Informe o nome do Estado." controltovalidate="TextBox2" font-names="Tahoma" font-size="Smaller" style="LEFT: 166px; TOP: 1510px" display="None"></ASP:RequiredFieldValidator><ASP:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" errormessage="Informe a Unidade de Federação." controltovalidate="TextBox3" font-names="Tahoma" font-size="Smaller" style="LEFT: 326px; TOP: 1510px" display="None"></ASP:RequiredFieldValidator>
        <ASP:ValidationSummary id="ValidationSummary1" style="LEFT: 510px; TOP: 1510px" runat="server" showmessagebox="True" showsummary="False"></ASP:ValidationSummary><cc1:MessageBox id="MessageBox1" runat="server" style="LEFT: 6px; TOP: 1542px"></cc1:MessageBox></p>
      <p></p>
      <p></p>
     </form>
  </body>
</html>
