
unit Impressoes;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, SysUtils, System.Text, ControleMessageBox;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure DropDownList1_SelectedIndexChanged(sender: System.Object; e: System.EventArgs);
    procedure BtnVisualizar_Click(sender: System.Object; e: System.EventArgs);
    procedure CheckBox1_CheckedChanged(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    LabelNome: System.Web.UI.WebControls.Label;
    BtnVisualizar: System.Web.UI.WebControls.Button;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    DropDownList1: System.Web.UI.WebControls.DropDownList;
    TextBox1: System.Web.UI.WebControls.TextBox;
    TextBox2: System.Web.UI.WebControls.TextBox;
    TextBox3: System.Web.UI.WebControls.TextBox;
    Label1: System.Web.UI.WebControls.Label;
    Label2: System.Web.UI.WebControls.Label;
    Label3: System.Web.UI.WebControls.Label;
    Label4: System.Web.UI.WebControls.Label;
    Label5: System.Web.UI.WebControls.Label;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator2: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator3: System.Web.UI.WebControls.RequiredFieldValidator;
    ValidationSummary1: System.Web.UI.WebControls.ValidationSummary;
    MessageBox1: ControleMessageBox.MessageBox;
    Label6: System.Web.UI.WebControls.Label;
    CheckBox1: System.Web.UI.WebControls.CheckBox;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
    Cod_Soci: System.Object;
  public
    { Public Declarations }
    procedure AbrirCadastro;
    function ZeroEsquerda(const I: integer; const Casas: byte): string;
  end;

  var
  script: StringBuilder;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebForm1.AbrirCadastro;
var
  dr: FbDataReader;
begin
   with FbDataAdapter1.SelectCommand do
   begin
      Parameters[0].Value := Cod_Soci;
      try
        Connection.Open();
        dr := ExecuteReader();
        dr.Read();
             Session['nome']:= dr['nome'].ToString;
             Session['data_nascimento']:= System.String.Format('{0:dd/MM/yyyy}', dr['data_nascimento']);
             Session['pai']:= dr['pai'].ToString;
             Session['mae']:= dr['mae'].ToString;
             Session['endereco']:= dr['endereco'].ToString;
             Session['bairro']:= dr['bairro'].ToString;
             Session['cidade']:= dr['cidade'].ToString;
             Session['naturalidade']:= dr['naturalidade'].ToString;
             Session['cpf']:= dr['cpf'].ToString;
             Session['rg']:= dr['rg'].ToString;
             Session['data_entrada']:= System.String.Format('{0:dd/MM/yyyy}', dr['data_entrada']);
             Session['matricula']:= ZeroEsquerda(strtoint(dr['matricula'].ToString), 5); //  dr['matricula'].ToString;
             Session['sexo']:= dr['sexo'].ToString;
             Session['apelido']:= dr['apelido'].ToString;
             Session['conjuge']:= dr['conjuge'].ToString;
             Session['data_nasc_conjuge']:=  System.String.Format('{0:dd/MM/yyyy}', dr['data_nasc_conjuge']);
             Session['numero_filhos']:= dr['numero_filhos'].ToString;
             Session['estado_civil']:= dr['estado_civil'].ToString;
             Session['grau_instrucao']:= dr['grau_instrucao'].ToString;
             Session['cep']:= dr['cep'].ToString;
             Session['nacionalidade']:= dr['nacionalidade'].ToString;
             Session['nit']:= dr['nit'].ToString;
             Session['telefone']:= dr['telefone'].ToString;
             Session['ctps']:= dr['ctps'].ToString;
             Session['str_socio']:= dr['str_socio'].ToString;
             Session['ficha']:= dr['ficha'].ToString;
             Session['data_saida']:= System.String.Format('{0:dd/MM/yyyy}', dr['data_saida']);
             Session['socio_aposentado']:= dr['socio_aposentado'].ToString;
             Session['aposent_contribuinte']:= dr['aposent_contribuinte'].ToString;
             Session['atividade']:= dr['atividade'].ToString;
             Session['forma_de_atividade']:= dr['forma_de_atividade'].ToString;
             Session['regime_de_trabalho']:= dr['regime_de_trabalho'].ToString;
             Session['vizinho_1']:= dr['vizinho_1'].ToString;
             Session['vizinho_2']:= dr['vizinho_2'].ToString;
             Session['vizinho_3']:= dr['vizinho_3'].ToString;
             Session['vizinho_4']:= dr['vizinho_4'].ToString;
             Session['produto_agricola']:= dr['produto_agricola'].ToString;
             Session['mes_ini_atividade']:= dr['mes_ini_atividade'].ToString;
             Session['area_plantada']:= dr['area_plantada'].ToString;
             Session['data_edicao']:= System.String.Format('{0:dd/MM/yyyy}', dr['data_edicao']);
             Session['obs_form_atividade']:= dr['obs_form_atividade'].ToString;
             Session['doc_atividades']:= dr['doc_atividades'].ToString;
             Session['obs_doc_atividade']:= dr['obs_doc_atividade'].ToString;
             Session['ponto_referencia']:= dr['ponto_referencia'].ToString;
             Session['nome_patrao']:= dr['nome_patrao'].ToString;
             Session['local_trab']:= dr['local_trab'].ToString;
             Session['datas_ini_fim']:= dr['datas_ini_fim'].ToString;
             Session['obs_prod_cultiv']:= dr['obs_prod_cultiv'].ToString;
             Session['titulo_eleitor']:= dr['titulo_eleitor'].ToString;
             Session['zona']:= dr['zona'].ToString;
             Session['secao']:= dr['secao'].ToString;
             Session['estado_uf']:= dr['estado_uf'].ToString;
             Session['nome_dependente']:= dr['nome_dependente'].ToString;
             Session['grau_parent_depend']:= dr['grau_parent_depend'].ToString;
             Session['data_nasc_depend']:= dr['data_nasc_depend'].ToString;
             Session['foto_socio']:= dr['foto_socio'].ToString;
             LabelNome.Text:= 'Nome:<b> '+dr['nome'].ToString+'</b>'; //+'    </b>Matrícula nº:<b>'+Session['matricula'].ToString+'    </b>Ficha nº:<b>'+Session['ficha'].ToString+'</b>';
      finally
        Connection.Close();
      end;
   end;
end;

procedure TWebForm1.InitializeComponent;
begin
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.DropDownList1.SelectedIndexChanged, Self.DropDownList1_SelectedIndexChanged);
  Include(Self.BtnVisualizar.Click, Self.BtnVisualizar_Click);
  Include(Self.CheckBox1.CheckedChanged, Self.CheckBox1_CheckedChanged);
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
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select nome,'#13#10'             data_nasc' +
  'imento,'#13#10'             pai,'#13#10'             mae,'#13#10'        ' +
  '     endereco,'#13#10'             bairro,'#13#10'             cidade,'#13 +
  #10'             naturalidade,'#13#10'             cpf,'#13#10'           ' +
  '  rg,'#13#10'             data_entrada,'#13#10'             cod_soci,'#13 +
  #10'             matricula,'#13#10'             sexo,'#13#10'             ' +
  'apelido,'#13#10'             conjuge,'#13#10'             data_nasc_conju' +
  'ge,'#13#10'             numero_filhos,'#13#10'             estado_civil,'#13 +
  #10'             grau_instrucao,'#13#10'             cep,'#13#10'         ' +
  '    nacionalidade,'#13#10'             nit,'#13#10'             telefone,' +
  #13#10'             ctps,'#13#10'             str_socio,'#13#10'          ' +
  '   ficha,'#13#10'             data_saida,'#13#10'             socio_apose' +
  'ntado,'#13#10'             aposent_contribuinte,'#13#10'             ativ' +
  'idade,'#13#10'             forma_de_atividade,'#13#10'             regime' +
  '_de_trabalho,'#13#10'             vizinho_1,'#13#10'             vizinho_' +
  '2,'#13#10'             vizinho_3,'#13#10'             vizinho_4,'#13#10' ' +
  '            produto_agricola,'#13#10'             mes_ini_atividade,'#13#10 +
  '             area_plantada,'#13#10'             data_edicao,'#13#10'     ' +
  '        obs_form_atividade,'#13#10'             doc_atividades,'#13#10'  ' +
  '           obs_doc_atividade,'#13#10'             ponto_referencia,'#13#10 +
  '             nome_patrao,'#13#10'             local_trab,'#13#10'        ' +
  '     datas_ini_fim,'#13#10'             obs_prod_cultiv,'#13#10'         ' +
  '    titulo_eleitor,'#13#10'             zona,'#13#10'             secao,'#13 +
  #10'             estado_uf,'#13#10'             nome_dependente,'#13#10'  ' +
  '           grau_parent_depend,'#13#10'             data_nasc_depend,'#13#10 +
  '             foto_socio'#13#10'      from socios where cod_soci = ?';
  Self.FbCommand1.Connection := Self.FbConnection1;
  Self.FbCommand1.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'ODIGO', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'cod_soci', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
  Cod_Soci := Request.QueryString['cod_soci'];
    if not IsPostBack then
  begin
  Session['SocioAssina']:= 'False';
    if Cod_Soci <> nil then
      AbrirCadastro;
  end;
end;

function TWebForm1.ZeroEsquerda(const I: integer; const Casas: byte): string;
var     Ch: Char;
begin
Result := IntToStr(I);
 if Length(Result) > Casas then
 begin
 Ch := '*';
 Result := '';
 end
 else
 Ch := '0';
 while Length(Result) < Casas do
 Result := Ch + Result;
end;

procedure TWebForm1.CheckBox1_CheckedChanged(sender: System.Object; e: System.EventArgs);
begin
  if CheckBox1.Checked = True then
  Session['SocioAssina']:= 'True'
  else
  Session['SocioAssina']:= 'False';
end;

procedure TWebForm1.BtnVisualizar_Click(sender: System.Object; e: System.EventArgs);
begin
case DropDownList1.SelectedIndex of
    0:
    begin
    Response.redirect('RelDeclAtividade.aspx');
    end;

    1:
    begin
    Response.redirect('RelDeclEnergia.aspx');
    end;

    2:
    begin
    Session['str_Destino_cidade']:= TextBox1.Text.ToUpper;
    Session['str_Destino_estado']:= TextBox2.Text.ToUpper;
    Session['str_Destino_uf']:= TextBox3.Text.ToUpper;
    Response.redirect('RelTransfSocio.aspx');
    end;

    3:
    begin
    Response.redirect('CarteiraSocio.aspx');
    end;

    4:
    begin
    if ( Session['R_Valor'] = nil ) and ( Session['R_Descricao'] = nil ) then
    begin
    MessageBox1.ShowMessage('Recibo sem valor declarado ou descrição!');
    Exit;
    end else
    Response.redirect('Recibo.aspx');
    end;
end;
end;

procedure TWebForm1.DropDownList1_SelectedIndexChanged(sender: System.Object;
  e: System.EventArgs);
begin
case DropDownList1.SelectedIndex of
    0:
    begin
    Label6.Visible:= True;
    CheckBox1.Visible:= True;
    Session['SocioAssina']:= 'False';
    Label1.Visible:= False;
    Label2.Visible:= False;
    Label3.Visible:= False;
    TextBox1.Visible:= False;
    TextBox2.Visible:= False;
    TextBox3.Visible:= False;
    end;

    1:
    begin
    Label6.Visible:= False;
    CheckBox1.Visible:= False;
    Session['SocioAssina']:= 'False';
    Label1.Visible:= False;
    Label2.Visible:= False;
    Label3.Visible:= False;
    TextBox1.Visible:= False;
    TextBox2.Visible:= False;
    TextBox3.Visible:= False;
    end;

    2:
    begin
    Label1.Visible:= True;
    Label2.Visible:= True;
    Label3.Visible:= True;
    TextBox1.Visible:= True;
    TextBox2.Visible:= True;
    TextBox3.Visible:= True;
    Label6.Visible:= False;
    CheckBox1.Visible:= False;
    Session['SocioAssina']:= 'False';
    end;

    3:
    begin
    Label6.Visible:= False;
    CheckBox1.Visible:= False;
    Session['SocioAssina']:= 'False';
    Label1.Visible:= False;
    Label2.Visible:= False;
    Label3.Visible:= False;
    TextBox1.Visible:= False;
    TextBox2.Visible:= False;
    TextBox3.Visible:= False;
    end;

    4:
    begin
    Label6.Visible:= False;
    CheckBox1.Visible:= False;
    Session['SocioAssina']:= 'False';
    Label1.Visible:= False;
    Label2.Visible:= False;
    Label3.Visible:= False;
    TextBox1.Visible:= False;
    TextBox2.Visible:= False;
    TextBox3.Visible:= False;

    script := StringBuilder.Create;
    script.Append('<script language="JavaScript">');
    script.Append('window.open("ReciboDados.aspx", "",');
    script.Append('"resizable=no, menubar=no,scrollbars=no, width=370,height=240")');
    script.Append('</script>');
    RegisterClientScriptBlock('client', script.ToString);
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

end.

