
unit RelAniverDia;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, System.Globalization;

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
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    Label2: System.Web.UI.WebControls.Label;
    DataSet1: System.Data.DataSet;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbComListaDia: FirebirdSql.Data.Firebird.FbCommand;
    FbComQuant: FirebirdSql.Data.Firebird.FbCommand;
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
  Self.DataSet1 := System.Data.DataSet.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbComListaDia := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbComQuant := FirebirdSql.Data.Firebird.FbCommand.Create;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  // 
  // DataSet1
  // 
  Self.DataSet1.DataSetName := 'NewDataSet';
  Self.DataSet1.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=C:\www\populando\dados\GESINTRUS.FDB;DataSource=67.15.80.55;Port=3050;' +
  'Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;' +
  'Pooling=True;Packet Size=8192;Server Type=0';
  // 
  // FbDataAdapter1
  // 
  Self.FbDataAdapter1.SelectCommand := Self.FbComListaDia;
  // 
  // FbComListaDia
  // 
  Self.FbComListaDia.CommandText := 'select COD_SOCI, NOME, DATA_NASCIMENTO,' +
  ' ENDERECO, MATRICULA, FICHA from SOCIOS where EXTRACT(DAY FROM DATA_NASCI' +
  'MENTO) = @Dia and EXTRACT(MONTH FROM DATA_NASCIMENTO) = @Mes '#13#10'Orde' +
  'r By NOME';
  Self.FbComListaDia.Connection := Self.FbConnection1;
  Self.FbComListaDia.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'Dia', FirebirdSql.Data.Firebird.FbDbType.Integer));
  Self.FbComListaDia.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'Mes', FirebirdSql.Data.Firebird.FbDbType.Integer));
  // 
  // FbComQuant
  // 
  Self.FbComQuant.CommandText := 'select count(DATA_NASCIMENTO) as Quantidad' +
  'e from SOCIOS where EXTRACT(DAY FROM DATA_NASCIMENTO) = @Dia and EXTRACT(' +
  'MONTH FROM DATA_NASCIMENTO) = @Mes';
  Self.FbComQuant.Connection := Self.FbConnection1;
  Self.FbComQuant.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'Dia', FirebirdSql.Data.Firebird.FbDbType.Integer));
  Self.FbComQuant.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'Mes', FirebirdSql.Data.Firebird.FbDbType.Integer));
  Include(Self.Load, Self.Page_Load);
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).EndInit;
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
var
dr: FbDataReader;
begin
  // TODO: Put user code to initialize the page here
Label1.Text:= 'Aniversariantes de hoje: <span style="text-transform: uppercase">'+System.String.Format('{0:dd/MMMM/yyyy}', System.DateTime.Now.ToLongDateString)+'</span>';
FbComListaDia.Parameters['@Dia'].Value:= Session['AnivDia'];
FbComListaDia.Parameters['@Mes'].Value:= Session['AnivMes'];
FbDataAdapter1.Fill(DataSet1);
DataGrid1.DataSource:= DataSet1;
DataGrid1.DataBind;
// Lêr quantidades
 FbConnection1.Open;
  try
    FbComQuant.Parameters['@Dia'].Value:= Session['AnivDia'];
    FbComQuant.Parameters['@Mes'].Value:= Session['AnivMes'];
    dr:= FbComQuant.ExecuteReader;
    if dr.Read() then
    begin
    Label2.Text:= 'Quantidade de registros: ' +dr['quantidade'].ToString;
    end else
    Label2.Text:= 'Quantidade de registros: 0';
  finally
    FbConnection1.Close;
  end;
// Lêr quantidades
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

