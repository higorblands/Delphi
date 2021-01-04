unit UExternalOrder;

interface

uses
  USaleOrder,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormExternalOrder = class(TFormSaleOrder)
    edtExternalSalerName: TEdit;
    LExternalSalerName: TLabel;
    LDAV: TLabel;
    edtDav: TEdit;

  protected
  function Check : boolean;override;
  function Save : boolean;override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExternalOrder: TFormExternalOrder;

implementation

{$R *.dfm}

{ TFormExternalOrder }

function TFormExternalOrder.check: boolean;
begin
  if inherited then
  begin
    if (Length(edtExternalSalerName.Text) < 1000)AND (edtExternalSalerName.Text <> '') then
    begin
      result := True;
    end
    else
    begin
      result := False;
    end;
  end
  else
  begin
    result := False;
  end;
end;
function TFormExternalOrder.Save: boolean;
var
  data: TDateTime;
  name : string;
  i : integer;
begin
  data := Date;
  inherited;
  setLength(SQL, Length(SQL) + 1);
  setLength(SQL[Length(SQL) - 1], 5);
  SQL[Length(SQL) - 1, 4] := edtExternalSalerName.Text;
  for i := 1 to 3 do
  begin
    name := name + edtExternalSalerName.Text[i];
  end;
  edtDav.Text := SQL[0, 0] + name + FormatDateTime('yyyymmdd', data);
  clear;
end;

end.
