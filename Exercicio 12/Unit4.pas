unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.StdCtrls;

type
  TFormVendaExterna = class(TFormPedidoVenda)
    Label5: TLabel;
    EditNomeVendedorExterno: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    EditDAV: TEdit;
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
  FormVendaExterna: TFormVendaExterna;

implementation

{$R *.dfm}

function TFormVendaExterna.clearAll: boolean;
begin
  inherited;
  EditNomeVendedorExterno.Clear;
end;

function TFormVendaExterna.salvar: boolean;
var
  data: TDateTime;
  nome : string;
  i : integer;
begin
  data := Date;
  inherited;
  setLength(database, Length(database) + 1);
  setLength(database[Length(database) - 1], 5);
  database[Length(database) - 1, 4] := EditNomeVendedorExterno.Text;
  for i := 1 to 3 do
  begin
    nome := nome + EditNomeVendedorExterno.Text[i];
  end;

  EditDAV.Text := database[0, 0] + nome + FormatDateTime('yyyymmdd', data);
  clearAll;
end;

function TFormVendaExterna.verifier: boolean;
begin
  if inherited then
  begin
    if (EditNomeVendedorExterno.Text <> '') AND
      (Length(EditNomeVendedorExterno.Text) <= 100) then
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
