
unit FotoSocio;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, ControleMessageBox, System.IO;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure Button3_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnExcluir_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    DataGrid1: System.Web.UI.WebControls.DataGrid;
    file1: System.Web.UI.HtmlControls.HtmlInputFile;
    Button3: System.Web.UI.WebControls.Button;
    FbComImagem: FirebirdSql.Data.Firebird.FbCommand;
    FbConnection: FirebirdSql.Data.Firebird.FbConnection;
    FbComSeleciona: FirebirdSql.Data.Firebird.FbCommand;
    MessageBox1: ControleMessageBox.MessageBox;
    BtnRetornar: System.Web.UI.WebControls.Button;
    BtnExcluir: System.Web.UI.WebControls.Button;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
    procedure Select;
  end;

  var
  AFile, Extensao: String;
  Tamanho, Permitido: Double;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.InitializeComponent;
begin
  Self.FbComImagem := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbComSeleciona := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.Button3.Click, Self.Button3_Click);
  Include(Self.BtnExcluir.Click, Self.BtnExcluir_Click);
  Include(Self.BtnRetornar.Click, Self.BtnCancelar_Click);
  // 
  // FbComImagem
  // 
  Self.FbComImagem.CommandText := 'update SOCIOS set foto_socio = ? where ( ' +
  'cod_soci = ? )';
  Self.FbComImagem.Connection := Self.FbConnection;
  Self.FbComImagem.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('F' +
      'OTO', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'foto_socio', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbComImagem.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'ODIGO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'cod_soci', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbConnection
  // 
  Self.FbConnection.ConnectionString := 'User=SYSDBA;Password=master;Databas' +
  'e=C:\www\populando\dados\GESINTRUS.FDB;DataSource=67.15.80.55;Port=3050;D' +
  'ialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;P' +
  'ooling=True;Packet Size=8192;Server Type=0';
  // 
  // FbComSeleciona
  // 
  Self.FbComSeleciona.CommandText := 'select nome, foto_socio from socios wh' +
  'ere cod_soci = ?';
  Self.FbComSeleciona.Connection := Self.FbConnection;
  Self.FbComSeleciona.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'ODIGO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'cod_soci', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
Session['FotoCod']:= Request.QueryString['cod_soci'];
    if not IsPostBack then
  begin
    if Request.QueryString['cod_soci'].ToString <> nil then
    Select;
  end;
end;

procedure TWebForm1.Select;
begin
   FbConnection.Open;
  try try
    FbComSeleciona.Parameters[0].Value := Request.QueryString['cod_soci'];
    DataGrid1.DataSource:= FbComSeleciona.ExecuteReader;
    DataGrid1.DataBind;
  finally
    FbConnection.Close;
  end;
  except
  MessageBox1.ShowMessage('Erro ao executar a operação de leitura.');
  end;
end;

procedure TWebForm1.BtnExcluir_Click(sender: System.Object; e: System.EventArgs);
var
Arq: String;
begin
Arq:= Server.MapPath('Imagem\Fotos\'+Session['FotoCod'].ToString+Extensao);
if System.IO.&File.Exists(Arq) then
System.IO.&File.Delete(Arq);
FbConnection.Open;
  try try
  with FbComImagem do
  begin
  Parameters[1].Value:= Session['FotoCod'];
  Parameters[0].IsNullable;
  ExecuteNonQuery;
  end;
  finally
  FbConnection.Close;
  end;
  except
  MessageBox1.ShowMessage('Erro ao executar a operação de gravação!');
  end;
Select;
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('LocalizaSocios.aspx');
end;

procedure TWebForm1.Button3_Click(sender: System.Object; e: System.EventArgs);
begin
Permitido:= 30;
aFile:= Path.GetFileName(file1.PostedFile.FileName);
if aFile = nil then
begin
MessageBox1.ShowMessage('Adicione uma imagem com tamanho de 112 X 134 pixels.');
Exit;
end;
//verificamos a extensão através dos últimos 4 caracteres
Extensao:= aFile.Substring(aFile.Length - 4).ToLower();
if (extensao <> '.jpg') and (extensao <> '.gif') then
begin
MessageBox1.ShowMessage('Só é permitido imagens do tipo: *.jpg, *.gif');
Exit;
end;
//identifica o tamanho do arquivo
Tamanho:= Convert.ToDouble(file1.PostedFile.ContentLength)/1024;
if (tamanho > permitido) then
begin
MessageBox1.ShowMessage('O tamanho máximo permitido do arquivo é de 50Kb');
Exit;
end;
AFile:= Session['FotoCod'].ToString+Extensao;
  if Assigned(file1.PostedFile) then
  begin
  file1.PostedFile.SaveAs(Server.MapPath('Imagem\Fotos\'+Afile));
  FbConnection.Open;
  try try
  with FbComImagem do
  begin
  Parameters[1].Value:= Session['FotoCod'];
  Parameters[0].Value:= 'Imagem/Fotos/'+Afile;
  ExecuteNonQuery;
  end;
  finally
  FbConnection.Close;
  end;
  except
  MessageBox1.ShowMessage('Erro ao executar a operação de gravação!');
  end;
  end;
Select;
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

