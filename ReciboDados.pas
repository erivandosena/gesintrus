
unit ReciboDados;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  System.Text;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure btnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnAdicionar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    TextBox1: System.Web.UI.WebControls.TextBox;
    Label2: System.Web.UI.WebControls.Label;
    TextBox2: System.Web.UI.WebControls.TextBox;
    btnCancelar: System.Web.UI.WebControls.Button;
    BtnAdicionar: System.Web.UI.WebControls.Button;
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
  Include(Self.BtnAdicionar.Click, Self.BtnAdicionar_Click);
  Include(Self.btnCancelar.Click, Self.btnCancelar_Click);
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

procedure TWebForm1.BtnAdicionar_Click(sender: System.Object; e: System.EventArgs);
var
  script: StringBuilder;
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.close(); </script>');
  Session['R_Valor']:= TextBox1.Text;
  Session['R_Descricao']:= TextBox2.Text;
  RegisterClientScriptBlock('client', script.ToString);
end;

procedure TWebForm1.btnCancelar_Click(sender: System.Object; e: System.EventArgs);
var
  script: StringBuilder;
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.close(); </script>');
  TextBox1.Text:= '';
  TextBox2.Text:= '';
  RegisterClientScriptBlock('client', script.ToString);
end;

end.

