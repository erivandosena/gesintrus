
unit AniverDia;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  FirebirdSql.Data.Firebird, System.Globalization, SysUtils;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
    procedure BtnVisualizar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    BtnVisualizar: System.Web.UI.WebControls.Button;
    BtnCancelar: System.Web.UI.WebControls.Button;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbComListaDia: FirebirdSql.Data.Firebird.FbCommand;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    DataSet1: System.Data.DataSet;
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
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbComListaDia := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  Include(Self.DataGrid1.PageIndexChanged, Self.DataGrid1_PageIndexChanged);
  Include(Self.BtnVisualizar.Click, Self.BtnVisualizar_Click);
  Include(Self.BtnCancelar.Click, Self.BtnCancelar_Click);
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
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=C:\www\populando\dados\GESINTRUS.FDB;DataSource=67.15.80.55;Port=3050;' +
  'Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;' +
  'Pooling=True;Packet Size=8192;Server Type=0';
  // 
  // DataSet1
  // 
  Self.DataSet1.DataSetName := 'NewDataSet';
  Self.DataSet1.Locale := System.Globalization.CultureInfo.Create('pt-BR');
  Include(Self.Load, Self.Page_Load);
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).EndInit;
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
Label1.Text:= System.DateTime.Now.ToLongDateString;
if not IsPostBack then
DataGrid1.CurrentPageIndex:= 0;
FbComListaDia.Parameters['@Dia'].Value:= FormatDateTime('dd',StrTodate(System.DateTime.Now.ToShortDateString));
FbComListaDia.Parameters['@Mes'].Value:= FormatDateTime('mm',StrTodate(System.DateTime.Now.ToShortDateString));
FbDataAdapter1.Fill(DataSet1);
DataGrid1.DataSource:= DataSet1;
DataGrid1.DataBind;
Session['AnivDia']:= FormatDateTime('dd',StrTodate(System.DateTime.Now.ToShortDateString));
Session['AnivMes']:= FormatDateTime('mm',StrTodate(System.DateTime.Now.ToShortDateString));
end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm1.BtnVisualizar_Click(sender: System.Object; e: System.EventArgs);
begin
    Response.Redirect('RelAniverDia.aspx');
end;

procedure TWebForm1.DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
begin
FbComListaDia.Parameters['@Dia'].Value:= FormatDateTime('dd',StrTodate(System.DateTime.Now.ToShortDateString));
FbComListaDia.Parameters['@Mes'].Value:= FormatDateTime('mm',StrTodate(System.DateTime.Now.ToShortDateString));
  DataGrid1.CurrentPageIndex:= e.NewPageIndex;
  FbDataAdapter1.Fill(DataSet1);
  DataGrid1.DataSource:= DataSet1;
  DataGrid1.DataBind;
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
      Response.Redirect('Default.aspx');
end;

end.

