unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;
type
    TForm1 = class(TForm)
    Label1: TLabel;
    edtInput: TEdit;
    edtOutput: TEdit;
    btConverter: TButton;
    procedure btConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // Declarando fun��es
    function myStrToAscii(text : string) : string;
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.btConverterClick(Sender: TObject);
  begin
    edtOutput.Text := myStrToAscii(edtInput.Text);
  end;
function TForm1.myStrToAscii(text: string): string;
// A = 65
// B = 66
// AB
var
  i : integer;
begin
  result := '';
  for i := 1 to length(text) do// 1
  begin
    result := result + (IntToStr(Ord(text[i])));
  end;
end;

end.
