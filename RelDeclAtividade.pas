
unit RelDeclAtividade;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, SysUtils;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    Label2: System.Web.UI.WebControls.Label;
    Label3: System.Web.UI.WebControls.Label;
    Label4: System.Web.UI.WebControls.Label;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.InitializeComponent;
begin
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
Label1.Text:= '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="549" id="AutoNumber1"> '+
  '<tr> <td colspan="4" width="549"> '+
       '<p align="center"><font face="Arial" size="4">DECLARAÇÃO DE EXERCÍCIO DE '+
       'ATIVIDADE RURAL</font></td> </tr> <tr> <td colspan="4" width="549">&nbsp;</td> </tr> <tr> '+
    '<td colspan="4" width="549"><b><font face="Arial" size="2">I - DADOS DO '+
    'SEGURADO</font></b></td> '+
  '</tr> '+
  '<tr> <td colspan="4" width="549"> '+
    '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="549" id="AutoNumber2"> '+
      '<tr> '+
        '<td colspan="2"><font face="Arial" size="1">1-Nome: '+Session['nome'].ToString+'</font></td> '+
        '<td><font face="Arial" size="1">2-Apelido: '+ ''+Session['apelido'].ToString+'</font></td> '+
      '</tr> '+
      '<tr> '+
        '<td><font face="Arial" size="1">3-Data  Nascimento: '+Session['data_nascimento'].ToString+'</font></td> '+
        '<td><font face="Arial" size="1">4-RG: '+Session['rg'].ToString+'</font></td> '+
        '<td><font face="Arial" size="1">5-CPF: '+Session['cpf'].ToString+'</font></td> '+
      '</tr> '+
      '<tr> '+
        '<td><font face="Arial" size="1">6-Estado Civil: '+Session['estado_civil'].ToString+'</font></td> '+
        '<td colspan="2"><font face="Arial" size="1">7-Endereço: '+Session['endereco'].ToString+'</font></td> '+
      '</tr> '+
      '<tr> <td><font face="Arial" size="1">8-Bairro: '+Session['bairro'].ToString+'</font></td> <td><font face="Arial" size="1"> '+
        '9-Município: '+Session['cidade'].ToString+'</font></td> <td><font face="Arial" size="1"> '+
        '10-Estado/UF: '+Session['estado_uf'].ToString+'</font></td> </tr> <tr> '+
        '<td colspan="3"><font face="Arial" size="1">11-Ponto de Referência: '+
       ''+Session['ponto_referencia'].ToString+'</font></td> '+
      '</tr> '+
      '<tr> '+
      '</tr> '+
      '<tr> '+
      '</tr> '+
      '<tr> '+
      '</tr> '+
      '<tr> '+
      '</tr> '+
    '</table> </td> </tr> <tr> <td colspan="4" height="1"> <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="549" id="AutoNumber3"> <tr> '+
        '<td rowspan="2" width="145"><font face="Arial" size="1">12-Confrontantes '+
    'ou Vizinhos:</font></td> '+
        '<td width="404"><font face="Arial" size="1">'+Session['vizinho_1'].ToString+',&nbsp; '+Session['vizinho_2'].ToString+'</font></td> '+
      '</tr> '+
      '<tr> '+
        '<td width="404"><font face="Arial" size="1">'+Session['vizinho_3'].ToString+',&nbsp; '+
        ''+Session['vizinho_4'].ToString+'</font></td> '+
      '</tr> '+
    '<tr> <td width="549" colspan="2"><font face="Arial" size="1">13-Data da Filiação: '+
    ''+Session['data_entrada'].ToString+'</font></td> </tr> </table> </td> </tr> <tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549"><b><font face="Arial" size="2">II - DADOS DA '+
    'PROPRIEDADE EM QUE FOI EXERCIDA A ATIVIDADE RURAL:</font></b></td> '+
  '</tr> '+
  '<tr> '+
    '<td style="border-style: solid; border-width: 1" align="center"> <font face="Arial" size="2">Nome do Proprietário</font></td> '+
    '<td style="border-style: solid; border-width: 1" align="center"> <font face="Arial" size="2">Endereço</font></td> '+
    '<td style="border-style: solid; border-width: 1" align="center"> <font face="Arial" size="2">Período</font></td> '+
    '<td style="border-style: solid; border-width: 1" align="center"> <font face="Arial" size="2">Cat. do Trab. Rural</font></td> '+
  '</tr> '+
  '<tr> '+
   '<td style="border-style: solid; border-width: 1" align="left" width="100%"> '+
    '<font face="Arial" size="1">'+Session['nome_patrao'].ToString+'</font></td> '+
    '<td style="border-style: solid; border-width: 1" align="left" width="100%"> '+
    '<font face="Arial" size="1">'+Session['local_trab'].ToString+'</font></td> '+
    '<td style="border-style: solid; border-width: 1" align="left" width="100%"><p align="center"><font face="Arial" size="1">'+Session['datas_ini_fim'].ToString+'</font></td> '+
    '<td style="border-style: solid; border-width: 1" align="left" width="100%"><p align="center"><font face="Arial" size="1">'+Session['atividade'].ToString+'</font></td> '+
  '</tr> '+
  '<tr> '+
   '<td style="border-top-style: solid; border-top-width: 1" width="194">&nbsp;</td> '+
    '<td style="border-top-style: solid; border-top-width: 1" width="284">&nbsp;</td> '+
    '<td style="border-top-style: solid; border-top-width: 1" width="59">&nbsp;</td> '+
    '<td style="border-top-style: solid; border-top-width: 1" width="114">&nbsp;</td> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549"> '+
    '<p align="justify"><b><font face="Arial" size="2">III - INFORMAR '+
    'A(S) ATIVIDADE(S) DESENVOLVIDA(S) PELO SEGURADO E DESCREVER CLARA E '+
    'OBJETIVAMENTE A FORMA EM QUE ESSA ATIVIDADE É OU FOI EXERCIDA, DISCRIMINANDO '+
    'OS PERÍODOS, SE FOI EXERCIDA EM PARTE OU EM TODA A SAFRA:</font></b></td> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549"> '+
    '<p align="justify"><font face="Arial" size="1">O(A) AGRICULTOR(A), TRABALHA '+
    'EM UMA ÁREA DE '+Session['area_plantada'].ToString+', EXERCENDO '+
    'SUA ATIVIDADE EM, '+Session['regime_de_trabalho'].ToString+', EM '+Session['mes_ini_atividade'].ToString+' '+ 
    'PREPARA A TERRA E DEPOIS&nbsp; QUANDO CHEGA A CHUVA COMEÇA O PLANTIO.</font></td> '+
  '</tr> '+
  '<tr> '+
   '<td colspan="4" width="549">&nbsp;</td> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549"> '+
    '<p align="justify"><b><font face="Arial" size="2">IV - DESCREVER '+
    'QUAIS OS PRODUTOS CULTIVADOS, EXTRAÍDOS OU CAPTURADOS PELO SEGURADO, BEM '+
    'COMO, OS FINS A QUE SE DESTINA:</font></b></td> '+
  '</tr> '+
  '<tr> <td colspan="4" width="549"><font face="Arial" size="1">O(A) '+
    'AGRICULTOR(A) '+ 'CULTIVA '+Session['produto_agricola'].ToString+'.</font></td> </tr> <tr> <td colspan="4" width="549"><font face="Arial" size="1"> '+
    ''+Session['obs_prod_cultiv'].ToString+'</font></td> </tr> <tr> <td colspan="4" width="549">&nbsp;</td> </tr> <tr> '+
    '<td colspan="4" width="549"><b><font face="Arial" size="2">V - DOCUMENTO EM '+
    'QUE SE BASEOU PARA EMITIR A DECLARAÇÃO:</font></b></td>'+
  '</tr> '+
  '<tr> <td colspan="4" width="549"><font face="Arial" size="1">'+Session['doc_atividades'].ToString+'</font></td></tr> <tr> '+
    '<td colspan="4" width="549"><font face="Arial" size="1">'+Session['obs_doc_atividade'].ToString+'</font></td> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549">&nbsp;</td> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549"><b><font face="Arial" size="2">VI - '+
    'DADOS DA AUTORIDADE:</font></b></td> '+
  '</tr> '+
  '<tr> <td colspan="4" width="549"> '+
    '<p align="justify"><font face="Arial" size="1">EU, '+Session['STR_presidente'].ToString+',  '+
    'PORTADOR DO RG Nº '+Session['STR_rg'].ToString+' '+Session['STR_orgao_expedidor'].ToString+' '+
    ''+Session['STR_orgao_expedidor_uf'].ToString+', E DO CPF Nº '+Session['STR_cpf'].ToString+',  '+
    ''+Session['STR_estado_civil'].ToString+', '+Session['STR_profissao'].ToString+', DECLARO '+
    'QUE AS INFORMAÇÕES  PRESTADAS SÃO  VERDADEIRAS, CIENTE DA SANSÃO '+
    'PREVISTA NO ART. 171 E/OU NO ART. 299 DO CÓDIGO  PENAL BRASILEIRO.</font></td> </tr> <tr> '+
    '<td colspan="4" width="549">&nbsp;</td> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549"><b><font face="Arial" size="2">VII - CIÊNCIA DO '+
    'SEGURADO:</font></b></td> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549"> '+
    '<p align="justify"><font face="Arial" size="1">EU, '+Session['nome'].ToString+', '+
    'ACIMA QUALIFICADO(A), DECLARO ESTAR CIENTE DAS INFORMAÇÕES CONSTANTES DESTA '+
    'DECLARAÇÃO E QUE ELAS AS SÃO VERDADEIRAS.</font></td> '+
  '</tr> '+
  '<tr>  '+
    '<td colspan="4" width="549">  &nbsp;</td> '+
  '</tr> '+
  '<tr> '+
    '<td colspan="4" width="549">&nbsp;</td> '+
  '</tr> '+
'</table>';

    Label2.Text:= Session['STR_cidade'].ToString+', '+ FormatDateTime('dd "de" MMMM "de" yyyy',StrTodate(System.DateTime.Now.ToShortDateString));

if  Session['SocioAssina'].ToString = 'False' then
begin
Label4.Visible:= False;
Label3.Visible:= True;
 Label3.Text:= '<p align="center" style="margin-top: 0; margin-bottom: 0">_____________________________</p><p align="center" style="margin-top: 0; margin-bottom: 0"><font face="Arial" size="1">Coordenador Geral do STR ou Representante Legal</font>';
exit;
end else
Label4.Visible:= True;
Label3.Visible:= False;
 Label4.Text:= '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="549" id="AutoNumber1"> '+
  '<tr> '+
    '<td align="center" width="305"> '+
'<p align="center" style="margin-top: 0; margin-bottom: 0">_____________________________</p><p align="center" style="margin-top: 0; margin-bottom: 0"> '+
'<font face="Arial" size="1">Agricultor Rural</font> '+
    '</td> '+
    '<td width="54" align="center"> '+
    '<p align="center">&nbsp;</td> '+
    '<td width="305" align="center"> '+
'<p align="center" style="margin-top: 0; margin-bottom: 0">_____________________________</p><p align="center" style="margin-top: 0; margin-bottom: 0"><font face="Arial" size="1">Coordenador Geral do STR ou Representante Legal</font> '+
    '</td> '+
  '</tr> '+
'</table>';
end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

end.

