
unit Seleciona;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, SysUtils, System.Text;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure DataGrid1_ItemCommand(source: System.Object; e: System.Web.UI.WebControls.DataGridCommandEventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    FbComSeleciona: FirebirdSql.Data.Firebird.FbCommand;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    DataGrid1: System.Web.UI.WebControls.DataGrid;
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
  Self.FbComSeleciona := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Include(Self.DataGrid1.ItemCommand, Self.DataGrid1_ItemCommand);
  // 
  // FbComSeleciona
  // 
  Self.FbComSeleciona.CommandText := 'select count(1) from SOCIOS where uppe' +
  'r(CPF) = ?';
  Self.FbComSeleciona.Connection := Self.FbConnection1;
  Self.FbComSeleciona.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'PF', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'CPF', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=master;Databa' +
  'se=C:\www\populando\dados\GESINTRUS.FDB;DataSource=67.15.80.55;Port=3050;' +
  'Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;' +
  'Pooling=True;Packet Size=8192;Server Type=0';
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
if not IspostBack then
  begin
  FbConnection1.Open;
  try                             
    FbComSeleciona.CommandText:= Session['Comando'].ToString;
    DataGrid1.DataSource:= FbComSeleciona.ExecuteReader;
    DataGrid1.DataBind;
  finally
    FbConnection1.Close;
  end;
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

procedure TWebForm1.DataGrid1_ItemCommand(source: System.Object; e: System.Web.UI.WebControls.DataGridCommandEventArgs);
var
  script: StringBuilder;
begin
  if e.CommandName = 'Select' then
  begin
    //atente para o nome dos controles (TextBox) adicionados na Default.aspx
    script := StringBuilder.Create;
    script.Append('<script language="JavaScript">');
    script.Append('window.opener.document.forms[0]');
    script.Append('["'+Session['Text'].ToString+'"].value="' + e.Item.Cells[1].Text + '";');
    script.Append('window.close(); </script>');
    RegisterClientScriptBlock('client', script.ToString);
  end;
end;

end.

