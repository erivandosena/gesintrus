
unit Recibo;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Drawing, System.Web, System.Web.SessionState,
  System.Web.UI, System.Web.UI.WebControls, System.Web.UI.HtmlControls,
  SysUtils;

type
  TWebForm1 = class(System.Web.UI.Page)
  {$REGION 'Designer Managed Code'}
  strict private
    procedure InitializeComponent;
  {$ENDREGION}
  strict private
    procedure Page_Load(sender: System.Object; e: System.EventArgs);
  strict protected
    Label1: System.Web.UI.WebControls.Label;
    Label2: System.Web.UI.WebControls.Label;
    Label3: System.Web.UI.WebControls.Label;
    procedure OnInit(e: EventArgs); override;
  private
    { Private Declarations }
  public
    { Public Declarations }
        type
  TNumeroStr = string;
  const
         Unidades: array[1..19] of TNumeroStr = ('um', 'dois', 'três', 'quatro','cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze',
         'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito','dezenove');
         Dezenas: array[1..9] of TNumeroStr = ('dez', 'vinte', 'trinta', 'quarenta','cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
         Centenas: array[1..9] of TNumeroStr = ('cem', 'duzentos', 'trezentos','quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos','novecentos');
         ErrorString = 'Valor fora da faixa';
         Min = 0.01;
         Max = 4294967295.99;
         Moeda = ' real ';
         Moedas = ' reais ';
         Centesimo = ' centavo ';
         Centesimos = ' centavos ';
  function NumeroParaExtenso(parmNumero: Real): string;
  function ConversaoRecursiva(N: LongWord): string;
  end;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support -- do not modify
/// the contents of this method with the code editor.
/// </summary>
function TWebForm1.ConversaoRecursiva(N: LongWord): string;
begin
case N of
                1..19:
                        Result := Unidades[N];
                20, 30, 40, 50, 60, 70, 80, 90:
                        Result := Dezenas[N div 10] + ' ';
                21..29, 31..39, 41..49, 51..59, 61..69, 71..79, 81..89, 91..99:
                        Result := Dezenas[N div 10] + ' e ' + ConversaoRecursiva(N mod 10);
                100, 200, 300, 400, 500, 600, 700, 800, 900:
                        Result := Centenas[N div 100] + ' ';
                101..199:
                        Result := ' cento e ' + ConversaoRecursiva(N mod 100);
                201..299, 301..399, 401..499, 501..599, 601..699, 701..799, 801..899, 901..999:
                        Result := Centenas[N div 100] + ' e ' + ConversaoRecursiva(N mod 100);
                1000..999999:
                        Result := ConversaoRecursiva(N div 1000) + ' mil ' + ConversaoRecursiva(N mod 1000);
                1000000..1999999:
                        Result := ConversaoRecursiva(N div 1000000) + ' milhão '+ ConversaoRecursiva(N mod 1000000);
                2000000..999999999:
                        Result := ConversaoRecursiva(N div 1000000) + ' milhões '+ ConversaoRecursiva(N mod 1000000);
                1000000000..1999999999:
                        Result := ConversaoRecursiva(N div 1000000000) + ' bilhão ' + ConversaoRecursiva(N mod 1000000000);
                2000000000..4294967295:
                        Result := ConversaoRecursiva(N div 1000000000) + ' bilhões ' + ConversaoRecursiva(N mod 1000000000);
        end;
end;

procedure TWebForm1.InitializeComponent;
begin
  Include(Self.Load, Self.Page_Load);
end;
{$ENDREGION}

procedure TWebForm1.Page_Load(sender: System.Object; e: System.EventArgs);
begin
  // TODO: Put user code to initialize the page here
Label1.Text:= '<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="549" id="AutoNumber1" height="130"> '+
  '<tr> '+
    '<td width="100%" height="24"> '+
    '<p align="center" style="margin-top: 0; margin-bottom: 0"><b> '+
    '<font face="Arial" style="font-size: 16pt">RECIBO</font></b></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="100%" height="21"> '+
    '<p align="right" style="margin-top: 0; margin-bottom: 0"><font face="Arial"> '+
    'VALOR R$<b> '+Session['R_Valor'].ToString+'</b></font></td> '+
  '</tr> '+
  '<tr> '+
    '<td width="100%" height="19"> '+
    '<p style="margin-top: 0; margin-bottom: 0">&nbsp;</td> '+
  '</tr> '+
  '<tr> '+
    '<td width="100%" align="justify" height="56"> '+
    '<p style="margin-top: 0; margin-bottom: 0"><font face="Arial">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '+
    'Recebi(emos) de(a)<b> '+Session['nome'].ToString.ToUpper+' </b>a quantia de<b><span style="text-transform: uppercase"> '+NumeroParaExtenso(Convert.ToDouble(Session['R_Valor'].ToString))+' </span></b> '+
    'referente a(ao)<b> '+Session['R_Descricao'].ToString.ToUpper+' </b>pelo que firmamos o presente RECIBO de '+
    'quitação.</font></td> '+
  '</tr> '+
'</table>';
    Label2.Text:= Session['STR_cidade'].ToString+', '+ FormatDateTime('dd "de" MMMM "de" yyyy',StrTodate(System.DateTime.Now.ToShortDateString));

    Label3.Text:= '<p align="center" style="margin-top: 0; margin-bottom: 0">______________________________</p><p align="center" style="margin-top: 0; margin-bottom: 0"><font face="Arial" size="1">Assinatura</font>';
end;

function TWebForm1.NumeroParaExtenso(parmNumero: Real): string;
begin
        if (parmNumero >= Min) and (parmNumero <= Max) then
        begin
       {Tratar reais}
                Result := ConversaoRecursiva(Round(Int(parmNumero)));
                if Round(Int(parmNumero)) = 1 then
                    Result := Result + Moeda
                else
                    if Round(Int(parmNumero)) <> 0 then
                       Result := Result + Moedas;
                    {Tratar centavos}
                    if not(Frac(parmNumero) = 0.00) then
                    begin
                            if Round(Int(parmNumero)) <> 0 then
                                Result := Result + ' e ';
                                Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));
                                if (Round(Frac(parmNumero) * 100) = 1) then
                                    Result := Result + centesimo
                                    else
                                            Result := Result + centesimos;
                                end;
                            end
                    else
       raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',[parmNumero, Min, Max]);
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

