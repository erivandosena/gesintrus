
unit AniverMes;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  FirebirdSql.Data.Firebird, System.Globalization, SysUtils, System.Text;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure DropDownList1_SelectedIndexChanged(sender: System.Object; e: System.EventArgs);
    procedure DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
    procedure BtnVisualizar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    DropDownList1: System.Web.UI.WebControls.DropDownList;
    BtnCancelar: System.Web.UI.WebControls.Button;
    BtnVisualizar: System.Web.UI.WebControls.Button;
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbComListaMes: FirebirdSql.Data.Firebird.FbCommand;
    DataSet1: System.Data.DataSet;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

  var
  script: StringBuilder;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.InitializeComponent;
begin
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbComListaMes := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  Include(Self.DropDownList1.SelectedIndexChanged, Self.DropDownList1_SelectedIndexChanged);
  Include(Self.DataGrid1.PageIndexChanged, Self.DataGrid1_PageIndexChanged);
  Include(Self.BtnVisualizar.Click, Self.BtnVisualizar_Click);
  Include(Self.BtnCancelar.Click, Self.BtnCancelar_Click);
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
  Self.FbDataAdapter1.SelectCommand := Self.FbComListaMes;
  // 
  // FbComListaMes
  // 
  Self.FbComListaMes.CommandText := 'select COD_SOCI, NOME, DATA_NASCIMENTO,' +
  ' ENDERECO, MATRICULA, FICHA from SOCIOS '#13#10'where extract(month from ' +
  'DATA_NASCIMENTO) = ? '#13#10'Order By NOME';
  Self.FbComListaMes.Connection := Self.FbConnection1;
  Self.FbComListaMes.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('M' +
      'ES', FirebirdSql.Data.Firebird.FbDbType.Integer));
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
    Response.Redirect('RelAniverMes.aspx');
end;

procedure TWebForm1.DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
begin
  FbComListaMes.Parameters[0].Value:= DropDownList1.SelectedValue;
  DataGrid1.CurrentPageIndex:= e.NewPageIndex;
  FbDataAdapter1.Fill(DataSet1);
  DataGrid1.DataSource:= DataSet1;
  DataGrid1.DataBind;
end;

procedure TWebForm1.DropDownList1_SelectedIndexChanged(sender: System.Object;
  e: System.EventArgs);
begin
DataGrid1.CurrentPageIndex:= 0;
FbComListaMes.Parameters[0].Value:= DropDownList1.SelectedValue;
FbDataAdapter1.Fill(DataSet1);
DataGrid1.DataSource:= DataSet1;
DataGrid1.DataBind;
Session['AniverMes']:= DropDownList1.SelectedValue;
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
    Response.Redirect('Default.aspx');
end;

end.

