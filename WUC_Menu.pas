unit WUC_Menu;

interface

uses System.Data, System.Drawing, System.Web, System.Web.UI,
     System.Web.UI.WebControls, System.Web.UI.HtmlControls, skmMenu, 
  FirebirdSql.Data.Firebird, System.ComponentModel, System.Globalization,
  System.IO, System.Web.Security;
     
type
    /// <summary>
    /// Summary description for WebUserControl1.
    /// </summary>
  TWebUserControl1 = class(System.Web.UI.UserControl)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure TWebUserControl1_Unload(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Menu1: skmMenu.Menu;
    Label1: System.Web.UI.WebControls.Label;
    FbCommand5: FirebirdSql.Data.Firebird.FbCommand;
    procedure OnInit(e: System.EventArgs); override;
  private
    { Private Declarations }
    function GetSaudacao: string;
  public
    { Public Declarations }
  end;

  var
  ArquivoSR : StreamReader;
 // ArquivoSW : TextFile;
 ArquivoSW : StreamWriter;
  DirArq : &String;

implementation

procedure TWebUserControl1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
   Menu1.DataSource:=Server.MapPath('SubmenuStyleXML.xml');
   Menu1.DataBind();
if not IsPostBack then
Label1.Text:= GetSaudacao;
end;

procedure TWebUserControl1.TWebUserControl1_Unload(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TWebUserControl1.OnInit(e: System.EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
function TWebUserControl1.GetSaudacao: string;

begin
  result := 'Bom Dia! '+ Session['NomeUsuario'].ToString+ ', bem vindo(a) ao sistema!';
  if System.DateTime.Now.Hour > 12 then
    result :=  'Boa Tarde! '+ Session['NomeUsuario'].ToString+ ', bem vindo(a) ao sistema!';
  if System.DateTime.Now.Hour > 18 then
    result := 'Boa Noite! '+ Session['NomeUsuario'].ToString+ ', bem vindo(a) ao sistema!';
end;

procedure TWebUserControl1.InitializeComponent;
begin
  Self.FbCommand5 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.Unload, Self.TWebUserControl1_Unload);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}


end.
