
unit RelDeclEnergia;

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
  Label1.Text:= '<font face="Arial">'+
    '<p align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Declaro para os devidos '+
    'fins de provas junto à Companhia Energética do Ceará - COELCE, que o(a) '+
    'Sr.(a) '+Session['nome'].ToString+', '+Session['nacionalidade'].ToString+', '+Session['estado_civil'].ToString+', portador(a) do CPF Nº '+Session['cpf'].ToString+' '+
    'e RG Nº '+Session['rg'].ToString+', atualmente é mesmo(a) agricultor(a), residente no(a) '+Session['endereco'].ToString+','+
    ' '+Session['bairro'].ToString+', na cidade de '+Session['cidade'].ToString+' estado do '+Session['estado_uf'].ToString+', tendo sua inscrição'+
    'de Nº '+Session['ficha'].ToString+' nesta entidade, onde o(a) mesmo(a) se encontra em dias com'+
    'suas obrigações sindicais.</p>'+
    '<p align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Assumo a inteira'+
    'responsabilidade por tudo que foi acima declarado. Ciente das penalidades da'+
    'lei no que se refere o Artigo 299 do Código Penal Brasileiro.</p>'+
    '</font> ';

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

