unit PlusComponente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UComboBox13, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtProductName: TEdit;
    btnSave: TButton;
    edtProductCode: TEdit;
    Button1: TButton;
    edtcodsearch: TEdit;
    Label1: TLabel;
    ComboBox131: TComboBox13;
    procedure btnSaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);
begin
ComboBox131.addMega(edtProductName.Text,edtProductCode.Text);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

if edtcodsearch.Text <> '' then
begin
ShowMessage(ComboBox131.getKey(edtcodsearch.Text));
end
else
begin
  ShowMessage('Voc� n�o digitou o c�digo do produto.');
end;
end;

end.
