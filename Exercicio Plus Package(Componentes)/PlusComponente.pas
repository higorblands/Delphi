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
    ComboBox131: TComboBox13;
    procedure btnSaveClick(Sender: TObject);
    procedure ComboBox131Select(Sender: TObject);
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

procedure TForm1.ComboBox131Select(Sender: TObject);
begin
ShowMessage(ComboBox131.getKey);
end;

end.
