
unit CarteiraSocio;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls;

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

Label1.Text:= '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1" id="AutoNumber1" height="1"> '+
  '<tr> '+
    '<td width="5" style="border-right-style: none; border-right-width: medium" rowspan="5"> '+
    '<img border="0" src="Imagem\Sistema\linhaPontilhada_vertical_250.gif" width="5" height="250"></td> '+
    '<td width="767" style="border-right-style: none; border-right-width: medium" colspan="5"> '+
    '<img border="0" src="Imagem\Sistema\linhaPontilhada_Horizontal_766.gif" width="766" height="5"></td> '+
    '<td width="5" style="border-right-style: none; border-right-width: medium" rowspan="5"> '+
    '<img border="0" src="Imagem\Sistema\linhaPontilhada_vertical_250.gif" width="5" height="250"></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="11" height="10" style="border-right-style: none; border-right-width: medium"></td> '+
    '<td width="746" style="border-style:none; border-width:medium; " colspan="3"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_horizontais.gif" width="746" height="10"></td> '+
    '<td width="10" height="10" style="border-left-style: none; border-left-width: medium"></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="10"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_verticais.gif" width="10" height="229"></td> '+
    '<td width="359" style="border-style: solid; border-width: 1" height="229" align="center"> '+
    '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="350" id="AutoNumber4" height="210"> '+
      '<tr> '+
        '<td width="300" height="15"> '+
        '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" id="AutoNumber5" width="348" height="23"> '+
          '<tr> '+
            '<td rowspan="2" width="44" height="15"> '+
            '<font face="Arial" size="1">FILIAÇÃO</font><font face="Arial" style="font-size: 6pt">:</font></td> '+
            '<td width="304" height="15"> '+
            '<font face="Arial" style="font-size: 6pt; font-weight:700"> '+
            '</font><font face="Arial" style="font-weight:700" size="1">'+Session['pai'].ToString+'</font></td> '+
          '</tr> '+
          '<tr> '+
            '<td width="304" height="15"> '+
            '<font face="Arial" style="font-size: 6pt; font-weight:700"> '+
            '</font><font face="Arial" style="font-weight:700" size="1">'+Session['mae'].ToString+'</font></td> '+
          '</tr> '+
        '</table> '+
        '</td> '+
      '</tr> '+
      '<tr> '+
        '<td width="300" height="15"> '+
        '<font face="Arial" size="1">ENDEREÇO:<b> '+Session['endereco'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td width="300" height="15"> '+
        '<font face="Arial" size="1">DATA DE NASCIMENTO:<b> '+Session['data_nascimento'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td width="300" height="15"><font face="Arial" style="font-size: 6pt"> '+
        '</font><font face="Arial" size="1"> CARTEIRA PROFISSIONAL/SÉRIE: <b>'+Session['ctps'].ToString+'</b> '+
        '</font></td> '+
        ''+
      '</tr> '+
      '<tr> '+
        '<td width="300" height="15"> '+
        '<font size="1"></font><font face="Arial" size="1">GRAU DE INSTRUÇÃO: <b>'+Session['grau_instrucao'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td width="300" height="15"> '+
        '<font face="Arial" size="1">ATIVIDADE SOCIAL: <b>'+Session['socio_aposentado'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td width="300" height="15"> '+
        '<font face="Arial" size="1">TIPO DE TRABALHO: <b>'+Session['atividade'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td width="300" height="15"> '+
        '<font face="Arial" size="1">DATA DE EXPEDIÇÃO:<b> '+System.DateTime.Now.ToShortDateString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td valign="bottom" height="54"> '+
        '<p align="center"><font face="Arial" style="font-size: 6pt"> '+
        '____________________________________________________</font></td> '+
      '</tr> '+
      '<tr> '+
        '<td valign="top" height="10"> '+
        '<p align="center"><font face="Arial" style="font-size: 6pt">ASSINATURA</font></td> '+
      '</tr> '+
    '</table> '+
    '</td> '+
    '<td width="25" style="border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" height="229"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_meio.gif" width="25" height="229"></td> '+
    '<td width="359" style="border-style: solid; border-width: 1" height="229"> '+
    '<div align="center"> '+
      '<center> '+
      '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="350" id="AutoNumber2" height="68"> '+
        '<tr> '+
          '<td width="350" height="67" colspan="3"> '+
          '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" id="AutoNumber3" width="349" height="69"> '+
            '<tr> '+
              '<td width="114" height="69"> '+
              '<p align="center"> '+
              '<img border="0" src="Imagem\Sistema\cart_logo_sindicato.gif" align="center" width="105" height="70"></td> '+
              '<td width="235" height="69"> '+
              '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
              '<font face="Arial" style="font-size: 9pt; font-weight: 700"> '+
              'SINDICATO DOS TRABALHADORES RURAIS DE '+Session['STR_municipio_str'].ToString+'</font></p> '+
              '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
              '<font face="Arial" style="font-size: 6pt"> '+
              ''+System.String.Format('{0:dd/MM/yyyy}', Session['STR_fundacao'])+'</font></p> '+
              '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
              '<font face="Arial" style="font-size: 6pt"> '+
              'CNPJ:'+Session['STR_cnpj'].ToString+' C.S.:'+Session['STR_cs'].ToString+'</font></p> '+
              '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
              '<font face="Arial" style="font-size: 6pt"> '+
              ''+Session['STR_endereco'].ToString+' '+
              ''+Session['bairro'].ToString+' '+Session['STR_cidade'].ToString+' '+Session['STR_estado_uf'].ToString+'</font></td> '+
            '</tr> '+
          '</table> '+
          '</td> '+
        '</tr> '+
        '<tr> '+
          '<td width="350" height="7" colspan="3"></td> '+
        '</tr> '+
        '<tr> '+
          '<td rowspan="7" width="118" height="1"> '+
          '<p align="center"> '+
          '<img border="0" src="'+Session['foto_socio'].ToString+'" width="112" height="134" align="center"></td> '+
          '<td width="8" height="1" rowspan="7"></td> '+
          '<td width="224" height="1" valign="bottom"><font face="Arial" style="font-size: 6pt"> '+
          '</font><font face="Arial" size="1">MATRÍCULA Nº:<b> '+Session['matricula'].ToString+'</b></font></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="5"></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="1" valign="bottom"><font face="Arial" style="font-size: 6pt"> '+ 
          '</font><font face="Arial" size="1">NOME DO SÓCIO:</font></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="7"> '+
          '<font face="Arial" style="font-size: 6pt; font-weight:700"> '+
          '</font><font face="Arial" style="font-weight:700" size="1">'+Session['nome'].ToString+'</font></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="5"></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="1" valign="bottom"><font face="Arial" style="font-size: 6pt"> '+
          '</font><font face="Arial" size="1">DATA ENTRADA: <b>'+Session['data_entrada'].ToString+'</b></font></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="10"></td> '+
        '</tr> '+
      '</table> '+
      '</center> '+
    '</div> '+
    '</td> '+
    '<td width="10"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_verticais.gif" width="10" height="229"></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="11" height="10" style="border-right-style: none; border-right-width: medium"></td> '+
    '<td width="746" style="border-style:none; border-width:medium; " colspan="3"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_horizontais.gif" width="746" height="10"></td> '+
    '<td width="10" height="10" style="border-left-style: none; border-left-width: medium"></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="767" style="border-right-style: none; border-right-width: medium" colspan="5"> '+
    '<img border="0" src="Imagem\Sistema\linhaPontilhada_Horizontal_766.gif" width="766" height="5"></td> '+
  '</tr> '+
'</table>';

(*Label1.Text:= '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1" id="AutoNumber1" height="1"> '+
  '<tr> '+
    '<td width="5" style="border-right-style: none; border-right-width: medium" rowspan="5"> '+
    '<img border="0" src="Imagem\Sistema\linhaPontilhada_vertical_250.gif" width="5" height="250"></td> '+
    '<td width="767" style="border-right-style: none; border-right-width: medium" colspan="5"> '+
    '<img border="0" src="Imagem\Sistema\linhaPontilhada_Horizontal_766.gif" width="766" height="5"></td> '+
    '<td width="5" style="border-right-style: none; border-right-width: medium" rowspan="5"> '+
    '<img border="0" src="Imagem\Sistema\linhaPontilhada_vertical_250.gif" width="5" height="250"></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="11" height="10" style="border-right-style: none; border-right-width: medium"></td> '+
    '<td width="746" style="border-style:none; border-width:medium; " colspan="3"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_horizontais.gif" width="746" height="10"></td> '+
    '<td width="10" height="10" style="border-left-style: none; border-left-width: medium"></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="10"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_verticais.gif" width="10" height="229"></td> '+
    '<td width="359" style="border-style: solid; border-width: 1" height="229" align="center"> '+
    '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="350" id="AutoNumber4" height="210"> '+
      '<tr> '+
        '<td colspan="2" width="300" height="15"> '+
        '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" id="AutoNumber5" width="348" height="23"> '+
          '<tr> '+
            '<td rowspan="2" width="44" height="15"> '+
            '<font face="Arial" style="font-size: 6pt">FILIAÇÃO:</font></td> '+
            '<td width="304" height="15"> '+
            '<font face="Arial" style="font-size: 6pt; font-weight:700"> '+
            ''+Session['pai'].ToString+'</font></td> '+
          '</tr> '+
          '<tr> '+
            '<td width="304" height="15"> '+
            '<font face="Arial" style="font-size: 6pt; font-weight:700"> '+
            ''+Session['mae'].ToString+'</font></td> '+
          '</tr> '+
        '</table> '+
        '</td> '+
      '</tr> '+
      '<tr> '+
        '<td colspan="2" width="300" height="15"> '+
        '<font face="Arial" style="font-size: 6pt">ENDEREÇO:<b> '+Session['endereco'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td colspan="2" width="300" height="15"> '+
        '<font face="Arial" style="font-size: 6pt">DATA DE NASCIMENTO:<b> '+Session['data_nascimento'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td width="132" height="15"><font face="Arial" style="font-size: 6pt"> '+
        'CARTEIRA PROFISSIONAL/SÉRIE: <b>'+Session['ctps'].ToString+'</b></font></td> '+
        '<td width="168" height="15"><font face="Arial" style="font-size: 6pt"> '+
        '</font></td> '+
      '</tr> '+
      '<tr> '+
        '<td width="300" colspan="2" height="15"> '+
        '<font face="Arial" style="font-size: 6pt">GRAU DE INSTRUÇÃO: <b>'+Session['grau_instrucao'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td colspan="2" width="300" height="15"> '+
        '<font face="Arial" style="font-size: 6pt">ATIVIDADE SOCIAL: <b>'+Session['socio_aposentado'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td colspan="2" width="300" height="15"> '+
        '<font face="Arial" style="font-size: 6pt">TIPO DE TRABALHO: <b>'+Session['atividade'].ToString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td colspan="2" width="300" height="15"> '+
        '<font face="Arial" style="font-size: 6pt">DATA DE EXPEDIÇÃO:<b> '+System.DateTime.Now.ToShortDateString+'</b></font></td> '+
      '</tr> '+
      '<tr> '+
        '<td colspan="2" valign="bottom" height="54"> '+
        '<p align="center"><font face="Arial" style="font-size: 6pt"> '+
        '____________________________________________________</font></td> '+
      '</tr> '+
      '<tr> '+
        '<td colspan="2" valign="top" height="10"> '+
        '<p align="center"><font face="Arial" style="font-size: 6pt">ASSINATURA</font></td> '+
      '</tr> '+
    '</table> '+
    '</td> '+
    '<td width="25" style="border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" height="229"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_meio.gif" width="25" height="229"></td> '+
    '<td width="359" style="border-style: solid; border-width: 1" height="229"> '+
    '<div align="center"> '+
      '<center> '+
      '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="350" id="AutoNumber2" height="68"> '+
        '<tr> '+
          '<td width="350" height="67" colspan="3"> '+
          '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" id="AutoNumber3" width="349" height="69"> '+
            '<tr> '+
              '<td width="114" height="69"> '+
              '<p align="center"> '+
              '<img border="0" src="Imagem\Sistema\cart_logo_sindicato.gif" align="center" width="105" height="70"></td> '+
              '<td width="235" height="69"> '+
              '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
              '<font face="Arial" style="font-size: 9pt; font-weight: 700"> '+
              'SINDICATO DOS TRABALHADORES RURAIS DE '+Session['STR_municipio_str'].ToString+'</font></p> '+
              '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
              '<font face="Arial" style="font-size: 6pt"> '+
              ''+System.String.Format('{0:dd/MM/yyyy}', Session['STR_fundacao'])+'</font></p> '+
              '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
              '<font face="Arial" style="font-size: 6pt"> '+
              'CNPJ:'+Session['STR_cnpj'].ToString+' C.S.:'+Session['STR_cs'].ToString+'</font></p> '+
              '<p style="margin-top: 0; margin-bottom: 0" align="center"> '+
              '<font face="Arial" style="font-size: 6pt"> '+
              ''+Session['STR_endereco'].ToString+' '+
              ''+Session['bairro'].ToString+' '+Session['STR_cidade'].ToString+' '+Session['STR_estado_uf'].ToString+'</font></td> '+
            '</tr> '+
          '</table> '+
          '</td> '+
        '</tr> '+
        '<tr> '+
          '<td width="350" height="7" colspan="3"></td> '+
        '</tr> '+
        '<tr> '+
          '<td rowspan="7" width="118" height="1"> '+
          '<p align="center"> '+
          '<img border="0" src="'+Session['foto_socio'].ToString+'" width="112" height="134" align="center"></td> '+
          '<td width="8" height="1" rowspan="7"></td> '+
          '<td width="224" height="1" valign="bottom"><font face="Arial" style="font-size: 6pt"> '+
          'MATRÍCULA Nº:<b> '+Session['matricula'].ToString+'</b></font></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="5"></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="1" valign="bottom"><font face="Arial" style="font-size: 6pt"> '+
          'NOME DO SÓCIO:</font></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="7"> '+
          '<font face="Arial" style="font-size: 6pt; font-weight:700"> '+
          ''+Session['nome'].ToString+'</font></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="5"></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="1" valign="bottom"><font face="Arial" style="font-size: 6pt"> '+
          'DATA ENTRADA: <b>'+Session['data_entrada'].ToString+'</b></font></td> '+
        '</tr> '+
        '<tr> '+
          '<td width="224" height="10"></td> '+
        '</tr> '+
      '</table> '+
      '</center> '+
    '</div> '+
    '</td> '+
    '<td width="10"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_verticais.gif" width="10" height="229"></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="11" height="10" style="border-right-style: none; border-right-width: medium"></td> '+
    '<td width="746" style="border-style:none; border-width:medium; " colspan="3"> '+
    '<p align="center"><img border="0" src="Imagem\Sistema\cart_horizontais.gif" width="746" height="10"></td> '+
    '<td width="10" height="10" style="border-left-style: none; border-left-width: medium"></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="767" style="border-right-style: none; border-right-width: medium" colspan="5"> '+
    '<img border="0" src="Imagem\Sistema\linhaPontilhada_Horizontal_766.gif" width="766" height="5"></td> '+
  '</tr> '+
'</table>'; *)
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

