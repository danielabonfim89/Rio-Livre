program RioLivre;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitColetor in 'UnitColetor.pas' {FrmColetor},
  Frame_RecipienteCard in 'Frames\Frame_RecipienteCard.pas' {FrameRecipienteCard: TFrame},
  UnitSplash in 'UnitSplash.pas' {FrmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmSplash, FrmSplash);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFrmColetor, FrmColetor);
  Application.Run;
end.
