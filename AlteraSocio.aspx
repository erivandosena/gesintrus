<%@ Page language="c#" Debug="true" Codebehind="AlteraSocio.pas" AutoEventWireup="false" Inherits="AlteraSocio.TWebForm1" %>
<%@ Register TagPrefix="uc1" TagName="WUC_Menu" Src="WUC_Menu.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="ControleMessageBox" Assembly="ControleMessageBox" %>
<%@ Register TagPrefix="borland" Namespace="Borland.Data.Web" Assembly="Borland.Data.Web, Version=2.0.0.0, Culture=neutral, PublicKeyToken=91d62ebb5b0d1b1b" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body style="WIDTH: 905px; HEIGHT: 762px" ms_positioning="GridLayout">
     <form runat="server">
      <ASP:Button id="BtnSexo" style="LEFT: 94px; POSITION: absolute; TOP: 182px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextEstado_civil" style="LEFT: 350px; POSITION: absolute; TOP: 182px" runat="server" width="117px" maxlength="25" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnEstado_uf" style="LEFT: 254px; POSITION: absolute; TOP: 406px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextNacionalidade" style="LEFT: 478px; POSITION: absolute; TOP: 406px" runat="server" width="157px" maxlength="25" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnNacionalidade" style="LEFT: 638px; POSITION: absolute; TOP: 406px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextAtividade" style="LEFT: 14px; POSITION: absolute; TOP: 902px" runat="server" width="181px" maxlength="30" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnAtividade" style="LEFT: 198px; POSITION: absolute; TOP: 902px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextMes_ini_atividade" style="LEFT: 14px; POSITION: absolute; TOP: 1062px" runat="server" width="117px" maxlength="10" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnMes_ini_atividade" style="LEFT: 134px; POSITION: absolute; TOP: 1062px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextSocio_aposentado" style="LEFT: 598px; POSITION: absolute; TOP: 1366px" runat="server" width="61px" maxlength="3" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnSocio_aposentado" style="LEFT: 662px; POSITION: absolute; TOP: 1366px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextAposent_contribuinte" style="LEFT: 694px; POSITION: absolute; TOP: 1366px" runat="server" width="53px" maxlength="3" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnAposent_contribuinte" style="LEFT: 750px; POSITION: absolute; TOP: 1366px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextProduto_agricola" style="LEFT: 166px; POSITION: absolute; TOP: 1062px" runat="server" width="581px" maxlength="80" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnProduto_agricola" style="LEFT: 750px; POSITION: absolute; TOP: 1062px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextForma_de_atividade" style="LEFT: 230px; POSITION: absolute; TOP: 902px" runat="server" width="181px" maxlength="30" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnForma_de_atividade" style="LEFT: 414px; POSITION: absolute; TOP: 902px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextRegime_de_trabalho" style="LEFT: 446px; POSITION: absolute; TOP: 902px" runat="server" width="173px" maxlength="40" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnRegime_de_trabalho" style="LEFT: 622px; POSITION: absolute; TOP: 902px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextCidade" style="LEFT: 518px; POSITION: absolute; TOP: 350px" runat="server" width="229px" maxlength="25" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnCidade" style="LEFT: 750px; POSITION: absolute; TOP: 350px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:Button id="BtnNaturalidade" style="LEFT: 446px; POSITION: absolute; TOP: 406px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <ASP:TextBox id="TextEstado_uf" style="LEFT: 102px; POSITION: absolute; TOP: 406px" runat="server" width="149px" maxlength="25" font-names="Tahoma"></ASP:TextBox>
      <ASP:Button id="BtnEstado_civil" style="LEFT: 470px; POSITION: absolute; TOP: 182px" runat="server" text="..." width="20px" font-names="Tahoma" font-bold="True" causesvalidation="False"></ASP:Button>
      <p align="center">
        <uc1:WUC_Menu id="UserControl1" runat="server"></uc1:WUC_Menu>
      </p>
      <p align="left">
      <p>
        <font face="Verdana" size="2"><strong></strong>
        </font>

        <hr width="100%" size="1" style="LEFT: 14px; POSITION: absolute; TOP: 94px"></p>
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
      <p align="left"></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p title=""></p>
      <p></p>
      <p>&nbsp;</p>
      <p></p>
      <p><strong><font face="Verdana" color="#0000ff" size="2"></font>
        </strong>
</p>
      <p><strong><font face="Verdana" color="#0000ff" size="2"></font>
        </strong>
</p>
      <p><strong><font face="Verdana" color="#0000ff" size="2"></font>
        </strong>
</p>
      <p><strong><font face="Verdana" color="#0000ff" size="2"></font>
        </strong>
        <hr style="LEFT: 14px; POSITION: absolute; TOP: 478px" width="100%" size="1"></p>
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
      <p>
        <ASP:Label id="Label43" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 486px">CPF:</ASP:Label>
      <ASP:TextBox id="TextCpf" style="LEFT: 14px; POSITION: absolute; TOP: 510px" runat="server" width="109px" maxlength="15" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextRg" style="LEFT: 134px; POSITION: absolute; TOP: 510px" runat="server" width="117px" maxlength="20" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label44" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 134px; POSITION: absolute; TOP: 486px">RG:</ASP:Label>
      <ASP:TextBox id="TextTitulo_eleitor" style="LEFT: 262px; POSITION: absolute; TOP: 510px" runat="server" width="117px" maxlength="20" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label45" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 262px; POSITION: absolute; TOP: 486px">Título Eleitoral:</ASP:Label>
      <ASP:TextBox id="TextZona" style="LEFT: 390px; POSITION: absolute; TOP: 510px" runat="server" width="53px" maxlength="5" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label46" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 390px; POSITION: absolute; TOP: 486px">Zona:</ASP:Label>
      <ASP:TextBox id="TextSecao" style="LEFT: 454px; POSITION: absolute; TOP: 510px" runat="server" width="53px" maxlength="5" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label47" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 454px; POSITION: absolute; TOP: 486px">Seção:</ASP:Label>
      <ASP:TextBox id="TextCtps" style="LEFT: 518px; POSITION: absolute; TOP: 510px" runat="server" width="117px" maxlength="20" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label48" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 518px; POSITION: absolute; TOP: 486px">CTPS/Série:</ASP:Label>
      <ASP:TextBox id="TextNit" style="LEFT: 646px; POSITION: absolute; TOP: 510px" runat="server" width="120px" maxlength="20" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label49" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 646px; POSITION: absolute; TOP: 486px" width="61px">NIT Nº:</ASP:Label></p>
      <p></p>
      <p>&nbsp;</p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p><strong><font face="Verdana" color="#0000ff" size="2"></font>
        </strong>
</p>
      <p><strong><font face="Verdana" color="#0000ff" size="2"></font>
        </strong>&nbsp; 

        <hr width="100%" size="1" style="LEFT: 14px; POSITION: absolute; TOP: 870px"></p>
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
      <p>
      <ASP:TextBox id="TextObs_doc_atividade" style="LEFT: 14px; POSITION: absolute; TOP: 710px" runat="server" width="752px" height="110px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label9" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 686px">Observação referente a destinação da declaração:</ASP:Label></p>
      <p>&nbsp;</p>
      <p></p>
      <p></p>
      <p>
        <ASP:Label id="Label37" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 878px">Categoria Trabalhador:</ASP:Label>
        <ASP:Label id="Label38" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 230px; POSITION: absolute; TOP: 878px">Forma de Atividade:</ASP:Label></p>
      <p>&nbsp;</p>
      <p>
        <ASP:Label id="Label39" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 934px">Observação referente a atividade desenvolvida pelo segurado:</ASP:Label>
      <ASP:TextBox id="TextObs_form_atividade" style="LEFT: 14px; POSITION: absolute; TOP: 958px" runat="server" width="752px" height="66px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>
        <ASP:Label id="Label31" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 542px">Documento(s) em que se baseia para emitir a declaração. / Ano da expedição:</ASP:Label></p>
      <p>
        <ASP:Label id="Label40" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 1094px">Observação referente aos produtos cultivados:</ASP:Label>
      <ASP:TextBox id="TextObs_prod_cultiv" style="LEFT: 14px; POSITION: absolute; TOP: 1118px" runat="server" width="752px" height="66px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox></p>
      <p></p>
      <p>
      <ASP:TextBox id="TextNome_patrao" style="LEFT: 14px; POSITION: absolute; TOP: 1222px" runat="server" width="240px" height="66px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox></p>
      <p></p>
      <p></p>
      <p><strong><font face="Verdana" color="#0000ff" size="2">
      &nbsp;<ASP:TextBox id="TextLocal_trab" style="LEFT: 270px; POSITION: absolute; TOP: 1222px" runat="server" width="240px" height="66px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox></font>
        </strong></p>
      <p>&nbsp;</p>
      <p></p>
      <p><strong><font face="Verdana" color="#0000ff" size="2"></font>
        </strong>&nbsp; 

        <hr width="100%" size="1" style="LEFT: 14px; POSITION: absolute; TOP: 1334px"></p>
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
      <p>&nbsp;</p>
      <p></p>
      <p></p>
      <p></p>
      <p>
      <ASP:TextBox id="TextDoc_atividades" style="LEFT: 16px; POSITION: absolute; TOP: 566px" runat="server" width="752px" height="110px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label4" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 1038px">Início das Atividades:</ASP:Label>
        <ASP:Label id="Label2" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 166px; POSITION: absolute; TOP: 1038px">Produto Agrícola Cultivado:</ASP:Label>
        <ASP:Label id="Label5" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 446px; POSITION: absolute; TOP: 878px">Regime de Trabalho:</ASP:Label><ASP:TextBox id="TextArea_plantada" style="LEFT: 654px; POSITION: absolute; TOP: 902px" runat="server" width="112px" maxlength="20" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label8" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 654px; POSITION: absolute; TOP: 878px">Área Plantada:</ASP:Label></p>
      <p></p><p><strong><font face="Verdana" color="#0000ff" size="2"></font>
        </strong></p>
      <p><strong><font face="Verdana" color="#0000ff" size="2"></font></strong></p></font></strong>
      <p></p>
      <p></p>
      <p></p><p></p>
      <p></p></font></strong>
      <p></p><p></p>
      <p></p>
      <p></p>
      <p></p><p>&nbsp;</p>
      <p>
        <ASP:Label id="Label30" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 1342px">STR do Sócio :</ASP:Label><ASP:TextBox id="TextStr_socio" style="LEFT: 14px; POSITION: absolute; TOP: 1366px" runat="server" width="277px" maxlength="30" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label27" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 694px; POSITION: absolute; TOP: 1342px" width="75px">Ap. Contri.:</ASP:Label>
        <ASP:Label id="Label50" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 598px; POSITION: absolute; TOP: 1342px" width="61px">Aposentado:</ASP:Label>
        <ASP:Label id="Label51" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 1454px">Vizinho 3 (Frente):</ASP:Label>
      <ASP:TextBox id="TextVizinho_3" style="LEFT: 14px; POSITION: absolute; TOP: 1478px" runat="server" width="369px" maxlength="40" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextVizinho_4" style="LEFT: 398px; POSITION: absolute; TOP: 1478px" runat="server" width="369px" maxlength="40" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label52" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 398px; POSITION: absolute; TOP: 1454px">Vizinho 4 (Trás):</ASP:Label>
        <ASP:Label id="Label41" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 526px; POSITION: absolute; TOP: 1198px">Data Inicial/Data Final:</ASP:Label>
        <ASP:Label id="Label56" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 270px; POSITION: absolute; TOP: 1198px">Local de Trabalho:</ASP:Label>
        <ASP:Label id="Label53" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 1398px">Vizinho 1 (Direita):</ASP:Label>
      <ASP:TextBox id="TextVizinho_1" style="LEFT: 14px; POSITION: absolute; TOP: 1422px" runat="server" width="369px" maxlength="40" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextVizinho_2" style="LEFT: 398px; POSITION: absolute; TOP: 1422px" runat="server" width="369px" maxlength="40" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label54" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 398px; POSITION: absolute; TOP: 1398px">Vizinho 2 (Esquerda):</ASP:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        
      </p>
      <p></p>
      <p></p>
      <p>
        <ASP:Label id="Label57" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 1198px">Nome do Proprietário:</ASP:Label><ASP:Label id="Label1" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 102px">Matrícula:</ASP:Label>
        <ASP:Label id="Label3" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 102px; POSITION: absolute; TOP: 102px">Nome:</ASP:Label>
        <ASP:Label id="Label6" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 534px; POSITION: absolute; TOP: 102px">Data Nascimento:</ASP:Label>
        <ASP:Label id="Label7" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 654px; POSITION: absolute; TOP: 102px">Data Cadastro:</ASP:Label>
      <ASP:TextBox id="TextMatricula" style="LEFT: 14px; POSITION: absolute; TOP: 126px" runat="server" width="78px" font-names="Tahoma" maxlength="11" readonly="True"></ASP:TextBox>
      <ASP:TextBox id="TextNome" style="LEFT: 102px; POSITION: absolute; TOP: 126px" runat="server" width="421px" font-names="Tahoma" maxlength="50"></ASP:TextBox>
      <ASP:TextBox id="TextDataNascimento" style="LEFT: 534px; POSITION: absolute; TOP: 126px" runat="server" width="85px" maxlength="10" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextDataEdicao" style="LEFT: 654px; POSITION: absolute; TOP: 126px" runat="server" width="113px" maxlength="10" readonly="True" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label32" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 158px">Sexo:</ASP:Label>
        <ASP:Label id="Label33" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 126px; POSITION: absolute; TOP: 158px">Apelido:</ASP:Label>
        <ASP:Label id="Label34" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 350px; POSITION: absolute; TOP: 158px">Estado Civil:</ASP:Label>
        <ASP:Label id="Label35" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 502px; POSITION: absolute; TOP: 158px">Grau de Instrução:</ASP:Label>
        <ASP:Label id="Label36" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 702px; POSITION: absolute; TOP: 158px" width="61px">Nº Filhos:</ASP:Label>
      <ASP:TextBox id="TextApelido" style="LEFT: 126px; POSITION: absolute; TOP: 182px" runat="server" width="213px" maxlength="25" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextGrau_instrucao" style="LEFT: 502px; POSITION: absolute; TOP: 182px" runat="server" width="189px" maxlength="30" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextNumero_filhos" style="LEFT: 702px; POSITION: absolute; TOP: 182px" runat="server" width="65px" maxlength="3" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label10" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 214px">Nome do Pai:</ASP:Label>
      <ASP:TextBox id="TextPai" style="LEFT: 14px; POSITION: absolute; TOP: 238px" runat="server" width="369px" maxlength="50" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label11" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 398px; POSITION: absolute; TOP: 214px">Nome da Mãe:</ASP:Label>
      <ASP:TextBox id="TextMae" style="LEFT: 398px; POSITION: absolute; TOP: 238px" runat="server" width="369px" maxlength="50" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label12" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 270px">Cônjuge:</ASP:Label>
      <ASP:TextBox id="TextConjuge" style="LEFT: 14px; POSITION: absolute; TOP: 294px" runat="server" width="305px" maxlength="50" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label13" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 334px; POSITION: absolute; TOP: 270px">Data Nascimento:</ASP:Label>
      <ASP:TextBox id="TextData_nasc_conjuge" style="LEFT: 334px; POSITION: absolute; TOP: 294px" runat="server" width="93px" maxlength="10" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextEndereco" style="LEFT: 462px; POSITION: absolute; TOP: 294px" runat="server" width="305px" maxlength="50" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label14" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 462px; POSITION: absolute; TOP: 270px">Endereço:</ASP:Label>
        <ASP:Label id="Label15" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 326px">Ponto de Referência:</ASP:Label>
      <ASP:TextBox id="TextPonto_referencia" style="LEFT: 14px; POSITION: absolute; TOP: 350px" runat="server" width="305px" maxlength="35" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextBairro" style="LEFT: 334px; POSITION: absolute; TOP: 350px" runat="server" width="172px" maxlength="30" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label16" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 334px; POSITION: absolute; TOP: 326px">Bairro:</ASP:Label>
        <ASP:Label id="Label17" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 518px; POSITION: absolute; TOP: 326px">Cidade:</ASP:Label>
        <ASP:Label id="Label18" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 382px">CEP:</ASP:Label>
      <ASP:TextBox id="TextCep" style="LEFT: 14px; POSITION: absolute; TOP: 406px" runat="server" width="77px" maxlength="10" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label19" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 102px; POSITION: absolute; TOP: 382px">Estado/UF:</ASP:Label>
        <ASP:Label id="Label20" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 286px; POSITION: absolute; TOP: 382px">Naturalidade:</ASP:Label>
      <ASP:TextBox id="TextNaturalidade" style="LEFT: 286px; POSITION: absolute; TOP: 406px" runat="server" width="157px" maxlength="30" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label21" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 478px; POSITION: absolute; TOP: 382px">Nacionalidade:</ASP:Label>
        <ASP:Label id="Label22" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 670px; POSITION: absolute; TOP: 382px" width="61px">Telefone:</ASP:Label></p>
      <p></p>
      <p>
      <ASP:Label id="Label59" style="LEFT: 14px; POSITION: absolute; TOP: 78px" runat="server" font-names="Verdana" font-size="9pt" forecolor="Black" font-bold="True">:: Cadastro de Sócios</ASP:Label>
      <ASP:Label id="Label58" style="LEFT: 158px; POSITION: absolute; TOP: 78px" runat="server" font-names="Verdana" font-size="9pt" forecolor="Blue" font-bold="True"> (Dados do Associado)</ASP:Label>
      <ASP:Label id="Label60" style="LEFT: 14px; POSITION: absolute; TOP: 462px" runat="server" font-names="Verdana" font-size="9pt" forecolor="Blue" font-bold="True">:: Documentos</ASP:Label>
      <ASP:Label id="Label61" style="LEFT: 14px; POSITION: absolute; TOP: 854px" runat="server" font-names="Verdana" font-size="9pt" forecolor="Blue" font-bold="True">:: Dados de Atividade</ASP:Label>
        <ASP:Label id="Label23" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 14px; POSITION: absolute; TOP: 1558px">Nome do Dependente:</ASP:Label>
      <ASP:TextBox id="TextNome_dependente" style="LEFT: 14px; POSITION: absolute; TOP: 1582px" runat="server" width="373px" height="66px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label42" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 398px; POSITION: absolute; TOP: 1558px">Grau de Parentesco:</ASP:Label>
      <ASP:TextBox id="TextGrau_parent_depend" style="LEFT: 398px; POSITION: absolute; TOP: 1582px" runat="server" width="237px" height="66px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label55" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 646px; POSITION: absolute; TOP: 1558px">Data Nascimento</ASP:Label>
      <ASP:TextBox id="TextData_nasc_depend" style="LEFT: 646px; POSITION: absolute; TOP: 1582px" runat="server" width="120px" height="66px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox><ASP:Button id="BtnSalvar" runat="server" text="Salvar" width="85px" font-names="Tahoma" style="LEFT: 14px; POSITION: absolute; TOP: 1678px"></ASP:Button><hr width="100%" size="1" style="LEFT: 14px; POSITION: absolute; TOP: 1550px">
      <ASP:Label id="Label63" style="LEFT: 14px; POSITION: absolute; TOP: 1534px" runat="server" font-names="Verdana" font-size="9pt" forecolor="Blue" font-bold="True">:: Dependentes Econômicos do Sócio </ASP:Label></p>
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
      <p>&nbsp;</p>
      <p></p>
      <p></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p></p>
      <p></p>
      <p>&nbsp;</p>
      <p></p>
      <p>&nbsp;</p>
      <p></p>
      <p></p>
      <p></p>
      <p>
      <ASP:Label id="Label62" style="LEFT: 14px; POSITION: absolute; TOP: 1318px" runat="server" font-names="Verdana" font-size="9pt" forecolor="Blue" font-bold="True">:: Dados Sindicais</ASP:Label>
      <ASP:TextBox id="TextDatas_ini_fim" style="LEFT: 526px; POSITION: absolute; TOP: 1222px" runat="server" width="240px" height="66px" textmode="MultiLine" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextTelefone" style="LEFT: 670px; POSITION: absolute; TOP: 406px" runat="server" width="97px" maxlength="20" font-names="Tahoma"></ASP:TextBox>
      </p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p></p>
      <p><cc1:MessageBox id="MessageBox1" runat="server" style="LEFT: 14px; POSITION: absolute; TOP: 1742px"></cc1:MessageBox></p>
      <p></p>
      <p>
      <ASP:TextBox id="TextSexo" style="LEFT: 14px; POSITION: absolute; TOP: 182px" runat="server" width="77px" maxlength="10" font-names="Tahoma"></ASP:TextBox>
      <ASP:ImageButton id="ImgBtnData_nascimento" style="LEFT: 622px; POSITION: absolute; TOP: 126px" runat="server" causesvalidation="False" imagealign="AbsBottom" imageurl="Imagem\sistema\data20x24.gif"></ASP:ImageButton>
      <ASP:ImageButton id="ImgBtnData_nasc_conjuge" style="LEFT: 430px; POSITION: absolute; TOP: 294px" runat="server" causesvalidation="False" imagealign="AbsBottom" imageurl="Imagem\sistema\data20x24.gif"></ASP:ImageButton>
      <ASP:ImageButton id="ImgBtnData_entrada" style="LEFT: 462px; POSITION: absolute; TOP: 1366px" runat="server" causesvalidation="False" imagealign="AbsBottom" imageurl="Imagem\sistema\data20x24.gif"></ASP:ImageButton>
      <ASP:ImageButton id="ImgBtnData_saida" style="LEFT: 566px; POSITION: absolute; TOP: 1366px" runat="server" causesvalidation="False" imagealign="AbsBottom" imageurl="Imagem\sistema\data20x24.gif"></ASP:ImageButton><ASP:Button id="BtnExcluir" runat="server" text="Excluir" width="75px" font-names="Tahoma" causesvalidation="False" style="LEFT: 110px; POSITION: absolute; TOP: 1678px"></ASP:Button><input type="reset" value="Reset" title="Limpar" style="LEFT: 198px; WIDTH: 91px; POSITION: absolute; TOP: 1678px; HEIGHT: 24px" size="29"><ASP:Button id="BtnCancelar" runat="server" text="Cancelar" width="85px" causesvalidation="False" font-names="Tahoma" style="LEFT: 302px; POSITION: absolute; TOP: 1678px"></ASP:Button>
        <ASP:Label id="Label24" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 302px; POSITION: absolute; TOP: 1342px">Ficha Nº:</ASP:Label><ASP:Label id="Label25" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 390px; POSITION: absolute; TOP: 1342px">Data Entrada:</ASP:Label><ASP:TextBox id="TextFicha" style="LEFT: 302px; POSITION: absolute; TOP: 1366px" runat="server" width="78px" maxlength="9" font-names="Tahoma"></ASP:TextBox>
      <ASP:TextBox id="TextData_entrada" style="LEFT: 390px; POSITION: absolute; TOP: 1366px" runat="server" width="69px" maxlength="10" font-names="Tahoma"></ASP:TextBox>
        <ASP:Label id="Label28" runat="server" font-names="Tahoma" font-size="Smaller" font-bold="True" forecolor="#404040" style="LEFT: 494px; POSITION: absolute; TOP: 1342px">Data Saída:</ASP:Label>
      <ASP:TextBox id="TextData_saida" style="LEFT: 494px; POSITION: absolute; TOP: 1366px" runat="server" width="69px" maxlength="10" font-names="Tahoma"></ASP:TextBox><ASP:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" errormessage="Informe o número de CPF." controltovalidate="TextCpf" font-names="Tahoma" font-size="Smaller" style="LEFT: 174px; POSITION: absolute; TOP: 1710px" display="None"></ASP:RequiredFieldValidator><ASP:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" errormessage="Informe a data de nascimento." controltovalidate="TextDataNascimento" font-names="Tahoma" font-size="Smaller" style="LEFT: 334px; POSITION: absolute; TOP: 1710px" display="None"></ASP:RequiredFieldValidator><ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="Informe o nome do sócio." controltovalidate="TextNome" font-names="Tahoma" font-size="Smaller" style="LEFT: 14px; POSITION: absolute; TOP: 1710px" display="None"></ASP:RequiredFieldValidator>
        <ASP:ValidationSummary id="ValidationSummary1" style="LEFT: 518px; POSITION: absolute; TOP: 1710px" runat="server" showmessagebox="True" showsummary="False"></ASP:ValidationSummary>
      </p>
      <p></p>
     </form>
  </body>
</html>
