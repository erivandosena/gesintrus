
unit LocalizaSocios;

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
    procedure BtnNovo_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnBuscar_Click(sender: System.Object; e: System.EventArgs);
    procedure DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
    procedure DataGrid1_ItemDataBound(sender: System.Object; e: System.Web.UI.WebControls.DataGridItemEventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    TextPesquisa: System.Web.UI.WebControls.TextBox;
    BtnBuscar: System.Web.UI.WebControls.Button;
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    BtnCancelar: System.Web.UI.WebControls.Button;
    Label62: System.Web.UI.WebControls.Label;
    Label1: System.Web.UI.WebControls.Label;
    Label64: System.Web.UI.WebControls.Label;
    BtnNovo: System.Web.UI.WebControls.Button;
    FbComListaAltera: FirebirdSql.Data.Firebird.FbCommand;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
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
  Self.FbComListaAltera := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.DataSet1 := System.Data.DataSet.Create;
  (System.ComponentModel.ISupportInitialize(Self.DataSet1)).BeginInit;
  Include(Self.BtnBuscar.Click, Self.BtnBuscar_Click);
  Include(Self.BtnNovo.Click, Self.BtnNovo_Click);
  Include(Self.BtnCancelar.Click, Self.BtnCancelar_Click);
  Include(Self.DataGrid1.PageIndexChanged, Self.DataGrid1_PageIndexChanged);
  Include(Self.DataGrid1.ItemDataBound, Self.DataGrid1_ItemDataBound);
  // 
  // FbComListaAltera
  // 
  Self.FbComListaAltera.CommandText := 'select nome,'#13#10'             dat' +
  'a_nascimento,'#13#10'             pai,'#13#10'             mae,'#13#10'  ' +
  '           endereco,'#13#10'             bairro,'#13#10'             cida' +
  'de,'#13#10'             naturalidade,'#13#10'             cpf,'#13#10'   ' +
  '          rg,'#13#10'             data_entrada,'#13#10'             cod_s' +
  'oci,'#13#10'             matricula,'#13#10'             sexo,'#13#10'    ' +
  '         apelido,'#13#10'             conjuge,'#13#10'             data_n' +
  'asc_conjuge,'#13#10'             numero_filhos,'#13#10'             estad' +
  'o_civil,'#13#10'             grau_instrucao,'#13#10'             cep,'#13 +
  #10'             nacionalidade,'#13#10'             nit,'#13#10'          ' +
  '   telefone,'#13#10'             ctps,'#13#10'             str_socio,'#13 +
  #10'             ficha,'#13#10'             data_saida,'#13#10'           ' +
  '  socio_aposentado,'#13#10'             aposent_contribuinte,'#13#10'    ' +
  '         atividade,'#13#10'             forma_de_atividade,'#13#10'      ' +
  '       regime_de_trabalho,'#13#10'             vizinho_1,'#13#10'        ' +
  '     vizinho_2,'#13#10'             vizinho_3,'#13#10'             vizinh' +
  'o_4,'#13#10'             produto_agricola,'#13#10'             mes_ini_at' +
  'ividade,'#13#10'             area_plantada,'#13#10'             data_edic' +
  'ao,'#13#10'             obs_form_atividade,'#13#10'             doc_ativi' +
  'dades,'#13#10'             obs_doc_atividade,'#13#10'             ponto_r' +
  'eferencia,'#13#10'             nome_patrao,'#13#10'             local_tra' +
  'b,'#13#10'             datas_ini_fim,'#13#10'             obs_prod_cultiv' +
  ','#13#10'             titulo_eleitor,'#13#10'             zona,'#13#10'  ' +
  '           secao,'#13#10'             estado_uf,'#13#10'             nome' +
  '_dependente,'#13#10'             grau_parent_depend,'#13#10'             ' +
  'data_nasc_depend,'#13#10'             foto_socio'#13#10'      from socios' +
  ' where upper(nome) like ? order by 1';
  Self.FbComListaAltera.Connection := Self.FbConnection1;
  Self.FbComListaAltera.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('S' +
      'OCIO', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome', System.Data.DataRowVersion.Current, 
        nil));
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
  Self.FbDataAdapter1.SelectCommand := Self.FbComListaAltera;
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

procedure TWebForm1.DataGrid1_ItemDataBound(sender: System.Object; e: System.Web.UI.WebControls.DataGridItemEventArgs);
begin

end;

procedure TWebForm1.DataGrid1_PageIndexChanged(source: System.Object; e: System.Web.UI.WebControls.DataGridPageChangedEventArgs);
begin
FbComListaAltera.Parameters[0].Value:= TextPesquisa.Text.ToUpper + '%';
DataGrid1.CurrentPageIndex:= e.NewPageIndex;
FbDataAdapter1.Fill(DataSet1);
DataGrid1.DataSource:= DataSet1;
DataGrid1.DataBind;
end;

procedure TWebForm1.BtnBuscar_Click(sender: System.Object; e: System.EventArgs);
begin
 (* FbConnection1.Open;
  try
  FbComListaAltera.Parameters[0].Value:= TextPesquisa.Text.ToUpper + '%';
  DataGrid1.DataSource:= FbComListaAltera.ExecuteReader;
  DataGrid1.DataBind;
  finally
  FbConnection1.Close;
  end; *)
DataGrid1.CurrentPageIndex:= 0;
FbComListaAltera.Parameters[0].Value:= TextPesquisa.Text.ToUpper + '%';
FbDataAdapter1.Fill(DataSet1);
DataGrid1.DataSource:= DataSet1;
DataGrid1.DataBind;
end;

procedure TWebForm1.BtnNovo_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('AlteraSocio.aspx');
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
    Response.Redirect('Default.aspx');
end;

end.

