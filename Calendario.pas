
unit Calendario;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls;

type
  TWebForm2 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure btnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnAdicionar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Calendar1: System.Web.UI.WebControls.Calendar;
    btnCancelar: System.Web.UI.WebControls.Button;
    BtnAdicionar: System.Web.UI.WebControls.Button;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
  end;

implementation

uses System.Text;
{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm2.InitializeComponent;
begin
  Include(Self.btnCancelar.Click, Self.btnCancelar_Click);
  Include(Self.BtnAdicionar.Click, Self.BtnAdicionar_Click);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm2.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
end;

procedure TWebForm2.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm2.BtnAdicionar_Click(sender: System.Object; e: System.EventArgs);
var
  script: StringBuilder;
  aData: string;
begin
  aData := System.&String.Format('{0:dd/MM/yyyy}', Calendar1.SelectedDate);
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.opener.document.forms[0]');
  script.Append('["'+Session['Text'].ToString+'"].value="' + aData + '";');
  script.Append('window.close(); </script>');
  RegisterClientScriptBlock('client', script.ToString);
end;

procedure TWebForm2.btnCancelar_Click(sender: System.Object; e: System.EventArgs);
var
  script: StringBuilder;
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.close(); </script>');
  RegisterClientScriptBlock('client', script.ToString);
end;

end.

