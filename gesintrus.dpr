library gesintrus;

{%AspWebConfigContainer 'Web.config'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.dll'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.Data.dll'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.Drawing.dll'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.Web.dll'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.XML.dll'}
{%AspMarkupContainer 'Global.asax'}
{%AspMarkupContainer 'Default.aspx'}
{$R 'bin\gesintrus.dll.licenses' 'licenses.licx'}
{%DelphiDotNetAssemblyCompiler 'c:\arquivos delphi\projetos\componentes_ferramentas\componentes\skmmenu2.2.binary\skmMenu.dll'}
{%AspMarkupContainer 'WUC_Menu.ascx'}
{%AspMarkupContainer 'WUC_Rodape.ascx'}
{%AspMarkupContainer 'CadUsuarios.aspx'}
{%DelphiDotNetAssemblyCompiler 'c:\arquivos de programas\firebirdnetprovider1.7\FirebirdSql.Data.Firebird.dll'}
{$R 'CadUsuarios.TWebForm1.resources' 'CadUsuarios.resx'}
{%DelphiDotNetAssemblyCompiler 'c:\arquivos delphi\projetos\componentes_ferramentas\componentes\controlemessagebox\bin\ControleMessageBox.dll'}
{%AspMarkupContainer 'Login.aspx'}
{$R 'Login.TWebForm1.resources' 'Login.resx'}
{%AspMarkupContainer 'BuscaUsuario.aspx'}
{$R 'BuscaUsuario.TWebForm1.resources' 'BuscaUsuario.resx'}
{%AspMarkupContainer 'AlteraUsuario.aspx'}
{$R 'AlteraUsuario.TWebForm1.resources' 'AlteraUsuario.resx'}
{%AspMarkupContainer 'CadSindicato.aspx'}
{$R 'CadSindicato.TWebForm1.resources' 'CadSindicato.resx'}
{%AspMarkupContainer 'AlteraSocio.aspx'}
{$R 'AlteraSocio.TWebForm1.resources' 'AlteraSocio.resx'}
{%AspMarkupContainer 'LocalizaSocios.aspx'}
{$R 'LocalizaSocios.TWebForm1.resources' 'LocalizaSocios.resx'}
{$R 'Global.TGlobal.resources' 'Global.resx'}
{%AspMarkupContainer 'Seleciona.aspx'}
{$R 'Seleciona.TWebForm1.resources' 'Seleciona.resx'}
{%AspMarkupContainer 'Calendario.aspx'}
{%AspMarkupContainer 'Impressoes.aspx'}
{$R 'Impressoes.TWebForm1.resources' 'Impressoes.resx'}
{%AspMarkupContainer 'WUC_TimbleRelat.ascx'}
{$R 'WUC_TimbleRelat.TWebUserControl1.resources' 'WUC_TimbleRelat.resx'}
{%AspMarkupContainer 'RelDeclEnergia.aspx'}
{$R 'RelDeclEnergia.TWebForm1.resources' 'RelDeclEnergia.resx'}
{%AspMarkupContainer 'RelTransfSocio.aspx'}
{%AspMarkupContainer 'RelDeclAtividade.aspx'}
{$R 'Default.TWebForm1.resources' 'Default.resx'}
{%AspMarkupContainer 'AniverMes.aspx'}
{%AspMarkupContainer 'AniverDia.aspx'}
{$R 'AniverMes.TWebForm1.resources' 'AniverMes.resx'}
{$R 'AniverDia.TWebForm1.resources' 'AniverDia.resx'}
{%AspMarkupContainer 'RelAniverMes.aspx'}
{$R 'RelAniverMes.TWebForm1.resources' 'RelAniverMes.resx'}
{%AspMarkupContainer 'RelAniverDia.aspx'}
{$R 'RelAniverDia.TWebForm1.resources' 'RelAniverDia.resx'}
{%AspMarkupContainer 'LogOut.aspx'}
{%AspMarkupContainer 'FotoSocio.aspx'}
{$R 'FotoSocio.TWebForm1.resources' 'FotoSocio.resx'}
{%AspMarkupContainer 'CarteiraSocio.aspx'}
{%AspMarkupContainer 'Recibo.aspx'}
{%AspMarkupContainer 'ReciboDados.aspx'}
{%AspMarkupContainer 'Backup.aspx'}
{%DelphiDotNetAssemblyCompiler 'c:\arquivos delphi\projetos\componentes_ferramentas\componentes\magicajax\bin\MagicAjax.dll'}
{%DelphiDotNetAssemblyCompiler 'c:\arquivos de programas\arquivos comuns\borland shared\bds\shared assemblies\4.0\Borland.Data.Web.dll'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.Windows.Forms.dll'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.Design.dll'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.DirectoryServices.dll'}
{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\System.Runtime.Serialization.Formatters.Soap.dll'}
{$R 'WUC_Menu.TWebUserControl1.resources' 'WUC_Menu.resx'}

uses
  System.Reflection,
  System.Runtime.CompilerServices,
  Global in 'Global.pas' {Global.TGlobal: System.Web.HttpApplication},
  Default in 'Default.pas' {Default.TWebForm1: System.Web.UI.Page},
  WUC_Menu in 'WUC_Menu.pas' {WUC_Menu.TWebUserControl1: System.Web.UI.UserControl},
  WUC_Rodape in 'WUC_Rodape.pas' {WUC_Rodape.TWebUserControl1: System.Web.UI.UserControl},
  CadUsuarios in 'CadUsuarios.pas' {CadUsuarios.TWebForm1: System.Web.UI.Page},
  Login in 'Login.pas' {Login.TWebForm1: System.Web.UI.Page},
  BuscaUsuario in 'BuscaUsuario.pas' {BuscaUsuario.TWebForm1: System.Web.UI.Page},
  AlteraUsuario in 'AlteraUsuario.pas' {AlteraUsuario.TWebForm1: System.Web.UI.Page},
  CadSindicato in 'CadSindicato.pas' {CadSindicato.TWebForm1: System.Web.UI.Page},
  AlteraSocio in 'AlteraSocio.pas' {AlteraSocio.TWebForm1: System.Web.UI.Page},
  LocalizaSocios in 'LocalizaSocios.pas' {LocalizaSocios.TWebForm1: System.Web.UI.Page},
  Seleciona in 'Seleciona.pas' {Seleciona.TWebForm1: System.Web.UI.Page},
  Calendario in 'Calendario.pas' {Calendario.TWebForm2: System.Web.UI.Page},
  Impressoes in 'Impressoes.pas' {Impressoes.TWebForm1: System.Web.UI.Page},
  WUC_TimbleRelat in 'WUC_TimbleRelat.pas' {WUC_TimbleRelat.TWebUserControl1: System.Web.UI.UserControl},
  RelDeclEnergia in 'RelDeclEnergia.pas' {RelDeclEnergia.TWebForm1: System.Web.UI.Page},
  RelTransfSocio in 'RelTransfSocio.pas' {RelTransfSocio.TWebForm1: System.Web.UI.Page},
  RelDeclAtividade in 'RelDeclAtividade.pas' {RelDeclAtividade.TWebForm1: System.Web.UI.Page},
  AniverMes in 'AniverMes.pas' {AniverMes.TWebForm1: System.Web.UI.Page},
  AniverDia in 'AniverDia.pas' {AniverDia.TWebForm1: System.Web.UI.Page},
  RelAniverMes in 'RelAniverMes.pas' {RelAniverMes.TWebForm1: System.Web.UI.Page},
  RelAniverDia in 'RelAniverDia.pas' {RelAniverDia.TWebForm1: System.Web.UI.Page},
  LogOut in 'LogOut.pas' {LogOut.TWebForm1: System.Web.UI.Page},
  FotoSocio in 'FotoSocio.pas' {FotoSocio.TWebForm1: System.Web.UI.Page},
  CarteiraSocio in 'CarteiraSocio.pas' {CarteiraSocio.TWebForm1: System.Web.UI.Page},
  Recibo in 'Recibo.pas' {Recibo.TWebForm1: System.Web.UI.Page},
  ReciboDados in 'ReciboDados.pas' {ReciboDados.TWebForm1: System.Web.UI.Page},
  Backup in 'Backup.pas' {Backup.TWebForm1: System.Web.UI.Page};

//
// General Information about an assembly is controlled through the following
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyDescription('')]
[assembly: AssemblyConfiguration('')]
[assembly: AssemblyCompany('')]
[assembly: AssemblyProduct('')]
[assembly: AssemblyCopyright('')]
[assembly: AssemblyTrademark('')]
[assembly: AssemblyCulture('')]

// The Delphi compiler controls the AssemblyTitleAttribute via the ExeDescription.
// You can set this in the IDE via the Project Options.
// Manually setting the AssemblyTitle attribute below will override the IDE
// setting.
// [assembly: AssemblyTitle('')]


//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion('1.0.*')]

//
// In order to sign your assembly you must specify a key to use. Refer to the 
// Microsoft .NET Framework documentation for more information on assembly signing.
//
// Use the attributes below to control which key is used for signing. 
//
// Notes: 
//   (*) If no key is specified, the assembly is not signed.
//   (*) KeyName refers to a key that has been installed in the Crypto Service
//       Provider (CSP) on your machine. KeyFile refers to a file which contains
//       a key.
//   (*) If the KeyFile and the KeyName values are both specified, the 
//       following processing occurs:
//       (1) If the KeyName can be found in the CSP, that key is used.
//       (2) If the KeyName does not exist and the KeyFile does exist, the key 
//           in the KeyFile is installed into the CSP and used.
//   (*) In order to create a KeyFile, you can use the sn.exe (Strong Name) utility.
//       When specifying the KeyFile, the location of the KeyFile should be
//       relative to the project output directory which is
//       %Project Directory%\bin\<configuration>. For example, if your KeyFile is
//       located in the project directory, you would specify the AssemblyKeyFile 
//       attribute as [assembly: AssemblyKeyFile('..\\..\\mykey.snk')]
//   (*) Delay Signing is an advanced option - see the Microsoft .NET Framework
//       documentation for more information on this.
//
[assembly: AssemblyDelaySign(false)]
[assembly: AssemblyKeyFile('')]
[assembly: AssemblyKeyName('')]

begin
end.
