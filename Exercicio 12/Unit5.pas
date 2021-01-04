unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit3, Vcl.StdCtrls,
  IdHashMessageDigest;

type
  TFormVendaMOIP = class(TFormVendaInterna)
    Label6: TLabel;
    EditMOIP: TEdit;
    Label7: TLabel;
    EditNumPedidoMoip: TEdit;
    Label8: TLabel;
  protected
    function verifier: boolean; override;
    function salvar: boolean; override;
    function clearAll: boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendaMOIP: TFormVendaMOIP;

implementation

{$R *.dfm}

function TFormVendaMOIP.clearAll: boolean;
begin
  inherited;
  EditNumPedidoMoip.Clear;
end;

function TFormVendaMOIP.salvar: boolean;
var
  MD5: TIdHashMessageDigest5;
begin
  MD5 := TIdHashMessageDigest5.Create;
  inherited;
  setLength(database, Length(database) + 1);
  setLength(database[Length(database) - 1], 5);
  database[Length(database) - 1, 4] := EditNumPedidoMoip.Text;
  EditMOIP.Text := database[0, 0] + EditNumPedidoMoip.Text +
  MD5.HashStringAsHex('7010');
  clearAll;
end;

function TFormVendaMOIP.verifier: boolean;
begin
  if inherited then
  begin
    if (EditNumPedidoMoip.Text <> '') AND (Length(EditNumPedidoMoip.Text) <= 20) then
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

end.
