program ProjectIndex;

uses
  Vcl.Forms,
  PlusComponente in 'PlusComponente.pas' {Form1},
  UComboBox13 in 'Package\Units\UComboBox13.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
