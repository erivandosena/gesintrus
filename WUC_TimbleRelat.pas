unit WUC_TimbleRelat;

interface

uses System.Data, System.Drawing, System.Web, System.Web.UI,
     System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird;
     
type
    /// <summary>
    /// Summary description for WebUserControl1.
    /// </summary>
  TWebUserControl1 = class(System.Web.UI.UserControl)
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
    Label6: System.Web.UI.WebControls.Label;
    Label7: System.Web.UI.WebControls.Label;
    Label8: System.Web.UI.WebControls.Label;
    Label9: System.Web.UI.WebControls.Label;
    Label10: System.Web.UI.WebControls.Label;
    Label11: System.Web.UI.WebControls.Label;
    Label12: System.Web.UI.WebControls.Label;
    Image1: System.Web.UI.WebControls.Image;
    Label4: System.Web.UI.WebControls.Label;
    Label5: System.Web.UI.WebControls.Label;
    procedure OnInit(e: System.EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

implementation

procedure TWebUserControl1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
if not IsPostBack then
    begin
    Label1.Text:= 'SINDICATO DOS TRABALHADORES RURAIS DE '+ Session['STR_municipio_str'].ToString;
    Label4.Text:= 'Carta Sindical Nº'+Session['STR_cs'].ToString;
    Label5.Text:= 'CNPJ Nº'+Session['STR_cnpj'].ToString;
    Label7.Text:= Session['STR_endereco'].ToString;
    Label8.Text:= Session['STR_bairro'].ToString;
    Label9.Text:= 'CEP:'+Session['STR_cep'].ToString;
    Label10.Text:= Session['STR_cidade'].ToString;
    Label6.Text:= 'Telefone/Fax:'+Session['STR_telefone'].ToString;
    Label12.Text:= Session['STR_filiacoes'].ToString;
    Label11.Text:= Session['STR_estado_uf'].ToString;
    Label3.Text:= Session['STR_texto_adicional'].ToString;
    end;
end;

procedure TWebUserControl1.OnInit(e: System.EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebUserControl1.InitializeComponent;
begin
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}


end.
