unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormPedidoVenda = class(TForm)
    BtnSalvar: TButton;
    EditNumPedido: TEdit;
    EditNomeVendedor: TEdit;
    EditNomeCliente: TEdit;
    EditValorPedido: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BtnSalvarClick(Sender: TObject);

  protected
    database: array of array of string;
    function verifier: boolean; virtual;
    function salvar: boolean; virtual;
    function clearAll: boolean; virtual;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidoVenda: TFormPedidoVenda;

implementation

{$R *.dfm}

procedure TFormPedidoVenda.BtnSalvarClick(Sender: TObject);
begin
  if verifier then
  begin
    salvar;
  end
  else
  begin
    showmessage('Preencha os dados corretamente');
  end;
end;

function TFormPedidoVenda.clearAll: boolean;
begin
  EditNumPedido.Clear;
  EditNomeVendedor.Clear;
  EditValorPedido.Clear;
  EditNomeCliente.Clear;
end;

function TFormPedidoVenda.salvar: boolean;
begin
  setLength(database, Length(database) + 1);
  setLength(database[Length(database) - 1], 4);
  database[Length(database) - 1, 0] := EditNumPedido.Text;
  database[Length(database) - 1, 1] := EditNomeVendedor.Text;
  database[Length(database) - 1, 2] := EditValorPedido.Text;
  database[Length(database) - 1, 3] := EditNomeCliente.Text;
end;

function TFormPedidoVenda.verifier: boolean;
begin
  if ((EditNumPedido.Text <> '') AND (EditNomeVendedor.Text <> '') AND
    (Length(EditNomeVendedor.Text) <= 100) AND (EditValorPedido.Text <> '') AND
    (EditNomeCliente.Text <> '') AND (Length(EditNomeCliente.Text) <= 100)) then
  begin
    result := True;
  end
  else
  begin
    result := False;
  end;
end;

end.
