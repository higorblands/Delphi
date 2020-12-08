unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TPessoas = record
    Nome: string;
    Idade: integer;
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    edtNome: TEdit;
    edtIdade: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    function validarCampos(a: string; b: string): boolean;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure adicionar(inNome: String; inIdade: integer);
  end;

var
  Form1: TForm1;
  vu_vetor: array of TPessoas;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.adicionar(inNome: String; inIdade: integer);
var
  i: integer;
begin
  // Aumenta o tamanho do vetor
  i := Length(vu_vetor) + 1;
  SetLength(vu_vetor, i);
  // adiciona o aluno
  vu_vetor[i - 1].Nome := inNome;
  vu_vetor[i - 1].Idade := inIdade;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (validarCampos(edtNome.Text, edtIdade.Text) = false) then
  begin
    ShowMessage('Você deixou algum campo vazio !');
  end
  else
  begin
    adicionar(edtNome.Text, (strToInt(edtIdade.Text)));
    edtNome.Clear;
    edtIdade.Clear;
    edtNome.SetFocus;

  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  v1Cont, v1Regs: integer;
var
  v1texto: string;
begin
  v1Cont := 0;
  v1Regs := Length(vu_vetor);
  ListBox1.items.Clear;

  while v1Cont < v1Regs do
  begin
    v1texto := vu_vetor[v1Cont].Nome + ' | ' + inttostr(vu_vetor[v1Cont].Idade) + ' Anos ';
    ListBox1.items.Add(v1texto);
    v1Cont := v1Cont + 1;
  end;

end;

function TForm1.validarCampos(a, b: string): boolean;
begin
  if (a = '') or (b = '') then
  begin
    result := false;
  end
  else
  begin
    result := true;
  end;

end;
{
  procedure TForm1.visualizar(Sender: Tobject);

  begin




  end; }

end.
