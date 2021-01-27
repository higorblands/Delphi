program CRUDMelhorzinho;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  UComboBoxCursos in 'Package\Units\UComboBoxCursos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Light');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
