unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.StdCtrls;

type
  TFormVendaInterna = class(TFormPedidoVenda)
    EditDAV: TEdit;
    Label5: TLabel;
  protected
    function verifier: boolean; override;
    function salvar: boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendaInterna: TFormVendaInterna;

implementation

{$R *.dfm}

function TFormVendaInterna.salvar: boolean;
var
data: TDateTime;
begin
  data := Date;
  inherited;
  EditDAV.Text := database[0, 0] + FormatDateTime('yyyymmdd', data);
  clearAll;
end;

function TFormVendaInterna.verifier: boolean;
begin
  if inherited then
  begin
    if (StrToInt(EditValorPedido.Text) < 1000) then
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
