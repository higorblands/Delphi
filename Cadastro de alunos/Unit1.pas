unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoas = record
    Nome, idade, peso: string;
  end;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    age: TEdit;
    weight: TEdit;
    Button1: TButton;
    function validar(a: string): boolean;
    procedure Button1Click(Sender: TObject);
    procedure adicionarAoVetor(inNome, inIdade, inPeso: string);
    function select(funcFile: string): string;
    procedure filter(line: string);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  var
    vu_vetor: array of TPessoas;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.adicionarAoVetor(inNome, inIdade, inPeso: string);
var
  i: integer;
begin
  i := Length(vu_vetor) + 1;
  SetLength(vu_vetor, i);
  vu_vetor[i - 1].Nome := inNome;
  vu_vetor[i - 1].idade := inIdade;
  vu_vetor[i - 1].peso := inPeso;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  v1texto, nameFile: string;
  v1Cont, v1Regs: integer;
begin
  if (validar(Edit1.Text) = false) then
  begin
    ShowMessage('Voc� deixou o campo em branco, n�o � poss�vel seguir.');
  end
  else
  begin
    nameFile := Edit1.Text;
    select(nameFile);
    v1Cont := 0;
    v1Regs := Length(vu_vetor);
    ListBox1.items.Clear;
    while v1Cont < v1Regs do
    begin
      v1texto := vu_vetor[v1Cont].Nome;
      ListBox1.items.Add(v1texto);
      v1Cont := v1Cont + 1;
    end;
  end;
end;

procedure TForm1.filter(line: string);
var
  auxV, sChar, sNome, sIdade, sPeso: string;
  qtdPipe: integer;
begin
  qtdPipe := 0;
  // Pegar cada linha do nosso arquivo e colocar em nossa vari�vel string
  // line := ZUM|8|24|//
  // Percorrer a linha e identificar o |
  // C:\Users\higor\Documents\Delphi\Delphi-Echo\Exercicio 9\Win32\Debug\alunos.txt
  for sChar in line do
  begin
    if sChar = '|' then
    begin
      qtdPipe := qtdPipe + 1;
      if qtdPipe = 1 then
      begin
        sNome := auxV;
      end;
      if qtdPipe = 2 then
      begin
        sIdade := auxV;
      end;
      if qtdPipe = 3 then
      begin
        sPeso := auxV;
      end;
      auxV := '';
    end
    else
    begin
      auxV := auxV + sChar;
    end;
  end;
  adicionarAoVetor(sNome, sIdade, sPeso);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  age.Text := vu_vetor[ListBox1.ItemIndex].idade;
  weight.Text := vu_vetor[ListBox1.ItemIndex].peso;
end;
function TForm1.select(funcFile: string): string;
var
  userFile: TextFile;
  s: string;
begin
  assignFile(userFile, funcFile);
  reset(userFile);
  while NOT EOF(userFile) do
  begin
    Readln(userFile, s);
    filter(s);
  end;
  Readln(userFile, s);
  filter(s);
  closefile(userFile);
end;

function TForm1.validar(a: string): boolean;
begin
  result := true;
  if (a = '') then
  begin
    result := false;
  end;
end;

end.
