
unit AlteraSocio;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  FirebirdSql.Data.Firebird, ControleMessageBox, SysUtils, System.Text;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
    procedure BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnSalvar_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnExcluir_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnSexo_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnEstado_civil_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnCidade_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnEstado_uf_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnNaturalidade_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnNacionalidade_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnAtividade_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnForma_de_atividade_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnRegime_de_trabalho_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnMes_ini_atividade_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnProduto_agricola_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnSocio_aposentado_Click(sender: System.Object; e: System.EventArgs);
    procedure BtnAposent_contribuinte_Click(sender: System.Object; e: System.EventArgs);
    procedure ImgBtnData_nascimento_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure ImgBtnData_nasc_conjuge_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure ImgBtnData_entrada_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
    procedure ImgBtnData_saida_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label4: System.Web.UI.WebControls.Label;
    TextMatricula: System.Web.UI.WebControls.TextBox;
    Label2: System.Web.UI.WebControls.Label;
    Label1: System.Web.UI.WebControls.Label;
    Label3: System.Web.UI.WebControls.Label;
    TextNome: System.Web.UI.WebControls.TextBox;
    Label5: System.Web.UI.WebControls.Label;
    TextDataNascimento: System.Web.UI.WebControls.TextBox;
    Label6: System.Web.UI.WebControls.Label;
    TextDataEdicao: System.Web.UI.WebControls.TextBox;
    Label7: System.Web.UI.WebControls.Label;
    TextArea_plantada: System.Web.UI.WebControls.TextBox;
    Label8: System.Web.UI.WebControls.Label;
    TextPai: System.Web.UI.WebControls.TextBox;
    Label10: System.Web.UI.WebControls.Label;
    TextMae: System.Web.UI.WebControls.TextBox;
    Label11: System.Web.UI.WebControls.Label;
    TextConjuge: System.Web.UI.WebControls.TextBox;
    Label12: System.Web.UI.WebControls.Label;
    Label13: System.Web.UI.WebControls.Label;
    TextData_nasc_conjuge: System.Web.UI.WebControls.TextBox;
    TextEndereco: System.Web.UI.WebControls.TextBox;
    Label14: System.Web.UI.WebControls.Label;
    Label15: System.Web.UI.WebControls.Label;
    TextPonto_referencia: System.Web.UI.WebControls.TextBox;
    TextBairro: System.Web.UI.WebControls.TextBox;
    Label16: System.Web.UI.WebControls.Label;
    Label17: System.Web.UI.WebControls.Label;
    Label18: System.Web.UI.WebControls.Label;
    TextCep: System.Web.UI.WebControls.TextBox;
    Label19: System.Web.UI.WebControls.Label;
    TextNaturalidade: System.Web.UI.WebControls.TextBox;
    Label20: System.Web.UI.WebControls.Label;
    Label21: System.Web.UI.WebControls.Label;
    TextTelefone: System.Web.UI.WebControls.TextBox;
    Label22: System.Web.UI.WebControls.Label;
    Label23: System.Web.UI.WebControls.Label;
    TextNome_dependente: System.Web.UI.WebControls.TextBox;
    TextFicha: System.Web.UI.WebControls.TextBox;
    Label24: System.Web.UI.WebControls.Label;
    Label25: System.Web.UI.WebControls.Label;
    TextData_entrada: System.Web.UI.WebControls.TextBox;
    Label27: System.Web.UI.WebControls.Label;
    TextData_saida: System.Web.UI.WebControls.TextBox;
    Label28: System.Web.UI.WebControls.Label;
    TextStr_socio: System.Web.UI.WebControls.TextBox;
    Label30: System.Web.UI.WebControls.Label;
    TextDoc_atividades: System.Web.UI.WebControls.TextBox;
    Label31: System.Web.UI.WebControls.Label;
    Label32: System.Web.UI.WebControls.Label;
    TextApelido: System.Web.UI.WebControls.TextBox;
    Label33: System.Web.UI.WebControls.Label;
    Text: System.Web.UI.WebControls.TextBox;
    Label34: System.Web.UI.WebControls.Label;
    TextGrau_instrucao: System.Web.UI.WebControls.TextBox;
    Label35: System.Web.UI.WebControls.Label;
    TextNumero_filhos: System.Web.UI.WebControls.TextBox;
    Label36: System.Web.UI.WebControls.Label;
    TextObs_doc_atividade: System.Web.UI.WebControls.TextBox;
    Label9: System.Web.UI.WebControls.Label;
    Label37: System.Web.UI.WebControls.Label;
    Label38: System.Web.UI.WebControls.Label;
    Label39: System.Web.UI.WebControls.Label;
    TextObs_form_atividade: System.Web.UI.WebControls.TextBox;
    Label40: System.Web.UI.WebControls.Label;
    TextObs_prod_cultiv: System.Web.UI.WebControls.TextBox;
    TextNome_patrao: System.Web.UI.WebControls.TextBox;
    TextGrau_parent_depend: System.Web.UI.WebControls.TextBox;
    Label42: System.Web.UI.WebControls.Label;
    Label43: System.Web.UI.WebControls.Label;
    TextCpf: System.Web.UI.WebControls.TextBox;
    TextRg: System.Web.UI.WebControls.TextBox;
    Label44: System.Web.UI.WebControls.Label;
    TextTitulo_eleitor: System.Web.UI.WebControls.TextBox;
    Label45: System.Web.UI.WebControls.Label;
    TextZona: System.Web.UI.WebControls.TextBox;
    Label46: System.Web.UI.WebControls.Label;
    TextSecao: System.Web.UI.WebControls.TextBox;
    Label47: System.Web.UI.WebControls.Label;
    TextCtps: System.Web.UI.WebControls.TextBox;
    Label48: System.Web.UI.WebControls.Label;
    TextNit: System.Web.UI.WebControls.TextBox;
    Label49: System.Web.UI.WebControls.Label;
    Label50: System.Web.UI.WebControls.Label;
    Label51: System.Web.UI.WebControls.Label;
    TextVizinho_3: System.Web.UI.WebControls.TextBox;
    TextVizinho_4: System.Web.UI.WebControls.TextBox;
    Label52: System.Web.UI.WebControls.Label;
    Label53: System.Web.UI.WebControls.Label;
    TextVizinho_1: System.Web.UI.WebControls.TextBox;
    TextVizinho_2: System.Web.UI.WebControls.TextBox;
    TextLocal_trab: System.Web.UI.WebControls.TextBox;
    TextDatas_ini_fim: System.Web.UI.WebControls.TextBox;
    Label55: System.Web.UI.WebControls.Label;
    TextData_nasc_depend: System.Web.UI.WebControls.TextBox;
    Label41: System.Web.UI.WebControls.Label;
    Label56: System.Web.UI.WebControls.Label;
    Label57: System.Web.UI.WebControls.Label;
    BtnCancelar: System.Web.UI.WebControls.Button;
    Button1: System.Web.UI.WebControls.Button;
    Button2: System.Web.UI.WebControls.Button;
    Button3: System.Web.UI.WebControls.Button;
    Button4: System.Web.UI.WebControls.Button;
    Button5: System.Web.UI.WebControls.Button;
    Button6: System.Web.UI.WebControls.Button;
    RequiredFieldValidator1: System.Web.UI.WebControls.RequiredFieldValidator;
    FbConnection1: FirebirdSql.Data.Firebird.FbConnection;
    FbComVerifica: FirebirdSql.Data.Firebird.FbCommand;
    Label54: System.Web.UI.WebControls.Label;
    Label58: System.Web.UI.WebControls.Label;
    Label59: System.Web.UI.WebControls.Label;
    Label60: System.Web.UI.WebControls.Label;
    Label61: System.Web.UI.WebControls.Label;
    Label62: System.Web.UI.WebControls.Label;
    Label63: System.Web.UI.WebControls.Label;
    BtnSalvar: System.Web.UI.WebControls.Button;
    BtnExcluir: System.Web.UI.WebControls.Button;
    FbDataAdapter1: FirebirdSql.Data.Firebird.FbDataAdapter;
    FbCommand1: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand2: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand3: FirebirdSql.Data.Firebird.FbCommand;
    FbCommand4: FirebirdSql.Data.Firebird.FbCommand;
    MessageBox1: ControleMessageBox.MessageBox;
    TextSexo: System.Web.UI.WebControls.TextBox;
    BtnSexo: System.Web.UI.WebControls.Button;
    TextEstado_civil: System.Web.UI.WebControls.TextBox;
    BtnEstado_civil: System.Web.UI.WebControls.Button;
    BtnEstado_uf: System.Web.UI.WebControls.Button;
    TextEstado_uf: System.Web.UI.WebControls.TextBox;
    TextNacionalidade: System.Web.UI.WebControls.TextBox;
    BtnNacionalidade: System.Web.UI.WebControls.Button;
    BtnNaturalidade: System.Web.UI.WebControls.Button;
    TextCidade: System.Web.UI.WebControls.TextBox;
    BtnCidade: System.Web.UI.WebControls.Button;
    TextAtividade: System.Web.UI.WebControls.TextBox;
    BtnAtividade: System.Web.UI.WebControls.Button;
    TextForma_de_atividade: System.Web.UI.WebControls.TextBox;
    BtnForma_de_atividade: System.Web.UI.WebControls.Button;
    TextRegime_de_trabalho: System.Web.UI.WebControls.TextBox;
    BtnRegime_de_trabalho: System.Web.UI.WebControls.Button;
    TextMes_ini_atividade: System.Web.UI.WebControls.TextBox;
    BtnMes_ini_atividade: System.Web.UI.WebControls.Button;
    TextProduto_agricola: System.Web.UI.WebControls.TextBox;
    BtnProduto_agricola: System.Web.UI.WebControls.Button;
    TextSocio_aposentado: System.Web.UI.WebControls.TextBox;
    BtnSocio_aposentado: System.Web.UI.WebControls.Button;
    TextAposent_contribuinte: System.Web.UI.WebControls.TextBox;
    BtnAposent_contribuinte: System.Web.UI.WebControls.Button;
    ImgBtnData_nascimento: System.Web.UI.WebControls.ImageButton;
    ImgBtnData_nasc_conjuge: System.Web.UI.WebControls.ImageButton;
    ImgBtnData_entrada: System.Web.UI.WebControls.ImageButton;
    ImgBtnData_saida: System.Web.UI.WebControls.ImageButton;
    RequiredFieldValidator2: System.Web.UI.WebControls.RequiredFieldValidator;
    RequiredFieldValidator3: System.Web.UI.WebControls.RequiredFieldValidator;
    ValidationSummary1: System.Web.UI.WebControls.ValidationSummary;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
    Cod_Soci: System.Object;
  public
    { Public Declarations }
    procedure AbrirCadastro;
    procedure ExecutarCommand(Com: fbCommand);
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
procedure TWebForm1.InitializeComponent;
begin
  Self.FbConnection1 := FirebirdSql.Data.Firebird.FbConnection.Create;
  Self.FbComVerifica := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbDataAdapter1 := FirebirdSql.Data.Firebird.FbDataAdapter.Create;
  Self.FbCommand4 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand2 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand1 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Self.FbCommand3 := FirebirdSql.Data.Firebird.FbCommand.Create;
  Include(Self.BtnSexo.Click, Self.BtnSexo_Click);
  Include(Self.BtnEstado_uf.Click, Self.BtnEstado_uf_Click);
  Include(Self.BtnNacionalidade.Click, Self.BtnNacionalidade_Click);
  Include(Self.BtnAtividade.Click, Self.BtnAtividade_Click);
  Include(Self.BtnMes_ini_atividade.Click, Self.BtnMes_ini_atividade_Click);
  Include(Self.BtnSocio_aposentado.Click, Self.BtnSocio_aposentado_Click);
  Include(Self.BtnAposent_contribuinte.Click, Self.BtnAposent_contribuinte_Click);
  Include(Self.BtnProduto_agricola.Click, Self.BtnProduto_agricola_Click);
  Include(Self.BtnForma_de_atividade.Click, Self.BtnForma_de_atividade_Click);
  Include(Self.BtnRegime_de_trabalho.Click, Self.BtnRegime_de_trabalho_Click);
  Include(Self.BtnCidade.Click, Self.BtnCidade_Click);
  Include(Self.BtnNaturalidade.Click, Self.BtnNaturalidade_Click);
  Include(Self.BtnEstado_civil.Click, Self.BtnEstado_civil_Click);
  Include(Self.BtnSalvar.Click, Self.BtnSalvar_Click);
  Include(Self.ImgBtnData_nascimento.Click, Self.ImgBtnData_nascimento_Click);
  Include(Self.ImgBtnData_nasc_conjuge.Click, Self.ImgBtnData_nasc_conjuge_Click);
  Include(Self.ImgBtnData_entrada.Click, Self.ImgBtnData_entrada_Click);
  Include(Self.ImgBtnData_saida.Click, Self.ImgBtnData_saida_Click);
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
  // FbComVerifica
  // 
  Self.FbComVerifica.CommandText := 'select count(1) from SOCIOS where upper' +
  '(CPF) = ?';
  Self.FbComVerifica.Connection := Self.FbConnection1;
  Self.FbComVerifica.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('C' +
      'PF', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'CPF', System.Data.DataRowVersion.Current, 
        nil));
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
  Self.FbCommand4.CommandText := 'DELETE FROM SOCIOS WHERE cod_soci = ?';
  Self.FbCommand4.Connection := Self.FbConnection1;
  Self.FbCommand4.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p12', FirebirdSql.Data.Firebird.FbDbType.Integer, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'COD_SOCI', System.Data.DataRowVersion.Original, 
        nil));
  // 
  // FbCommand2
  // 
  Self.FbCommand2.CommandText := 'INSERT INTO SOCIOS (nome,'#13#10'         ' +
  '    data_nascimento,'#13#10'             pai,'#13#10'             mae,'#13 +
  #10'             endereco,'#13#10'             bairro,'#13#10'            ' +
  ' cidade,'#13#10'             naturalidade,'#13#10'             cpf,'#13#10 +
  '             rg,'#13#10'             data_entrada,'#13#10'             se' +
  'xo,'#13#10'             apelido,'#13#10'             conjuge,'#13#10'    ' +
  '         data_nasc_conjuge,'#13#10'             numero_filhos,'#13#10'   ' +
  '          estado_civil,'#13#10'             grau_instrucao,'#13#10'      ' +
  '       cep,'#13#10'             nacionalidade,'#13#10'             nit,'#13 +
  #10'             telefone,'#13#10'             ctps,'#13#10'             s' +
  'tr_socio,'#13#10'             ficha,'#13#10'             data_saida,'#13#10 +
  '             socio_aposentado,'#13#10'             aposent_contribuinte,'#13 +
  #10'             atividade,'#13#10'             forma_de_atividade,'#13#10 +
  '             regime_de_trabalho,'#13#10'             vizinho_1,'#13#10'  ' +
  '           vizinho_2,'#13#10'             vizinho_3,'#13#10'             ' +
  'vizinho_4,'#13#10'             produto_agricola,'#13#10'             mes_' +
  'ini_atividade,'#13#10'             area_plantada,'#13#10'             dat' +
  'a_edicao,'#13#10'             ponto_referencia,'#13#10'             titul' +
  'o_eleitor,'#13#10'             zona,'#13#10'             secao,'#13#10'  ' +
  '           estado_uf,'#13#10'             obs_form_atividade,'#13#10'    ' +
  '         doc_atividades,'#13#10'             obs_doc_atividade,'#13#10'  ' +
  '           nome_patrao,'#13#10'             local_trab,'#13#10'          ' +
  '   datas_ini_fim,'#13#10'             obs_prod_cultiv,'#13#10'           ' +
  '  nome_dependente,'#13#10'             grau_parent_depend,'#13#10'       ' +
  '      data_nasc_depend)'#13#10'             VALUES'#13#10'(@p1,@p2,@p3,@p' +
  '4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p14,@p15,@p16,@p17,@p18,@p19,@p20,@p21,@' +
  'p22,@p23,@p24,@p25,@p26,@p27,@p28,@p29,@p30,@p31,@p32,@p33,@p34,@p35,@p36' +
  ',@p37,@p38,@p39,@p40,@p41,@p42,@p43,@p44,@p45,@p46,@p47,@p48,@p49,@p50,@p' +
  '51,@p52,@p53,@p54,@p55,@p56)';
  Self.FbCommand2.Connection := Self.FbConnection1;
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NOME', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_NASCIMENTO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p3', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'PAI', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p4', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'MAE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p5', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ENDERECO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p6', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'BAIRRO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p7', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p8', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NATURALIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p9', FirebirdSql.Data.Firebird.FbDbType.VarChar, 15, 'CPF'));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p10', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'RG', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p11', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_ENTRADA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p14', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'SEXO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p15', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'APELIDO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p16', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CONJUGE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p17', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_NASC_CONJUGE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p18', FirebirdSql.Data.Firebird.FbDbType.VarChar, 3, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NUMERO_FILHOS', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p19', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ESTADO_CIVIL', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p20', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'GRAU_INSTRUCAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p21', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CEP', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p22', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NACIONALIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p23', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NIT', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p24', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'TELEFONE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p25', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CTPS', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p26', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'STR_SOCIO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p27', FirebirdSql.Data.Firebird.FbDbType.Integer, 4, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'FICHA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p28', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_SAIDA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p29', FirebirdSql.Data.Firebird.FbDbType.VarChar, 3, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'SOCIO_APOSENTADO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p30', FirebirdSql.Data.Firebird.FbDbType.VarChar, 3, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'APOSENT_CONTRIBUINTE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p31', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ATIVIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p32', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'FORMA_DE_ATIVIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p33', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'REGIME_DE_TRABALHO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p34', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'VIZINHO_1', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p35', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'VIZINHO_2', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p36', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'VIZINHO_3', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p37', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'VIZINHO_4', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p38', FirebirdSql.Data.Firebird.FbDbType.VarChar, 80, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'PRODUTO_AGRICOLA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p39', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'MES_INI_ATIVIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p40', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'AREA_PLANTADA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p41', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_EDICAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p42', FirebirdSql.Data.Firebird.FbDbType.VarChar, 35, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'PONTO_REFERENCIA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p43', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'TITULO_ELEITOR', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p44', FirebirdSql.Data.Firebird.FbDbType.VarChar, 5, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ZONA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p45', FirebirdSql.Data.Firebird.FbDbType.VarChar, 5, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'SECAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p46', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ESTADO_UF', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p47', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'obs_form_atividade', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p48', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'doc_atividades', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p49', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'obs_doc_atividade', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p50', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_patrao', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p51', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'local_trab', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p52', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'datas_ini_fim', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p53', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'obs_prod_cultiv', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p54', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_dependente', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p55', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'grau_parent_depend', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand2.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p56', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'data_nasc_depend', System.Data.DataRowVersion.Current, 
        nil));
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
  // 
  // FbCommand3
  // 
  Self.FbCommand3.CommandText := 'UPDATE SOCIOS SET NOME = @p1,DATA_NASCIMEN' +
  'TO = @p2,PAI = @p3,MAE = @p4,ENDERECO = @p5,BAIRRO = @p6,CIDADE = @p7,NAT' +
  'URALIDADE = @p8,CPF = @p9,RG = @p10,DATA_ENTRADA = @p11,MATRICULA = @p13,' +
  'SEXO = @p14,APELIDO = @p15,CONJUGE = @p16,DATA_NASC_CONJUGE = @p17,NUMERO' +
  '_FILHOS = @p18,ESTADO_CIVIL = @p19,GRAU_INSTRUCAO = @p20,CEP = @p21,NACIO' +
  'NALIDADE = @p22,NIT = @p23,TELEFONE = @p24,CTPS = @p25,STR_SOCIO = @p26,F' +
  'ICHA = @p27,DATA_SAIDA = @p28,SOCIO_APOSENTADO = @p29,APOSENT_CONTRIBUINT' +
  'E = @p30,ATIVIDADE = @p31,FORMA_DE_ATIVIDADE = @p32,REGIME_DE_TRABALHO = ' +
  '@p33,VIZINHO_1 = @p34,VIZINHO_2 = @p35,VIZINHO_3 = @p36,VIZINHO_4 = @p37,' +
  'PRODUTO_AGRICOLA = @p38,MES_INI_ATIVIDADE = @p39,AREA_PLANTADA = @p40,PON' +
  'TO_REFERENCIA = @p42,TITULO_ELEITOR = @p43,ZONA = @p44,SECAO = @p45,ESTAD' +
  'O_UF = @p46,OBS_FORM_ATIVIDADE = @p47,DOC_ATIVIDADES = @p48,OBS_DOC_ATIVI' +
  'DADE = @p49,NOME_PATRAO = @p50,LOCAL_TRAB = @p51,DATAS_INI_FIM = @p52,OBS' +
  '_PROD_CULTIV = @p53,NOME_DEPENDENTE = @p54,GRAU_PARENT_DEPEND = @p55,DATA' +
  '_NASC_DEPEND = @p56 WHERE (COD_SOCI = @p12)';
  Self.FbCommand3.Connection := Self.FbConnection1;
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p1', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NOME', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p2', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_NASCIMENTO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p3', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'PAI', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p4', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'MAE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p5', FirebirdSql.Data.Firebird.FbDbType.VarChar, 50, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ENDERECO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p6', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'BAIRRO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p7', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p8', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NATURALIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p9', FirebirdSql.Data.Firebird.FbDbType.VarChar, 15, 'CPF'));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p10', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'RG', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p11', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_ENTRADA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p12', FirebirdSql.Data.Firebird.FbDbType.Integer, 4, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'COD_SOCI', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p13', FirebirdSql.Data.Firebird.FbDbType.VarChar, 11, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'MATRICULA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p14', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'SEXO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p15', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'APELIDO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p16', FirebirdSql.Data.Firebird.FbDbType.VarChar, 51, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CONJUGE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p17', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_NASC_CONJUGE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p18', FirebirdSql.Data.Firebird.FbDbType.VarChar, 3, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NUMERO_FILHOS', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p19', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ESTADO_CIVIL', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p20', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'GRAU_INSTRUCAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p21', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CEP', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p22', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NACIONALIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p23', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'NIT', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p24', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'TELEFONE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p25', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'CTPS', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p26', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'STR_SOCIO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p27', FirebirdSql.Data.Firebird.FbDbType.Integer, 4, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'FICHA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p28', FirebirdSql.Data.Firebird.FbDbType.Date, 0, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'DATA_SAIDA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p29', FirebirdSql.Data.Firebird.FbDbType.VarChar, 3, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'SOCIO_APOSENTADO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p30', FirebirdSql.Data.Firebird.FbDbType.VarChar, 3, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'APOSENT_CONTRIBUINTE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p31', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ATIVIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p32', FirebirdSql.Data.Firebird.FbDbType.VarChar, 30, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'FORMA_DE_ATIVIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p33', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'REGIME_DE_TRABALHO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p34', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'VIZINHO_1', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p35', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'VIZINHO_2', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p36', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'VIZINHO_3', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p37', FirebirdSql.Data.Firebird.FbDbType.VarChar, 40, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'VIZINHO_4', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p38', FirebirdSql.Data.Firebird.FbDbType.VarChar, 80, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'PRODUTO_AGRICOLA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p39', FirebirdSql.Data.Firebird.FbDbType.VarChar, 10, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'MES_INI_ATIVIDADE', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p40', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'AREA_PLANTADA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p42', FirebirdSql.Data.Firebird.FbDbType.VarChar, 35, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'PONTO_REFERENCIA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p43', FirebirdSql.Data.Firebird.FbDbType.VarChar, 20, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'TITULO_ELEITOR', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p44', FirebirdSql.Data.Firebird.FbDbType.VarChar, 5, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ZONA', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p45', FirebirdSql.Data.Firebird.FbDbType.VarChar, 5, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'SECAO', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p46', FirebirdSql.Data.Firebird.FbDbType.VarChar, 25, System.Data.ParameterDirection.Input, 
        True, (Byte(0)), (Byte(0)), 'ESTADO_UF', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p47', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'obs_form_atividade', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p48', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'doc_atividades', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p49', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'obs_doc_atividade', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p50', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_patrao', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p51', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'local_trab', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p52', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'datas_ini_fim', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p53', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'obs_prod_cultiv', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p54', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'nome_dependente', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p55', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'grau_parent_depend', System.Data.DataRowVersion.Current, 
        nil));
  Self.FbCommand3.Parameters.Add(FirebirdSql.Data.Firebird.FbParameter.Create('@' +
      'p56', FirebirdSql.Data.Firebird.FbDbType.VarChar, 0, System.Data.ParameterDirection.Input, 
        False, (Byte(0)), (Byte(0)), 'data_nasc_depend', System.Data.DataRowVersion.Current, 
        nil));
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

// Remove caracteres de uma string deixando apenas números
function RemoveChar(Const Texto:String):String;
  var
    I: integer;
    S: string;
  begin
    S := '';
    for I := 1 To Length(Texto) Do
    begin
      if (Texto[I] in ['0'..'9']) then
      begin
        S := S + Copy(Texto, I, 1);
      end;
    end;
    result := S;
  end;

Function FormataCPF(CPF : string): string;
begin
Result := Copy(CPF,1,3)+'.'+Copy(CPF,4,3)+'.'+Copy(CPF,7,3)+'-'+Copy(CPF,10,2);
end;

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
// TODO: Put user code to initialize the page here
    Cod_Soci:= Request.QueryString['cod_soci'];
if Cod_Soci = nil then
BtnExcluir.Visible:= False
else
BtnExcluir.Visible:= True;
  if not IsPostBack then
  begin
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

procedure TWebForm1.ImgBtnData_saida_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Calendario.aspx", "",');
  script.Append('"resizable=no, menubar=no,scrollbars=no, width=370,height=240")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextData_saida';
end;

procedure TWebForm1.ImgBtnData_entrada_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Calendario.aspx", "",');
  script.Append('"resizable=no, menubar=no,scrollbars=no, width=370,height=240")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextData_entrada';
end;

procedure TWebForm1.ImgBtnData_nasc_conjuge_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Calendario.aspx", "",');
  script.Append('"resizable=no, menubar=no,scrollbars=no, width=370,height=240")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextData_nasc_conjuge';
end;

procedure TWebForm1.ImgBtnData_nascimento_Click(sender: System.Object; e: System.Web.UI.ImageClickEventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Calendario.aspx", "",');
  script.Append('"resizable=no, menubar=no,scrollbars=no, width=370,height=240")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextDataNascimento';
end;

procedure TWebForm1.BtnAposent_contribuinte_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextAposent_contribuinte';
  Session['Comando']:= 'select distinct aposent_contribuinte from SOCIOS where aposent_contribuinte <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnSocio_aposentado_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextSocio_aposentado';
  Session['Comando']:= 'select distinct socio_aposentado from SOCIOS where socio_aposentado <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnProduto_agricola_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextProduto_agricola';
  Session['Comando']:= 'select distinct produto_agricola from SOCIOS where produto_agricola <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnMes_ini_atividade_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextMes_ini_atividade';
  Session['Comando']:= 'select distinct mes_ini_atividade from SOCIOS where mes_ini_atividade <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnRegime_de_trabalho_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextRegime_de_trabalho';
  Session['Comando']:= 'select distinct regime_de_trabalho from SOCIOS where regime_de_trabalho <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnForma_de_atividade_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextForma_de_atividade';
  Session['Comando']:= 'select distinct forma_de_atividade from SOCIOS where forma_de_atividade <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnAtividade_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextAtividade';
  Session['Comando']:= 'select distinct atividade from SOCIOS where atividade <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnNacionalidade_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextNacionalidade';
  Session['Comando']:= 'select distinct nacionalidade from SOCIOS where nacionalidade <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnNaturalidade_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextNaturalidade';
  Session['Comando']:= 'select distinct naturalidade from SOCIOS where naturalidade <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnEstado_uf_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextEstado_uf';
  Session['Comando']:= 'select distinct estado_uf from SOCIOS where estado_uf <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnCidade_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextCidade';
  Session['Comando']:= 'select distinct cidade from SOCIOS where cidade <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnEstado_civil_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextEstado_civil';
  Session['Comando']:= 'select distinct estado_civil from SOCIOS where estado_civil <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.BtnSexo_Click(sender: System.Object; e: System.EventArgs);
begin
  script := StringBuilder.Create;
  script.Append('<script language="JavaScript">');
  script.Append('window.open("Seleciona.aspx", "",');
  script.Append('"resizable=no, menubar=no, scrollbars=yes, width= 450, height= 300")');
  script.Append('</script>');
  RegisterClientScriptBlock('client', script.ToString);
  Session['Text']:= 'TextSexo';
  Session['Comando']:= 'select distinct sexo from SOCIOS where sexo <> '+QuotedStr('is null')+' order by 1';
end;

procedure TWebForm1.OnInit(e: EventArgs);
begin
  //
  // Required for Designer support
  //
  InitializeComponent;
  inherited OnInit(e);
end;

procedure TWebForm1.BtnSalvar_Click(sender: System.Object; e: System.EventArgs);
var
dr: FbDataReader;
begin
    if Cod_Soci = nil then
    begin
    // Inicio  Verifica cadastro existente
  FbConnection1.Open;
  try
    FbComVerifica.Parameters[0].Value:= TextCpf.Text;
    dr:= FbComVerifica.ExecuteReader;
    if dr.Read() then
    begin
    if StrToInt(dr['COUNT'].ToString) <> 0 then
    begin
    MessageBox1.ShowMessage('CPF já cadastrado no sistema! Informe outro número!');
    Exit;
    end else
    end;
  finally
    FbConnection1.Close;
  end;
// Fim Verifica cadastro existente
    ExecutarCommand(FbDataAdapter1.InsertCommand);
    Response.Redirect('AlteraSocio.aspx');
    Exit;
  end else
   // Inicio Verifica se houve mudanças no campo
   if TextCpf.Text <> Session['Cpf'].ToString then
   begin
   // InicioVerifica cadastro existente
  FbConnection1.Open;
  try
    FbComVerifica.Parameters[0].Value:= TextCpf.Text;
    dr:= FbComVerifica.ExecuteReader;
    if dr.Read() then
    begin
    if StrToInt(dr['COUNT'].ToString) <> 0 then
    begin
    MessageBox1.ShowMessage('CPF já cadastrado no sistema! Informe outro número!');
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
  Response.Redirect('LocalizaSocios.aspx');
end;

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
             TextNome.Text:= dr['nome'].ToString;
             TextDataNascimento.Text:= System.String.Format('{0:dd/MM/yyyy}', dr['data_nascimento']);
             TextPai.Text:= dr['pai'].ToString;
             TextMae.Text:= dr['mae'].ToString;
             TextEndereco.Text:= dr['endereco'].ToString;
             TextBairro.Text:= dr['bairro'].ToString;
             TextCidade.Text:= dr['cidade'].ToString;
             TextNaturalidade.Text:= dr['naturalidade'].ToString;
             TextCpf.Text:= dr['cpf'].ToString;
             TextRg.Text:= dr['rg'].ToString;
             TextData_entrada.Text:= System.String.Format('{0:dd/MM/yyyy}', dr['data_entrada']);
             //TextNome.Text:= dr['cod_soci'].ToString;
             TextMatricula.Text:= ZeroEsquerda(strtoint(dr['matricula'].ToString), 5); //  dr['matricula'].ToString;
             TextSexo.Text:= dr['sexo'].ToString;
             TextApelido.Text:= dr['apelido'].ToString;
             TextConjuge.Text:= dr['conjuge'].ToString;
             TextData_nasc_conjuge.Text:=  System.String.Format('{0:dd/MM/yyyy}', dr['data_nasc_conjuge']);
             TextNumero_filhos.Text:= dr['numero_filhos'].ToString;
             TextEstado_civil.Text:= dr['estado_civil'].ToString;
             TextGrau_instrucao.Text:= dr['grau_instrucao'].ToString;
             TextCep.Text:= dr['cep'].ToString;
             TextNacionalidade.Text:= dr['nacionalidade'].ToString;
             TextNit.Text:= dr['nit'].ToString;
             TextTelefone.Text:= dr['telefone'].ToString;
             TextCtps.Text:= dr['ctps'].ToString;
             TextStr_socio.Text:= dr['str_socio'].ToString;
             TextFicha.Text:= dr['ficha'].ToString;
             TextData_saida.Text:= System.String.Format('{0:dd/MM/yyyy}', dr['data_saida']);
             TextSocio_aposentado.Text:= dr['socio_aposentado'].ToString;
             TextAposent_contribuinte.Text:= dr['aposent_contribuinte'].ToString;
             TextAtividade.Text:= dr['atividade'].ToString;
             TextForma_de_atividade.Text:= dr['forma_de_atividade'].ToString;
             TextRegime_de_trabalho.Text:= dr['regime_de_trabalho'].ToString;
             TextVizinho_1.Text:= dr['vizinho_1'].ToString;
             TextVizinho_2.Text:= dr['vizinho_2'].ToString;
             TextVizinho_3.Text:= dr['vizinho_3'].ToString;
             TextVizinho_4.Text:= dr['vizinho_4'].ToString;
             TextProduto_agricola.Text:= dr['produto_agricola'].ToString;
             TextMes_ini_atividade.Text:= dr['mes_ini_atividade'].ToString;
             TextArea_plantada.Text:= dr['area_plantada'].ToString;
             TextDataEdicao.Text:= System.String.Format('{0:dd/MM/yyyy}', dr['data_edicao']);
             TextObs_form_atividade.Text:= dr['obs_form_atividade'].ToString;
             TextDoc_atividades.Text:= dr['doc_atividades'].ToString;
             TextObs_doc_atividade.Text:= dr['obs_doc_atividade'].ToString;
             TextPonto_referencia.Text:= dr['ponto_referencia'].ToString;
             TextNome_patrao.Text:= dr['nome_patrao'].ToString;
             TextLocal_trab.Text:= dr['local_trab'].ToString;
             TextDatas_ini_fim.Text:= dr['datas_ini_fim'].ToString;
             TextObs_prod_cultiv.Text:= dr['obs_prod_cultiv'].ToString;
             TextTitulo_eleitor.Text:= dr['titulo_eleitor'].ToString;
             TextZona.Text:= dr['zona'].ToString;
             TextSecao.Text:= dr['secao'].ToString;
             TextEstado_uf.Text:= dr['estado_uf'].ToString;
             TextNome_dependente.Text:= dr['nome_dependente'].ToString;
             TextGrau_parent_depend.Text:= dr['grau_parent_depend'].ToString;
             TextData_nasc_depend.Text:= dr['data_nasc_depend'].ToString;

             Session['Cpf']:=  dr['Cpf'];
      finally
        Connection.Close();
      end;
   end;
end;

procedure TWebForm1.ExecutarCommand(Com: fbCommand);
begin
  Com.Connection.Open();
  try
    { Para inserção não deve ser fornecido o cod }
    if Cod_Soci <> nil then
    begin
    Com.Parameters['@p12'].Value := Cod_Soci;
    Com.Parameters['@p13'].Value := TextMatricula.Text;
    end;
    if Com <> FbDataAdapter1.DeleteCommand then
    begin
             if Com = FbDataAdapter1.InsertCommand then
             begin
             Com.Parameters['@p41'].Value := System.String.Format('{0:dd/MM/yyyy}', System.DateTime.Now);
             end;
             Com.Parameters['@p1'].Value := TextNome.Text.ToUpper;
             Com.Parameters['@p2'].Value := TextDataNascimento.Text;
             Com.Parameters['@p3'].Value := TextPai.Text.ToUpper;
             Com.Parameters['@p4'].Value := TextMae.Text.ToUpper;
             Com.Parameters['@p5'].Value := TextEndereco.Text.ToUpper;
             Com.Parameters['@p6'].Value := TextBairro.Text.ToUpper;
             Com.Parameters['@p7'].Value := TextCidade.Text.ToUpper;
             Com.Parameters['@p8'].Value := TextNaturalidade.Text.ToUpper;
             Com.Parameters['@p9'].Value := FormataCPF(RemoveChar(TextCpf.Text));
             Com.Parameters['@p10'].Value := TextRg.Text;
             if TextData_entrada.Text <> Nil then
             begin
             Com.Parameters['@p11'].Value := TextData_entrada.Text;
             end;
             Com.Parameters['@p14'].Value := TextSexo.Text.ToUpper;
             Com.Parameters['@p15'].Value := TextApelido.Text.ToUpper;
             Com.Parameters['@p16'].Value := TextConjuge.Text.ToUpper;
             if TextData_nasc_conjuge.Text <> Nil then
             begin
             Com.Parameters['@p17'].Value := TextData_nasc_conjuge.Text;
             end;
             Com.Parameters['@p18'].Value := TextNumero_filhos.Text;
             Com.Parameters['@p19'].Value := TextEstado_civil.Text.ToUpper;
             Com.Parameters['@p20'].Value := TextGrau_instrucao.Text.ToUpper;
             Com.Parameters['@p21'].Value := TextCep.Text;
             Com.Parameters['@p22'].Value := TextNacionalidade.Text.ToUpper;
             Com.Parameters['@p23'].Value := TextNit.Text;
             Com.Parameters['@p24'].Value := TextTelefone.Text;
             Com.Parameters['@p25'].Value := TextCtps.Text;
             Com.Parameters['@p26'].Value := TextStr_socio.Text.ToUpper;
             Com.Parameters['@p27'].Value := TextFicha.Text;
             if TextData_saida.Text <> Nil then
             begin
             Com.Parameters['@p28'].Value := TextData_saida.Text;
             end;
             Com.Parameters['@p29'].Value := TextSocio_aposentado.Text.ToUpper;
             Com.Parameters['@p30'].Value := TextAposent_contribuinte.Text.ToUpper;
             Com.Parameters['@p31'].Value := TextAtividade.Text.ToUpper;
             Com.Parameters['@p32'].Value := TextForma_de_atividade.Text.ToUpper;
             Com.Parameters['@p33'].Value := TextRegime_de_trabalho.Text.ToUpper;
             Com.Parameters['@p34'].Value := TextVizinho_1.Text.ToUpper;
             Com.Parameters['@p35'].Value := TextVizinho_2.Text.ToUpper;
             Com.Parameters['@p36'].Value := TextVizinho_3.Text.ToUpper;
             Com.Parameters['@p37'].Value := TextVizinho_4.Text.ToUpper;
             Com.Parameters['@p38'].Value := TextProduto_agricola.Text.ToUpper;
             Com.Parameters['@p39'].Value := TextMes_ini_atividade.Text.ToUpper;
             Com.Parameters['@p40'].Value := TextArea_plantada.Text.ToUpper;
             Com.Parameters['@p42'].Value := TextPonto_referencia.Text.ToUpper;
             Com.Parameters['@p43'].Value := TextTitulo_eleitor.Text;
             Com.Parameters['@p44'].Value := TextZona.Text;
             Com.Parameters['@p45'].Value := TextSecao.Text;
             Com.Parameters['@p46'].Value := TextEstado_uf.Text.ToUpper;
             Com.Parameters['@p47'].Value := TextObs_form_atividade.Text.ToUpper;
             Com.Parameters['@p48'].Value := TextDoc_atividades.Text.ToUpper;
             Com.Parameters['@p49'].Value := TextObs_doc_atividade.Text.ToUpper;
             Com.Parameters['@p50'].Value := TextNome_patrao.Text.ToUpper;
             Com.Parameters['@p51'].Value := TextLocal_trab.Text.ToUpper;
             Com.Parameters['@p52'].Value := TextDatas_ini_fim.Text;
             Com.Parameters['@p53'].Value := TextObs_prod_cultiv.Text.ToUpper;
             Com.Parameters['@p54'].Value := TextNome_dependente.Text.ToUpper;
             Com.Parameters['@p55'].Value := TextGrau_parent_depend.Text.ToUpper;
             Com.Parameters['@p56'].Value := TextData_nasc_depend.Text;
             end;
    { Executa Comando Insert, Update ou Delete }
    Com.ExecuteNonQuery();
  finally
    Com.Connection.Close();
  end;
end;

procedure TWebForm1.BtnExcluir_Click(sender: System.Object; e: System.EventArgs);
begin
  ExecutarCommand(FbDataAdapter1.DeleteCommand);
  Response.Redirect('Default.aspx');
end;

procedure TWebForm1.BtnCancelar_Click(sender: System.Object; e: System.EventArgs);
begin
  Response.Redirect('Default.aspx');
end;

end.

