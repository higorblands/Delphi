unit UMain;

interface

uses
  UPerson, USex,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtName: TEdit;
    edtAge: TEdit;
    edtType: TEdit;
    btSave: TButton;
    btShow: TButton;
    ListBox1: TListBox;
    procedure btSaveClick(Sender: TObject);
    procedure btShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Storage: TStringList;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btSaveClick(Sender: TObject);
var
  ObjHumano: TSex;
begin
  ObjHumano := TSex.Create;
  Storage := TStringList.Create;
  try
    ObjHumano.Name := edtName.Text;
    ObjHumano.Age := edtAge.Text;
    ObjHumano.tipo := edtType.Text;
  finally
    ObjHumano.Free;
    Storage.Free;
    ShowMessage('Cadastrado com sucesso !');
  end;

end;

procedure TForm1.btShowClick(Sender: TObject);
begin
  ListBox1.Items.Add(Storage);
end;

end.
