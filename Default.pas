
unit Default;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  FirebirdSql.Data.Firebird;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure TWebForm1_Unload(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Image1: System.Web.UI.WebControls.Image;
    Label1: System.Web.UI.WebControls.Label;
    Label2: System.Web.UI.WebControls.Label;
    FbComTimble: FirebirdSql.Data.Firebird.FbCommand;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    Label3: System.Web.UI.WebControls.Label;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
    function GetSaudacao: string;
  end;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
function TWebForm1.GetSaudacao: string;

begin
  result := 'Bom Dia! Hoje é {0}!';
  if System.DateTime.Now.Hour > 12 then
    result :=  'Boa Tarde! Hoje é {0}';
  if System.DateTime.Now.Hour > 18 then
    result := 'Boa Noite! Hoje é {0}';
end;

procedure TWebForm1.TWebForm1_Unload(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TWebForm1.InitializeComponent;
begin
  Self.FbComTimble := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  // 
  // FbComTimble
  // 
  Self.FbComTimble.CommandText := 'select cod_sind,'#13#10'    municipio_str' +
  ','#13#10'    fundacao,'#13#10'    cs,'#13#10'    cnpj,'#13#10'    enderec' +
  'o,'#13#10'    bairro,'#13#10'    cep,'#13#10'    cidade,'#13#10'    presi' +
  'dente,'#13#10'    data_nascimento,'#13#10'    cpf,'#13#10'    rg,'#13#10' ' +
  '   naturalidade,'#13#10'    nacionalidade,'#13#10'    sexo,'#13#10'    pr' +
  'ofissao,'#13#10'    estado_civil,'#13#10'    telefone,'#13#10'    filiaco' +
  'es,'#13#10'    estado_uf,'#13#10'    texto_adicional,'#13#10'    endereco' +
  '_presid,'#13#10'    bairro_presid,'#13#10'    cidade_presid,'#13#10'    e' +
  'stado_uf_presid,'#13#10'    orgao_expedidor,'#13#10'    orgao_expedidor_u' +
  'f,'#13#10'    data_expedicao,'#13#10'    valor_mens_socio,'#13#10'    val' +
  'or_cart_socio'#13#10'      from sindicato where  cod_sind =  cod_sind';
  Self.FbComTimble.Connection := Self.FbConnection1;
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=C:\www\populando\dados\GESINTRUS.FDB;DataSource=67.15.80.55;Port=3050;' +
  'Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;' +
  'Pooling=True;Packet Size=8192;Server Type=0';
  Include(Self.Unload, Self.TWebForm1_Unload);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
var
dr: FbDataReader;
begin
  // TODO: Put user code to initialize the page here
     if not IsPostBack then
     Label1.Text:= 'Hoje é: '+System.DateTime.Now.ToLongDateString;
  FbConnection1.Open;
  try
    dr:= FbComTimble.ExecuteReader;
    if dr.Read() then
    begin
             Session['STR_municipio_str']:= dr['municipio_str'].ToString;
             Session['STR_fundacao']:= dr['fundacao'].ToString;
             Session['STR_cs']:= dr['cs'].ToString;
             Session['STR_cnpj']:= dr['cnpj'].ToString;
             Session['STR_endereco']:= dr['endereco'].ToString;
             Session['STR_bairro']:= dr['bairro'].ToString;
             Session['STR_cep']:= dr['cep'].ToString;
             Session['STR_cidade']:= dr['cidade'].ToString;
             Session['STR_presidente']:= dr['presidente'].ToString;
             Session['STR_data_nascimento']:= System.String.Format('{0:dd/MM/yyyy}', dr['data_nascimento']);
             Session['STR_cpf']:= dr['cpf'].ToString;
             Session['STR_rg']:= dr['rg'].ToString;
             Session['STR_nacionalidade']:= dr['nacionalidade'].ToString;
             Session['STR_naturalidade']:= dr['naturalidade'].ToString;
             Session['STR_sexo']:= dr['sexo'].ToString;
             Session['STR_profissao']:= dr['profissao'].ToString;
             Session['STR_estado_civil']:= dr['estado_civil'].ToString;
             Session['STR_telefone']:= dr['telefone'].ToString;
             Session['STR_filiacoes']:= dr['filiacoes'].ToString;
             Session['STR_estado_uf']:= dr['estado_uf'].ToString;
             Session['STR_texto_adicional']:= dr['texto_adicional'].ToString;
             Session['STR_endereco_presid']:= dr['endereco_presid'].ToString;
             Session['STR_cidade_presid']:= dr['cidade_presid'].ToString;
             Session['STR_estado_uf_presid']:= dr['estado_uf_presid'].ToString;
             Session['STR_orgao_expedidor']:= dr['orgao_expedidor'].ToString;
             Session['STR_orgao_expedidor_uf']:= dr['orgao_expedidor_uf'].ToString;
             Session['STR_data_expedicao']:= System.String.Format('{0:dd/MM/yyyy}', dr['data_expedicao']);
             Session['STR_valor_mens_socio']:= dr['valor_mens_socio'].ToString;
             Session['STR_valor_cart_socio']:= dr['valor_cart_socio'].ToString;
    Label2.Text:= 'SINDICATO DOS TRABALHADORES RURAIS DE '+Session['STR_municipio_str'].ToString;
    Label3.Text:= Session['STR_fundacao'].ToString;
    end;
  finally
    FbConnection1.Close;
  end;
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

