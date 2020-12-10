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
  temp,nameFile: string;
  n, i: integer;
begin
  if (validar(Edit1.Text) = false) then
  begin
    ShowMessage('Voc� deixou o campo em branco, n�o � poss�vel seguir.');
  end
  else
  begin
    n := 0;
    nameFile := (Edit1.Text + '.txt');
    AssignFile(arquivo, nameFile);
    Reset(arquivo);
    if FileExists(nameFile) = true then
    begin
      while (EOF(arquivo) = false) do
      begin
        Readln(arquivo, temp);
        n := n + 1;
      end;
      if ((n mod 2) = 0) then
      begin
        Reset(arquivo);
        for i := 1 to (n div 2) do
        begin
          Readln(arquivo, temp);
          Memo1.Lines.Add(temp);
        end;
        for i := 1 to (n div 2) do
        begin
          Readln(arquivo, temp);
          Memo2.Lines.Add(temp);
        end;
      end
      else
      begin
        Reset(arquivo);
        for i := 1 to ((n div 2) + 1) do
        begin
          Readln(arquivo, temp);
          Memo1.Lines.Add(temp);
        end;
        for i := 1 to (n div 2) do
        begin
          Readln(arquivo, temp);
          Memo2.Lines.Add(temp);
        end;
      end;
      CloseFile(arquivo);
    end
    else
    begin
      ShowMessage('O arquivo n�o existe, n�o � poss�vel seguir.');
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
