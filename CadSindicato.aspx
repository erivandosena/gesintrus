<%@ Page language="c#" Debug="true" Codebehind="CadSindicato.pas" AutoEventWireup="false" Inherits="CadSindicato.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body ms_positioning="GridLayout" style="WIDTH: 804px">
     <form runat="server">
      <p align="center">
        <uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      </p>
      <p align="left">
      <p>
        <font face="Verdana" size="2"><strong>:: Cadastro do Sindicato</strong>
        </font>&nbsp; 

        <hr width="100%" size="1" style="LEFT: 10px; TOP: 77px"></p>
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
      <p align="left"></p>
      <p></p>
      <p align="left">
        <ASP:Label id="Label4" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 142px">CS:</ASP:Label></p>
      <p>
      <ASP:TextBox id="TextCnpj" style="LEFT: 222px; POSITION: absolute; TOP: 142px" runat="server" width="130px" maxlength="18"></ASP:TextBox>
      <ASP:TextBox id="TextRazao" style="LEFT: 150px; POSITION: absolute; TOP: 110px" runat="server" width="270px" font-names="Tahoma" maxlength="25"></ASP:TextBox>
        <ASP:Label id="Label2" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 182px; POSITION: absolute; TOP: 142px">CNPJ:</ASP:Label>
        <ASP:Label id="Label1" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 110px">Nome Município STR:</ASP:Label>
        <ASP:Label id="Label3" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 430px; POSITION: absolute; TOP: 110px">Fundação:</ASP:Label>
      <ASP:TextBox id="TextFundacao" style="LEFT: 502px; POSITION: absolute; TOP: 110px" runat="server" width="270px" font-names="Tahoma" maxlength="40"></ASP:TextBox>
        <ASP:Label id="Label5" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 366px; POSITION: absolute; TOP: 142px">Endereço:</ASP:Label>
      <ASP:TextBox id="TextEndereco" style="LEFT: 438px; POSITION: absolute; TOP: 142px" runat="server" width="335px" maxlength="50"></ASP:TextBox>
      <ASP:TextBox id="TextCs" style="LEFT: 38px; POSITION: absolute; TOP: 142px" runat="server" width="130px" maxlength="25"></ASP:TextBox></p>
      <p></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p></p>
      <p></p>
      <p>&nbsp;</p>
      <p></p>
      <p>
        <ASP:Label id="Label22" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 558px; POSITION: absolute; TOP: 206px">Data Nascimento:</ASP:Label>
      <ASP:TextBox id="TextData_nascimento" style="LEFT: 678px; POSITION: absolute; TOP: 206px" runat="server" width="95px" maxlength="10"></ASP:TextBox></p>
      <p>
        <ASP:Label id="Label27" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 334px">Sexo:</ASP:Label>
      <ASP:TextBox id="TextSexo" style="LEFT: 54px; POSITION: absolute; TOP: 334px" runat="server" width="109px" maxlength="9"></ASP:TextBox>
        <ASP:Label id="Label28" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 174px; POSITION: absolute; TOP: 334px">Estado Civil:</ASP:Label>
      <ASP:TextBox id="TextEstado_civil" style="LEFT: 254px; POSITION: absolute; TOP: 334px" runat="server" width="117px" maxlength="25"></ASP:TextBox>
        <ASP:Label id="Label30" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 590px; POSITION: absolute; TOP: 334px">Telefone:</ASP:Label>
      <ASP:TextBox id="TextTelefone" style="LEFT: 654px; POSITION: absolute; TOP: 334px" runat="server" width="119px" maxlength="20"></ASP:TextBox></p>
      <p></p>
      <p>&nbsp;</p>
      <p>
        <ASP:Label id="Label6" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 398px">Textos Adicionais:</ASP:Label>
      <ASP:TextBox id="TextTexto_adicional" style="LEFT: 134px; POSITION: absolute; TOP: 398px" runat="server" width="639px" maxlength="75"></ASP:TextBox>
        <ASP:Label id="Label7" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 366px">Filiações:</ASP:Label>
      <ASP:TextBox id="TextFiliacoes" style="LEFT: 78px; POSITION: absolute; TOP: 366px" runat="server" width="365px" maxlength="30"></ASP:TextBox>
        <ASP:Label id="Label8" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 454px; POSITION: absolute; TOP: 366px">Mensal R$:</ASP:Label>
      <ASP:TextBox id="TextValor_mens_socio" style="LEFT: 526px; POSITION: absolute; TOP: 366px" runat="server" width="79px" maxlength="9"></ASP:TextBox>
        <ASP:Label id="Label9" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 270px">Estado/UF:</ASP:Label>
      <ASP:TextBox id="TextEstado_uf_presid" style="LEFT: 86px; POSITION: absolute; TOP: 270px" runat="server" width="162px" maxlength="25"></ASP:TextBox>
        <ASP:Label id="Label10" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 206px">Presidente:</ASP:Label>
      <ASP:TextBox id="TextPresidente" style="LEFT: 94px; POSITION: absolute; TOP: 206px" runat="server" width="453px" maxlength="51"></ASP:TextBox>
        <ASP:Label id="Label11" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 590px; POSITION: absolute; TOP: 302px">Data Exped.:</ASP:Label>
      <ASP:TextBox id="TextData_expedicao" style="LEFT: 678px; POSITION: absolute; TOP: 302px" runat="server" width="95px" maxlength="10"></ASP:TextBox>
        <ASP:Label id="Label12" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 510px; POSITION: absolute; TOP: 270px">Nacionalidade:</ASP:Label>
      <ASP:TextBox id="TextNacionalidade" style="LEFT: 606px; POSITION: absolute; TOP: 270px" runat="server" width="167px" maxlength="25"></ASP:TextBox>
        <ASP:Label id="Label13" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 238px">Endereço:</ASP:Label>
      <ASP:TextBox id="TextEndereco_presid" style="LEFT: 86px; POSITION: absolute; TOP: 238px" runat="server" width="253px" maxlength="50"></ASP:TextBox>
        <ASP:Label id="Label14" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 350px; POSITION: absolute; TOP: 238px">Bairro:</ASP:Label>
      <ASP:TextBox id="TextBairro_presid" style="LEFT: 398px; POSITION: absolute; TOP: 238px" runat="server" width="141px" maxlength="30"></ASP:TextBox>
        <ASP:Label id="Label15" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 550px; POSITION: absolute; TOP: 238px">Cidade:</ASP:Label>
      <ASP:TextBox id="TextCidade_presid" style="LEFT: 598px; POSITION: absolute; TOP: 238px" runat="server" width="175px" maxlength="25"></ASP:TextBox>
      <ASP:TextBox id="TextNaturalidade" style="LEFT: 342px; POSITION: absolute; TOP: 270px" runat="server" width="162px" maxlength="25"></ASP:TextBox>
        <ASP:Label id="Label16" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 254px; POSITION: absolute; TOP: 270px">Naturalidade:</ASP:Label>
        <ASP:Label id="Label18" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 302px">CPF:</ASP:Label>
      <ASP:TextBox id="TextCpf" style="LEFT: 46px; POSITION: absolute; TOP: 302px" runat="server" width="130px" maxlength="15"></ASP:TextBox>
        <ASP:Label id="Label19" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 190px; POSITION: absolute; TOP: 302px">RG:</ASP:Label>
        <ASP:Label id="Label20" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 350px; POSITION: absolute; TOP: 302px">Org. Exp.:</ASP:Label>
      <ASP:TextBox id="TextOrgao_expedidor" style="LEFT: 414px; POSITION: absolute; TOP: 302px" runat="server" width="101px" maxlength="31"></ASP:TextBox>
        <ASP:Label id="Label21" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 526px; POSITION: absolute; TOP: 302px">UF:</ASP:Label>
        <ASP:Label id="Label17" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 614px; POSITION: absolute; TOP: 366px">Carteira R$:</ASP:Label>
      <ASP:TextBox id="TextValor_cart_socio" style="LEFT: 694px; POSITION: absolute; TOP: 366px" runat="server" width="79px" maxlength="9"></ASP:TextBox></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
      <p></p>
      <p>
        <ASP:Label id="Label23" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 174px">Bairro:</ASP:Label></p>
      <p>&nbsp;</p>
      <p>&nbsp;&nbsp;<ASP:Button id="BtnSalvar" runat="server" text="Salvar" width="85px" font-names="Tahoma"></ASP:Button>&nbsp;<input type="reset" value="Reset" title="Limpar" style="WIDTH: 91px; HEIGHT: 24px" size="29">&nbsp;<ASP:Button id="BtnCancelar" runat="server" text="Cancelar" width="85px" causesvalidation="False" font-names="Tahoma"></ASP:Button>
      <ASP:TextBox id="TextBairro" style="LEFT: 62px; POSITION: absolute; TOP: 174px" runat="server" width="141px" maxlength="30"></ASP:TextBox>
        <ASP:Label id="Label24" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 214px; POSITION: absolute; TOP: 174px">CEP:</ASP:Label>
      <ASP:TextBox id="TextCep" style="LEFT: 246px; POSITION: absolute; TOP: 174px" runat="server" width="90px" maxlength="10"></ASP:TextBox>
        <ASP:Label id="Label25" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 350px; POSITION: absolute; TOP: 174px">Cidade:</ASP:Label>
      <ASP:TextBox id="TextCidade" style="LEFT: 398px; POSITION: absolute; TOP: 174px" runat="server" width="175px" maxlength="25"></ASP:TextBox>
        <ASP:Label id="Label26" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 582px; POSITION: absolute; TOP: 174px">Estado/UF:</ASP:Label>
      <ASP:TextBox id="TextEstado_uf" style="LEFT: 654px; POSITION: absolute; TOP: 174px" runat="server" width="119px" maxlength="25"></ASP:TextBox>
      <ASP:TextBox id="TextRg" style="LEFT: 214px; POSITION: absolute; TOP: 302px" runat="server" width="130px" maxlength="20"></ASP:TextBox></p>
      <p></p>
      <ASP:TextBox id="TextOrgao_expedidor_uf" style="LEFT: 550px; POSITION: absolute; TOP: 302px" runat="server" width="35px" maxlength="2"></ASP:TextBox>
        <ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe o Nome ou Razão Social." controltovalidate="TextRazao" font-names="Tahoma" font-size="Smaller" style="LEFT: 14px; POSITION: absolute; TOP: 422px"></ASP:RequiredFieldValidator>
        <ASP:Label id="Label29" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 382px; POSITION: absolute; TOP: 334px">Cargo:</ASP:Label>
      <ASP:TextBox id="TextProfissao" style="LEFT: 430px; POSITION: absolute; TOP: 334px" runat="server" width="150px" maxlength="25"></ASP:TextBox>
     </form>
  </body>
</html>
