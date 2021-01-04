unit UMain;

interface

uses
USaleOrder, UInternalOrder, UExternalOrder , Vcl.Controls,
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMain = class(TForm)
    btnExternalSale: TButton;
    btnInternalSale: TButton;
    btnMOIPSale: TButton;
    btnOrderSale: TButton;
    procedure btnOrderSaleClick(Sender: TObject);
    procedure btnInternalSaleClick(Sender: TObject);
    procedure btnExternalSaleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.btnExternalSaleClick(Sender: TObject);
begin
FormExternalOrder.Show;
end;

procedure TFormMain.btnInternalSaleClick(Sender: TObject);
begin
FormInternalOrder.Show;
end;

procedure TFormMain.btnOrderSaleClick(Sender: TObject);
begin
FormSaleOrder.Show;
end;

end.
