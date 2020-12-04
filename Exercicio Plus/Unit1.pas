unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function validar( a : string; b : string ):boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
begin
  if (validar(Edit1.Text,Edit2.Text))then
  begin
    Edit3.Text := '� v�lido';
  end
  else
  begin
    Edit3.Text := 'N�o � v�lido';
  end
end;

function TForm1.validar(a, b: string): boolean;
var
v : double;
begin
  if (a <> '') and (b <> '') then
  begin
    if (TryStrToFloat(a,v) and TryStrToFloat(b,v)) then
    begin
      result := true;
    end
    else
    begin
      result := false;
    end
  end
  else
  begin
    result := false;
  end;
end;
end.
