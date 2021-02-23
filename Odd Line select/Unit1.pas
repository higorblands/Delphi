unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    function validar(a: string): boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  arquivo: TextFile;
  temp, nameFile: string;
  n, i: integer;
begin
  if (validar(Edit1.Text) = false) then
  begin
    ShowMessage('Você deixou o campo em branco, não é possível seguir.');
  end
  else
  begin
    n := 0;
    nameFile := (Edit1.Text + '.txt');
    AssignFile(arquivo, nameFile);
    Reset(arquivo);
    i := 1;
    Memo1.Clear;
    Memo2.Clear;
    if FileExists(nameFile) = true then
    begin
      while (EOF(arquivo) = false) do
      begin
        if ((i mod 2) = 0) then
        begin
          Readln(arquivo, temp);
          Memo2.Lines.Add(temp);
        end
        else
        begin
          Readln(arquivo, temp);
          Memo1.Lines.Add(temp);
        end;
        i := i + 1;
      end;
      CloseFile(arquivo);
    end
    else
    begin
      ShowMessage('O arquivo não existe, não é possível seguir.');
    end;

  end;

end;

function TForm1.validar(a: string): boolean;
begin
  if (a = '') then
  begin
    result := false;
  end
  else
  begin
    result := true;
  end;
end;

end.
