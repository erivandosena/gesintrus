
unit AlteraUsuario;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  FirebirdSql.Data.Firebird, ControleMessageBox, SysUtils;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnExcluir_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnSalvar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    TextNome: System.Web.UI.WebControls.TextBox;
    Label3: System.Web.UI.WebControls.Label;
    TextSenha: System.Web.UI.WebControls.TextBox;
    BtnSalvar: System.Web.UI.WebControls.Button;
    BtnExcluir: System.Web.UI.WebControls.Button;
    BtnCancelar: System.Web.UI.WebControls.Button;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator2: System.Web.UI.WebControls.RequiredFieldValidator;
    MessageBox1: ControleMessageBox.MessageBox;
    FbComVerifica: FirebirdSql.Data.Firebird.FbCommand;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
    Cod_Usuario: System.Object;
  public
    { Public Declarations }
    procedure AbrirCadastro;
    procedure ExecutarCommand(Com: fbCommand);
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
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbComVerifica := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.BtnSalvar.Click, Self.BtnSalvar_Click);
  Include(Self.BtnExcluir.Click, Self.BtnExcluir_Click);
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
  Self.FbDataAdapter1.DeleteCommand := Self.FbCommand4;
  Self.FbDataAdapter1.InsertCommand := Self.FbCommand2;
  Self.FbDataAdapter1.SelectCommand := Self.FbCommand1;
  Self.FbDataAdapter1.UpdateCommand := Self.FbCommand3;
  // 
  // FbCommand4
  // 
  Self.FbCommand4.CommandText := 'DELETE FROM USUARIOS WHERE cod_usua = ?';
  Self.FbCommand4.Connection := Self.FbConnection1;
  Self.FbCommand4.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'ODIGO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'cod_usua', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbCommand2
  // 
  Self.FbCommand2.Connection := Self.FbConnection1;
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select cod_usua, nome_usuario, senha from ' +
  'USUARIOS where cod_usua = ?';
  Self.FbCommand1.Connection := Self.FbConnection1;
  Self.FbCommand1.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'ODIGO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'cod_usua', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbCommand3
  // 
  Self.FbCommand3.CommandText := 'update USUARIOS set nome_usuario = ?, senh' +
  'a = ? where ( cod_usua = ? )';
  Self.FbCommand3.Connection := Self.FbConnection1;
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('U' +
      'SUARIO', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_usuario', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('S' +
      'ENHA', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'senha', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'ODIGO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'cod_usua', System.Data.DataRowVersion.Current, 
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
Cod_Usuario:= Request.QueryString['cod_usua'];
  if not IsPostBack then
  begin
    if Cod_Usuario <> nil then
      AbrirCadastro;
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

procedure TWebForm1.AbrirCadastro;
var
  dr: FbDataReader;
begin
   with FbDataAdapter1.SelectCommand do
   begin
      Parameters[0].Value := Cod_Usuario;
      try
        FbConnection1.Open;
        dr := ExecuteReader;
        dr.Read();
        TextNome.Text := dr['nome_usuario'].ToString;
        TextSenha.Text := dr['senha'].ToString;
        Session['nome_usuario']:= dr['nome_usuario'];
      finally
        FbConnection1.Close();
      end;
   end;
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.ExecutarCommand(Com: fbCommand);
begin
  Com.Connection.Open;
  try
      Com.Parameters['CODIGO'].Value:= Cod_Usuario;
    if Com <> FbDataAdapter1.DeleteCommand then
    begin
      Com.Parameters[0].Value:= TextNome.Text.ToUpper;
      Com.Parameters[1].Value:= TextSenha.Text;
    end;
    { Executa Comando Insert, Update ou Delete }
    Com.ExecuteNonQuery;
  finally
    Com.Connection.Close;
  end;
end;

procedure TWebForm1.BtnSalvar_Click(sender: System.Object; e: System.EventArgs);
var
dr: FbDataReader;
begin
// Verifica se é o proprio usuario ou administrador
if (Session['nome_usuario'].ToString.ToUpper <> Session['NomeUsuario'].ToString.ToUpper) and
(Session['NomeUsuario'].ToString.ToUpper <> 'ADMIN') then
begin
MessageBox1.ShowMessage('Atenção! Sua conta de usuário não tem poderes para efetuar esta alteração.');
Exit;
end;
 // Inicio Verifica se houve mudanças no campo
   if TextNome.Text <> Session['nome_usuario'].ToString then
   begin
// Verifica cadastro existente
  FbConnection1.Open;
  try
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
  finally
    FbConnection1.Close;
  end;
// Verifica cadastro existente
   end;
  // Fim Verifica se houve mudanças no campo
  ExecutarCommand(FbDataAdapter1.UpdateCommand);
  Response.Redirect('BuscaUsuario.aspx');
end;

procedure TWebForm1.BtnExcluir_Click(sender: System.Object; e: System.EventArgs);
begin
// Verifica se é o proprio usuario ou administrador
if (Session['nome_usuario'].ToString.ToUpper <> Session['NomeUsuario'].ToString.ToUpper) and
(Session['NomeUsuario'].ToString.ToUpper <> 'ADMIN') then
begin
MessageBox1.ShowMessage('Atenção! Sua conta de usuário não tem poderes para efetuar esta alteração.');
Exit;
end;
  ExecutarCommand(FbDataAdapter1.DeleteCommand);
  Response.Redirect('BuscaUsuario.aspx');
end;

end.

