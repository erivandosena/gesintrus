
unit RelTransfSocio;

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
    Label1.Text:= '<p align="justify"><font face="Arial">Do S.T.R. de '+Session['str_socio'].ToString+' - '+Session['estado_uf'].ToString+'<br> '+
'Ao S.T.R. de '+Session['str_Destino_cidade'].ToString+' - '+Session['str_Destino_estado'].ToString+'-'+Session['str_Destino_uf'].ToString+'<br> '+
'<br> '+
'<br> '+
'<br> '+
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Por motivo do(a) mesmo(a) não mais residir neste '+
'município, estamos transferindo o(a) sócio(a) '+Session['nome'].ToString+', nascido(a) em '+Session['data_nascimento'].ToString+', '+
'portador(a) do CPF Nº '+Session['cpf'].ToString+' e RG Nº '+Session['rg'].ToString+', o(a) mesmo(a) esteve regularmente '+
'associado(a) neste Sindicato sob inscrição de matrícula Nº '+Session['ficha'].ToString+', com entrada '+
'em '+Session['data_entrada'].ToString+', estando em dias com suas obrigações sindicais até a '+
'competência '+System.DateTime.Now.ToShortDateString+'.<br> '+
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nada mais constando, passo a presente '+
'transferência que vai assinada pelo Presidente deste Sindicato dos Trabalhadores '+
'Rurais ou por seu representante legal.</font></p>';

    Label2.Text:= Session['STR_cidade'].ToString+', '+ FormatDateTime('dd "de" MMMM "de" yyyy',StrTodate(System.DateTime.Now.ToShortDateString));

    Label3.Text:= '<p align="center" style="margin-top: 0; margin-bottom: 0">___________________________________</p><p align="center" style="margin-top: 0; margin-bottom: 0"><font face="Arial" size="1">Coordenador Geral do STR ou Representante Legal</font>';
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

