unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    age: TEdit;
    weight: TEdit;
    Idade: TLabel;
    Peso: TLabel;
    Button1: TButton;
    fileName: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
    function select(funcFile: string): string;
    procedure filter(line: string);

  var
    matriz: array of array of string; // Matriz para armazenar os valores
    mLine, h: integer; // Linhas e colunas do vetor
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// C:\Users\higor\Documents\Delphi\Delphi-Echo\Exercicio 10\Win32\Debug\alunos fixos.txt
procedure TForm1.Button1Click(Sender: TObject);
var

  i: integer;
begin
  mLine := 0;
  select(fileName.Text); // Acessa o arquivo através de uma função
end;

// Filtrando o arquivo ( espaço e caracteres )
procedure TForm1.filter(line: string);

var
  size, i, c: integer;
  linetemp, linefinal: string;
begin
  h := 0;
  size := Length(line);
  // Passando a quantidade de caracteres para a variavel SIZE
  for i := 1 to size do
  // Loop de 1 até o tamanho de SIZE, aqui estamos falando de quantidade e não posição de vetor
  begin
    SetLength(matriz, mLine + 1); // Definindo tamanho das linhas da matriz
    linetemp := linetemp + line[i]; // Comentar
    if (i = 100) then
    begin
      h := h + 1;// Acrescentando mais um ao contador ( Posição para o vetor TEMP )
      SetLength(matriz[mLine], h); // Definindo o tamanho da matriz
      matriz[mLine,h - 1] := linefinal;
      ListBox1.Items.Add(trim(linetemp));// removes blank and control characters
      linefinal := ''; // Limpando a variável
      linetemp := '';
    end;

    if (i = 103) then
    begin
      h := h + 1;
      SetLength(matriz[mLine], h);
      matriz[mLine,h - 1] := IntToStr(StrToInt(linetemp));
      linefinal := '';
      linetemp := '';
    end;
    if (i = 108) then
    begin
      h := h + 1;
      SetLength(matriz[mLine], h);
      matriz[mLine,h - 1] := IntToStr(StrToInt(linetemp));
      linefinal := '';
      linetemp := '';
    end;
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  age.Text := matriz[ListBox1.itemindex, 1];
  weight.Text := matriz[ListBox1.itemindex, 2];
end;

function TForm1.select(funcFile: string): string;
var
  userFile: TextFile;
  sLine: string;
begin
  assignFile(userFile, funcFile);
  reset(userFile);
  while NOT EOF(userFile) do
  begin
    readLn(userFile, sLine); // Lê a linha no arquivo e salva em "sLine"
    filter(sLine); // Passa para a procedure FILTER o conteúdo de "sLine"
    mLine := mLine + 1; // Contando a quantidade de linhas do arquivo
  end;
  closefile(userFile);
end;

end.
