program ProjetoPoo;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FMain},
  UPoo in 'UPoo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
