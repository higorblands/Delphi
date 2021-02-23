unit UMoipOrder;

interface

uses
  UInternalOrder, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdHashMessageDigest;

type
  TFormMOIPOrder = class(TFormInternalOrder)
    edtMoipOrder: TEdit;
    LMoipOrder: TLabel;
    procedure FormCreate(Sender: TObject);
  protected
    function Check: boolean; override;
    function Save: boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormMOIPOrder: TFormMOIPOrder;

implementation

{$R *.dfm}
{ TFormMOIPOrder }

function TFormMOIPOrder.Check: boolean;
begin
  if inherited then
  begin

    if (Length(edtMoipOrder.Text) <= 20) AND (edtMoipOrder.Text <> '') then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
      ShowMessage('Número do pedido MOIP inválido.');
    end;

  end
  else
  begin
    Result := False;
  end;

end;

procedure TFormMOIPOrder.FormCreate(Sender: TObject);
begin
LDAV.Caption := 'Authorization Moip';
edtDav.TextHint := 'MOIP Order Authorization';
end;

function TFormMOIPOrder.Save: boolean;
var
  MD5: TIdHashMessageDigest5;

begin
  MD5 := TIdHashMessageDigest5.Create;
  if Check then
  begin
    inherited;
    setLength(SQL, Length(SQL) + 1);
    setLength(SQL[Length(SQL) - 1], 5);
    SQL[Length(SQL) - 1, 4] := edtMoipOrder.Text;
    edtMoipOrder.Text := SQL[0, 0] + edtMoipOrder.Text +
    MD5.HashStringAsHex('7010');
  end
  else
  begin
    Result := False;
  end;
end;

end.
