unit Global;

interface

uses
  System.Collections, System.ComponentModel,
  System.Web, System.Web.SessionState, FirebirdSql.Data.Firebird, System.Data, 
  System.Globalization;

type
  TGlobal = class(System.Web.HttpApplication)
  {$REGION 'Designer Managed Code'}
  strict private
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    FbComCadOnLine: FirebirdSql.Data.Firebird.FbCommand;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    procedure InitializeComponent;
    procedure TGlobal_UpdateRequestCache(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_AuthorizeRequest(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_AcquireRequestState(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_AuthenticateRequest(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_BeginRequest(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_Disposed(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_EndRequest(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_PostRequestHandlerExecute(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_PreRequestHandlerExecute(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_PreSendRequestContent(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_PreSendRequestHeaders(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_ReleaseRequestState(sender: System.Object; e: System.EventArgs);
    procedure TGlobal_ResolveRequestCache(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict protected
  private
    { Private Declarations }
  public
    constructor Create;
  end;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TGlobal.InitializeComponent;
begin
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbComCadOnLine := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  // 
  // FbComCadOnLine
  // 
  Self.FbComCadOnLine.CommandText := 'update USUARIOS set ONLINE = ? where (' +
  ' nome_usuario = ? )';
  Self.FbComCadOnLine.Connection := Self.FbConnection1;
  Self.FbComCadOnLine.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('O' +
      'nLine', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'online', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbComCadOnLine.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('N' +
      'ome', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_usuario', System.Data.DataRowVersion.Current, 
        nil));
  // 
  // FbConnection1
  // 
  Self.FbConnection1.ConnectionString := 'User=SYSDBA;Password=21033001;Data' +
  'base=C:\Inforamos\GESINTRUS\GESINTRUS.FDB;DataSource=127.0.0.1;Port=3050;' +
  'Dialect=3;Charset=NONE;Role=;Connection lifetime=0;Connection timeout=15;' +
  'Pooling=True;Packet Size=8192;Server Type=0';
  // 
  // TGlobal
  // 
  Include(Self.PreRequestHandlerExecute, Self.TGlobal_PreRequestHandlerExecute);
  Include(Self.ResolveRequestCache, Self.TGlobal_ResolveRequestCache);
  Include(Self.BeginRequest, Self.TGlobal_BeginRequest);
  Include(Self.AuthorizeRequest, Self.TGlobal_AuthorizeRequest);
  Include(Self.PreSendRequestHeaders, Self.TGlobal_PreSendRequestHeaders);
  Include(Self.AcquireRequestState, Self.TGlobal_AcquireRequestState);
  Include(Self.Disposed, Self.TGlobal_Disposed);
  Include(Self.PreSendRequestContent, Self.TGlobal_PreSendRequestContent);
  Include(Self.UpdateRequestCache, Self.TGlobal_UpdateRequestCache);
  Include(Self.AuthenticateRequest, Self.TGlobal_AuthenticateRequest);
  Include(Self.ReleaseRequestState, Self.TGlobal_ReleaseRequestState);
  Include(Self.PostRequestHandlerExecute, Self.TGlobal_PostRequestHandlerExecute);
  Include(Self.EndRequest, Self.TGlobal_EndRequest);
end;
{$ENDREGION}

constructor TGlobal.Create;
begin
  inherited;
  //
  // Required for Designer support
  //
  InitializeComponent;
  //
  // TODO: Add any constructor code after InitializeComponent call
  //
end;

procedure TGlobal.TGlobal_ResolveRequestCache(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_ReleaseRequestState(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_PreSendRequestHeaders(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_PreSendRequestContent(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_PreRequestHandlerExecute(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_PostRequestHandlerExecute(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_EndRequest(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_Disposed(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_BeginRequest(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_AuthenticateRequest(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_AcquireRequestState(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_AuthorizeRequest(sender: System.Object; e: System.EventArgs);
begin

end;

procedure TGlobal.TGlobal_UpdateRequestCache(sender: System.Object; e: System.EventArgs);
begin

end;

end.

