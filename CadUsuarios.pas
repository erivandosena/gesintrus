
unit CadUsuarios;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  System.Configuration, FirebirdSql.Data.Firebird, ControleMessageBox, SysUtils;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure BtnCadastrar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnAlterar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    TextNome: System.Web.UI.WebControls.TextBox;
    Label3: System.Web.UI.WebControls.Label;
    TextSenha: System.Web.UI.WebControls.TextBox;
    BtnCancelar: System.Web.UI.WebControls.Button;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbComUsuarios: FirebirdSql.Data.Firebird.FbCommand;
    MessageBox1: ControleMessageBox.MessageBox;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator2: System.Web.UI.WebControls.RequiredFieldValidator;
    BtnCadastrar: System.Web.UI.WebControls.Button;
    FbComVerifica: FirebirdSql.Data.Firebird.FbCommand;
    BtnAlterar: System.Web.UI.WebControls.Button;
    ValidationSummary1: System.Web.UI.WebControls.ValidationSummary;
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
  Self.FbComUsuarios := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbComVerifica := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.BtnCadastrar.Click, Self.BtnCadastrar_Click);
  Include(Self.BtnAlterar.Click, Self.BtnAlterar_Click);
  Include(Self.BtnCancelar.Click, Self.BtnCancelar_Click);
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=C:\www\populando\dados\GESINTRUS.FDB;DataSource=67.15.80.55;Port=3050;' +
  'Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;' +
  'Pooling=True;Packet Size=8192;Server Type=0';
  // 
  // FbComUsuarios
  // 
  Self.FbComUsuarios.CommandText := 'insert into USUARIOS (nome_usuario, sen' +
  'ha) values ( ?,? )';
  Self.FbComUsuarios.Connection := Self.FbConnection1;
  Self.FbComUsuarios.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('U' +
      'SUARIO', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_usuario', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbComUsuarios.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('S' +
      'ENHA', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'senha', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbComVerifica
  // 
  Self.FbComVerifica.CommandText := 'select count(1) from USUARIOS where upp' +
  'er(nome_usuario) = ?';
  Self.FbComVerifica.Connection := Self.FbConnection1;
  Self.FbComVerifica.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('U' +
      'SUARIO', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_usuario', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
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

procedure TWebForm1.BtnAlterar_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('BuscaUsuario.aspx');
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.BtnCadastrar_Click(sender: System.Object; e: System.EventArgs);
var
dr: FbDataReader;
begin
  FbConnection1.Open;
  // Verifica cadastro existente
    FbComVerifica.Parameters[0].Value:= TextNome.Text.ToUpper;
    dr:= FbComVerifica.ExecuteReader;
    if dr.Read() then
    begin
    if StrToInt(dr['COUNT'].ToString) <> 0 then
    begin
    MessageBox1.ShowMessage('Usuário já cadastrado no sistema! Informe outro nome de usuário!');
    Exit;
    end else
    end;
 // Verifica cadastro existente
  try
  if not Self.IsValid then Exit;
    FbComUsuarios.Parameters[0].Value:= TextNome.Text.ToUpper;
    FbComUsuarios.Parameters[1].Value:= TextSenha.Text;
    FbComUsuarios.ExecuteNonQuery;
  finally
    FbConnection1.Close;
  end;
  MessageBox1.ShowMessage('Cadastro salvo com sucesso!');
end;

end.

