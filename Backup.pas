
unit Backup;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  ControleMessageBox;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure BtnExecutar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    TextBox1: System.Web.UI.WebControls.TextBox;
    BtnExecutar: System.Web.UI.WebControls.Button;
    BtnCancelar: System.Web.UI.WebControls.Button;
    MessageBox1: ControleMessageBox.MessageBox;
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
  Include(Self.BtnExecutar.Click, Self.BtnExecutar_Click);
  Include(Self.BtnCancelar.Click, Self.BtnCancelar_Click);
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  if not IsPostBack then
  TextBox1.Text:= 'C:\';
end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
    Response.Redirect('Default.aspx');
end;

procedure TWebForm1.BtnExecutar_Click(sender: System.Object; e: System.EventArgs);
begin
try

finally
MessageBox1.ShowMessage('Operação não realizada com sucesso!');
end;
end;

end.

