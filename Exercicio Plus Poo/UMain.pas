unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPoo, Client.Classe;

type
  TFMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.Button1Click(Sender: TObject);
var
Higor,Mymy : TClient;
begin
Higor := TClient.Create;
Mymy := TClient.Create;
try
   Higor.Name := ('Higor');
   Higor.Birthday := ('01/12/1996');
   Mymy.Name :=('Mylena');
   Mymy.Birthday := ('21/06/1997');
   ShowMessage(Higor.Name +' - '+ inttostr(Higor.Age));
   ShowMessage(Mymy.Name +' - '+ inttostr(Mymy.Age));
finally
 Higor.Free;
 Mymy.Free;
end;
end;
end.
