
unit CadSindicato;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls, 
  FirebirdSql.Data.Firebird, SysUtils;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure TextBox6_TextChanged(sender: System.Object; e: System.EventArgs);
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnSalvar_Click(sender: System.Object; e: System.EventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    TextRazao: System.Web.UI.WebControls.TextBox;
    TextCnpj: System.Web.UI.WebControls.TextBox;
    Label2: System.Web.UI.WebControls.Label;
    Label3: System.Web.UI.WebControls.Label;
    TextFundacao: System.Web.UI.WebControls.TextBox;
    Label4: System.Web.UI.WebControls.Label;
    TextCs: System.Web.UI.WebControls.TextBox;
    Label5: System.Web.UI.WebControls.Label;
    TextEndereco: System.Web.UI.WebControls.TextBox;
    Label6: System.Web.UI.WebControls.Label;
    TextTexto_adicional: System.Web.UI.WebControls.TextBox;
    Label7: System.Web.UI.WebControls.Label;
    TextFiliacoes: System.Web.UI.WebControls.TextBox;
    Label8: System.Web.UI.WebControls.Label;
    TextValor_mens_socio: System.Web.UI.WebControls.TextBox;
    Label9: System.Web.UI.WebControls.Label;
    TextEstado_uf_presid: System.Web.UI.WebControls.TextBox;
    Label10: System.Web.UI.WebControls.Label;
    TextPresidente: System.Web.UI.WebControls.TextBox;
    Label11: System.Web.UI.WebControls.Label;
    TextData_expedicao: System.Web.UI.WebControls.TextBox;
    Label12: System.Web.UI.WebControls.Label;
    TextNacionalidade: System.Web.UI.WebControls.TextBox;
    Label13: System.Web.UI.WebControls.Label;
    TextEndereco_presid: System.Web.UI.WebControls.TextBox;
    Label14: System.Web.UI.WebControls.Label;
    TextBairro_presid: System.Web.UI.WebControls.TextBox;
    Label15: System.Web.UI.WebControls.Label;
    TextCidade_presid: System.Web.UI.WebControls.TextBox;
    Label16: System.Web.UI.WebControls.Label;
    TextNaturalidade: System.Web.UI.WebControls.TextBox;
    Label17: System.Web.UI.WebControls.Label;
    TextValor_cart_socio: System.Web.UI.WebControls.TextBox;
    Label18: System.Web.UI.WebControls.Label;
    TextCpf: System.Web.UI.WebControls.TextBox;
    Label19: System.Web.UI.WebControls.Label;
    TextRg: System.Web.UI.WebControls.TextBox;
    Label20: System.Web.UI.WebControls.Label;
    TextOrgao_expedidor: System.Web.UI.WebControls.TextBox;
    Label21: System.Web.UI.WebControls.Label;
    TextOrgao_expedidor_uf: System.Web.UI.WebControls.TextBox;
    Label22: System.Web.UI.WebControls.Label;
    TextData_nascimento: System.Web.UI.WebControls.TextBox;
    Label23: System.Web.UI.WebControls.Label;
    TextBairro: System.Web.UI.WebControls.TextBox;
    Label24: System.Web.UI.WebControls.Label;
    TextCep: System.Web.UI.WebControls.TextBox;
    Label27: System.Web.UI.WebControls.Label;
    TextSexo: System.Web.UI.WebControls.TextBox;
    Label28: System.Web.UI.WebControls.Label;
    TextEstado_civil: System.Web.UI.WebControls.TextBox;
    Label29: System.Web.UI.WebControls.Label;
    TextProfissao: System.Web.UI.WebControls.TextBox;
    Label30: System.Web.UI.WebControls.Label;
    TextTelefone: System.Web.UI.WebControls.TextBox;
    BtnCancelar: System.Web.UI.WebControls.Button;
    BtnSalvar: System.Web.UI.WebControls.Button;
    Label25: System.Web.UI.WebControls.Label;
    TextCidade: System.Web.UI.WebControls.TextBox;
    Label26: System.Web.UI.WebControls.Label;
    TextEstado_uf: System.Web.UI.WebControls.TextBox;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
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
  Include(Self.TextTexto_adicional.TextChanged, Self.TextBox6_TextChanged);
  Include(Self.BtnSalvar.Click, Self.BtnSalvar_Click);
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
  Self.FbCommand4.Connection := Self.FbConnection1;
  // 
  // FbCommand2
  // 
  Self.FbCommand2.Connection := Self.FbConnection1;
  // 
  // FbCommand1
  // 
  Self.FbCommand1.CommandText := 'select cod_sind,'#13#10'             munic' +
  'ipio_str,'#13#10'             fundacao,'#13#10'             cs,'#13#10'  ' +
  '           cnpj,'#13#10'             endereco,'#13#10'             bairro' +
  ','#13#10'             cep,'#13#10'             cidade,'#13#10'           ' +
  '  presidente,'#13#10'             data_nascimento,'#13#10'             cp' +
  'f,'#13#10'             rg,'#13#10'             naturalidade,'#13#10'     ' +
  '        nacionalidade,'#13#10'             sexo,'#13#10'             prof' +
  'issao,'#13#10'             estado_civil,'#13#10'             telefone,'#13 +
  #10'             filiacoes,'#13#10'             estado_uf,'#13#10'        ' +
  '     texto_adicional,'#13#10'             endereco_presid,'#13#10'       ' +
  '      bairro_presid,'#13#10'             cidade_presid,'#13#10'          ' +
  '   estado_uf_presid,'#13#10'             orgao_expedidor,'#13#10'        ' +
  '     orgao_expedidor_uf,'#13#10'             data_expedicao,'#13#10'     ' +
  '        valor_mens_socio,'#13#10'             valor_cart_socio'#13#10'   ' +
  '   from sindicato where cod_sind = cod_sind';
  Self.FbCommand1.Connection := Self.FbConnection1;
  // 
  // FbCommand3
  // 
  Self.FbCommand3.CommandText := 'UPDATE SINDICATO SET MUNICIPIO_STR = @p2,F' +
  'UNDACAO = @p3,CS = @p4,CNPJ = @p5,ENDERECO = @p6,BAIRRO = @p7,CEP = @p8,C' +
  'IDADE = @p9,PRESIDENTE = @p10,DATA_NASCIMENTO = @p11,CPF = @p12,RG = @p13' +
  ',NATURALIDADE = @p14,NACIONALIDADE = @p15,SEXO = @p16,PROFISSAO = @p17,ES' +
  'TADO_CIVIL = @p18,TELEFONE = @p19,FILIACOES = @p20,ESTADO_UF = @p21,TEXTO' +
  '_ADICIONAL = @p22,ENDERECO_PRESID = @p23,BAIRRO_PRESID = @p24,CIDADE_PRES' +
  'ID = @p25,ESTADO_UF_PRESID = @p26,ORGAO_EXPEDIDOR = @p27,ORGAO_EXPEDIDOR_' +
  'UF = @p28,DATA_EXPEDICAO = @p29,VALOR_MENS_SOCIO = @p30,VALOR_CART_SOCIO ' +
  '= @p31 WHERE (COD_SIND = COD_SIND)';
  Self.FbCommand3.Connection := Self.FbConnection1;
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'MUNICIPIO_STR', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p3', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'FUNDACAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p4', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CS', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p5', FirebirdSql.Data.Firebird.FbDbType.VarChar, 18, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CNPJ', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p6', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ENDERECO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p7', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'BAIRRO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p8', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CEP', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p9', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p10', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'PRESIDENTE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p11', FirebirdSql.Data.Firebird.FbDbType.TimeStamp, 8, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_NASCIMENTO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p12', FirebirdSql.Data.Firebird.FbDbType.VarChar, 15, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CPF', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p13', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'RG', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p14', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NATURALIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p15', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NACIONALIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p16', FirebirdSql.Data.Firebird.FbDbType.VarChar, 9, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'SEXO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p17', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'PROFISSAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p18', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ESTADO_CIVIL', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p19', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'TELEFONE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p20', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'FILIACOES', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p21', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ESTADO_UF', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p22', FirebirdSql.Data.Firebird.FbDbType.VarChar, 75, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'TEXTO_ADICIONAL', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p23', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ENDERECO_PRESID', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p24', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'BAIRRO_PRESID', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p25', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CIDADE_PRESID', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p26', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ESTADO_UF_PRESID', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p27', FirebirdSql.Data.Firebird.FbDbType.VarChar, 31, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ORGAO_EXPEDIDOR', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p28', FirebirdSql.Data.Firebird.FbDbType.Char, 2, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ORGAO_EXPEDIDOR_UF', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p29', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_EXPEDICAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p30', FirebirdSql.Data.Firebird.FbDbType.Numeric, 8, System.Data.ParameterDirection.Input, 
        True, (Byte(18)), (Byte(2)), 'VALOR_MENS_SOCIO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p31', FirebirdSql.Data.Firebird.FbDbType.Numeric, 8, System.Data.ParameterDirection.Input, 
        True, (Byte(18)), (Byte(2)), 'VALOR_CART_SOCIO', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
if not IsPostBack then
  begin
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
      try
        FbConnection1.Open;
        dr := ExecuteReader;
        dr.Read();
        TextRazao.Text:= dr['municipio_str'].ToString;
        TextFundacao.Text:= dr['fundacao'].ToString;
        TextCs.Text:= dr['cs'].ToString;
        TextCnpj.Text:= dr['cnpj'].ToString;
        TextEndereco.Text:= dr['endereco'].ToString;
        TextBairro.Text:= dr['bairro'].ToString;
        TextCep.Text:= dr['cep'].ToString;
        TextCidade.Text:= dr['cidade'].ToString;
        TextPresidente.Text:= dr['presidente'].ToString;
        TextData_nascimento.Text:= System.String.Format('{0:dd/MM/yyyy}', dr['data_nascimento']);
        TextCpf.Text:= dr['cpf'].ToString;
        TextRg.Text:= dr['rg'].ToString;
        TextNaturalidade.Text:= dr['naturalidade'].ToString;
        TextNacionalidade.Text:= dr['nacionalidade'].ToString;
        TextSexo.Text:= dr['sexo'].ToString;
        TextProfissao.Text:= dr['profissao'].ToString;
        TextEstado_civil.Text:= dr['estado_civil'].ToString;
        TextTelefone.Text:= dr['telefone'].ToString;
        TextFiliacoes.Text:= dr['filiacoes'].ToString;
        TextEstado_uf.Text:= dr['estado_uf'].ToString;
        TextTexto_adicional.Text:= dr['texto_adicional'].ToString;
        TextEndereco_presid.Text:= dr['endereco_presid'].ToString;
        TextBairro_presid.Text:= dr['bairro_presid'].ToString;
        TextCidade_presid.Text:= dr['cidade_presid'].ToString;
        TextEstado_uf_presid.Text:= dr['estado_uf_presid'].ToString;
        TextOrgao_expedidor.Text:= dr['orgao_expedidor'].ToString;
        TextOrgao_expedidor_uf.Text:= dr['orgao_expedidor_uf'].ToString;
        TextData_expedicao.Text:= System.String.Format('{0:dd/MM/yyyy}', dr['data_expedicao']);
        TextValor_mens_socio.Text:= FormatFloat('###,###,##.00', StrToFloat(dr['valor_mens_socio'].ToString));
        TextValor_cart_socio.Text:= FormatFloat('###,###,##.00', StrToFloat(dr['valor_cart_socio'].ToString));
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
    if Com <> FbDataAdapter1.DeleteCommand then
    begin
        Com.Parameters[0].Value:= TextRazao.Text.ToUpper;
        Com.Parameters[1].Value:= TextFundacao.Text.ToUpper;
        Com.Parameters[2].Value:= TextCs.Text.ToUpper;
        Com.Parameters[3].Value:= TextCnpj.Text.ToUpper;
        Com.Parameters[4].Value:= TextEndereco.Text.ToUpper;
        Com.Parameters[5].Value:= TextBairro.Text.ToUpper;
        Com.Parameters[6].Value:= TextCep.Text.ToUpper;
        Com.Parameters[7].Value:= TextCidade.Text.ToUpper;
        Com.Parameters[8].Value:= TextPresidente.Text.ToUpper;
             if TextData_nascimento.Text <> nil then
             begin
             Com.Parameters[9].Value:= FormatDateTime('yyyy/MM/dd', StrToDate(TextData_nascimento.Text));
             end;
        Com.Parameters[10].Value:= TextCpf.Text.ToUpper;
        Com.Parameters[11].Value:= TextRg.Text.ToUpper;
        Com.Parameters[12].Value:= TextNaturalidade.Text.ToUpper;
        Com.Parameters[13].Value:= TextNacionalidade.Text.ToUpper;
        Com.Parameters[14].Value:= TextSexo.Text.ToUpper;
        Com.Parameters[15].Value:= TextProfissao.Text.ToUpper;
        Com.Parameters[16].Value:= TextEstado_civil.Text.ToUpper;
        Com.Parameters[17].Value:= TextTelefone.Text.ToUpper;
        Com.Parameters[18].Value:= TextFiliacoes.Text.ToUpper;
        Com.Parameters[19].Value:= TextEstado_uf.Text.ToUpper;
        Com.Parameters[20].Value:= TextTexto_adicional.Text;
        Com.Parameters[21].Value:= TextEndereco_presid.Text.ToUpper;
        Com.Parameters[22].Value:= TextBairro_presid.Text.ToUpper;
        Com.Parameters[23].Value:= TextCidade_presid.Text.ToUpper;
        Com.Parameters[24].Value:= TextEstado_uf_presid.Text.ToUpper;
        Com.Parameters[25].Value:= TextOrgao_expedidor.Text.ToUpper;
        Com.Parameters[26].Value:= TextOrgao_expedidor_uf.Text.ToUpper;
        Com.Parameters[27].Value:= TextData_expedicao.Text;
        Com.Parameters[28].Value:= StringReplace(TextValor_mens_socio.Text,',','.', [rfReplaceAll]);
        Com.Parameters[29].Value:= StringReplace(TextValor_cart_socio.Text,',','.', [rfReplaceAll]);
    end;
    { Executa Comando Insert, Update ou Delete }
    Com.ExecuteNonQuery;
  finally
    Com.Connection.Close;
  end;
end;

procedure TWebForm1.BtnSalvar_Click(sender: System.Object; e: System.EventArgs);
begin
  ExecutarCommand(FbDataAdapter1.UpdateCommand);
  Response.Redirect('CadSindicato.aspx');
end;

procedure TWebForm1.TextBox6_TextChanged(sender: System.Object; e: System.EventArgs);
begin

end;

end.

