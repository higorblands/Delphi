unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  classe.person, classe.client, classe.saler, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btSaveClient: TButton;
    edtName: TEdit;
    edtAge: TEdit;
    PageControl1: TPageControl;
    TabClient: TTabSheet;
    TabSaler: TTabSheet;
    edtPaymentDay: TEdit;
    edtAdress: TEdit;
    edtCommission: TEdit;
    edtType: TEdit;
    ListBox1: TListBox;
    btSaveSaler: TButton;
    btSee: TButton;
    procedure btSaveClientClick(Sender: TObject);
    procedure btSaveSalerClick(Sender: TObject);
    procedure btSeeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     SQL: TStringList;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btSaveClientClick(Sender: TObject);
var
  ObjClient: TClient;
begin
  ObjClient := TClient.Create;
  SQL := TStringList.Create;
  try
    ObjClient.Name := edtName.Text;
    ObjClient.Age := StrToInt(edtAge.Text);
    ObjClient.dayPayment := StrToInt(edtPaymentDay.Text);
    ObjClient.Adress := edtAdress.Text;
    ObjClient.save;
    SQL.Add(ObjClient.ToString);
    ShowMessage('Cliente ' + edtName.Text + ' cadastrado com sucesso !');
    edtName.Clear;
    edtAge.Clear;
    edtPaymentDay.Clear;
    edtAdress.Clear;
  finally
    ObjClient.Free;
    SQL.Free
  end;
end;

procedure TForm1.btSaveSalerClick(Sender: TObject);
var
  ObjSaler: TSaler;
begin
  ObjSaler := TSaler.Create;
  SQL := TStringList.Create;
  try
    ObjSaler.Name := edtName.Text;
    ObjSaler.Age := StrToInt(edtAge.Text);
    ObjSaler.Percentage := StrToFloat(edtCommission.Text);
    ObjSaler.TypeSaler := edtType.Text;
    ObjSaler.save;
    SQL.Add(ObjSaler.ToString);
    ShowMessage('Vendedor ' + edtName.Text + ' cadastrado com sucesso !');
    edtName.Clear;
    edtAge.Clear;
    edtCommission.Clear;
    edtType.Clear;
  finally
    ObjSaler.Free;
    SQL.Free
  end;
end;
procedure TForm1.btSeeClick(Sender: TObject);
begin
ListBox1.Items.Add(SQL.Text);
end;

end.
