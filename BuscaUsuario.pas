
unit BuscaUsuario;

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
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnBuscar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    TextPesquisa: System.Web.UI.WebControls.TextBox;
    BtnBuscar: System.Web.UI.WebControls.Button;
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbComListaAltera: FirebirdSql.Data.Firebird.FbCommand;
    BtnCancelar: System.Web.UI.WebControls.Button;
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
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbComListaAltera := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.BtnBuscar.Click, Self.BtnBuscar_Click);
  Include(Self.BtnCancelar.Click, Self.BtnCancelar_Click);
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=C:\www\populando\dados\GESINTRUS.FDB;DataSource=67.15.80.55;Port=3050;' +
  'Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;' +
  'Pooling=True;Packet Size=8192;Server Type=0';
  // 
  // FbComListaAltera
  // 
  Self.FbComListaAltera.CommandText := 'select cod_usua, nome_usuario from U' +
  'SUARIOS where upper(nome_usuario) like ? order by 1';
  Self.FbComListaAltera.Connection := Self.FbConnection1;
  Self.FbComListaAltera.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('U' +
      'SUARIO', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_usuario', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
(*FbConnection1.Open;
  try
    DataGrid1.DataSource:= FbComListaAltera.ExecuteReader;
    DataGrid1.DataBind;
  finally
    FbConnection1.Close;
  end;*)
end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm1.BtnBuscar_Click(sender: System.Object; e: System.EventArgs);
begin
  FbConnection1.Open;
  try
  FbComListaAltera.Parameters[0].Value:= TextPesquisa.Text.ToUpper + '%';
    DataGrid1.DataSource:= FbComListaAltera.ExecuteReader;
    DataGrid1.DataBind;
  finally
    FbConnection1.Close;
  end;
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('CadUsuarios.aspx');
end;

end.

