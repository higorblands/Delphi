unit USaleOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormSaleOrder = class(TForm)
    LOrder: TLabel;
    edtSaleNum: TEdit;
    LSalerName: TLabel;
    edtSalerName: TEdit;
    edtSaleValue: TEdit;
    edtClienteName: TEdit;
    LOrderValue: TLabel;
    LClienteName: TLabel;
    btnSave: TButton;
    procedure btnSaveClick(Sender: TObject);
  protected
    SQL: array of array of string;
    function Check: boolean; virtual;
    function Save: boolean; virtual;
    function clear:boolean;virtual;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSaleOrder: TFormSaleOrder;

implementation

{$R *.dfm}
{ TFormSaleOrder }

procedure TFormSaleOrder.btnSaveClick(Sender: TObject);
begin
  if Check then
  begin
    Save;
  end
  else
  begin
    Showmessage('Dados inv�lidos !');
  end;
end;

function TFormSaleOrder.Check: boolean;
begin
  if ((edtSaleNum.Text <> '') AND (edtSalerName.Text <> '') AND
    (((Length(edtSalerName.Text)) <= 100)) AND (edtSaleValue.Text <> '') AND
    (edtClienteName.Text <> '') AND ((Length(edtClienteName.Text)) <= 100)) then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;

end;



function TFormSaleOrder.clear: boolean;
begin
    Result := False;
    edtSaleNum.clear;
    edtSalerName.clear;
    edtSaleValue.clear;
    edtClienteName.clear;
    Result := True;
end;

function TFormSaleOrder.Save: boolean;
begin
  if Check then
  begin
    setLength(SQL, Length(SQL) + 1);
    setLength(SQL[Length(SQL) - 1], 4);
    SQL[Length(SQL) - 1, 0] := edtSaleNum.Text;
    SQL[Length(SQL) - 1, 1] := edtSalerName.Text;
    SQL[Length(SQL) - 1, 2] := edtSaleValue.Text;
    SQL[Length(SQL) - 1, 3] := edtClienteName.Text;
    Showmessage('Salvo com sucesso ! ');
    Result := True;
  end
  else
  begin
    Showmessage('N�o foi poss�vel salvar ! ');
    Result := False;
  end;
end;

end.
