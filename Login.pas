
unit Login;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  System.Configuration, FirebirdSql.Data.Firebird, ControleMessageBox,
  System.Web.Security;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure BtnLogin_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbComLogin: FirebirdSql.Data.Firebird.FbCommand;
    MessageBox1: ControleMessageBox.MessageBox;
    Image1: System.Web.UI.WebControls.Image;
    Image2: System.Web.UI.WebControls.Image;
    TextUsuario: System.Web.UI.WebControls.TextBox;
    TextSenha: System.Web.UI.WebControls.TextBox;
    BtnLogin: System.Web.UI.WebControls.Button;
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
  Self.FbComLogin := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.BtnLogin.Click, Self.BtnLogin_Click);
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=C:\www\populando\dados\GESINTRUS.FDB;DataSource=67.15.80.55;Port=3050;' +
  'Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;' +
  'Pooling=True;Packet Size=8192;Server Type=0';
  // 
  // FbComLogin
  // 
  Self.FbComLogin.CommandText := 'select nome_usuario, senha from USUARIOS w' +
  'here upper(nome_usuario) = ?';
  Self.FbComLogin.Connection := Self.FbConnection1;
  Self.FbComLogin.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('U' +
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

procedure TWebForm1.BtnLogin_Click(sender: System.Object; e: System.EventArgs);
var
dr: FbDataReader;
aSenha: String;
begin
  FbConnection1.Open;
  try
    FbComLogin.Parameters[0].Value:= TextUsuario.Text.ToUpper;
    dr:= FbComLogin.ExecuteReader;
    if dr.Read() then
    begin
    aSenha:= TextSenha.Text;
    if (aSenha = dr['senha'].ToString) then
    begin
    //Response.redirect('Default.aspx')
    Session['NomeUsuario']:= dr['nome_usuario'];
    FormsAuthentication.RedirectFromLoginPage(TextUsuario.Text, false)
    end else
    MessageBox1.ShowMessage('Dados incorretos!');
    end;
  finally
    FbConnection1.Close;
  end;
end;

end.

