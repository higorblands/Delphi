program Project1;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form1},
  classe.person in 'classe.person.pas',
  classe.client in 'classe.client.pas',
  classe.saler in 'classe.saler.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
