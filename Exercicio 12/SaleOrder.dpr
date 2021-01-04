program SaleOrder;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FormMain},
  USaleOrder in 'USaleOrder.pas' {FormSaleOrder},
  UInternalOrder in 'UInternalOrder.pas' {FormInternalOrder},
  UExternalOrder in 'UExternalOrder.pas' {FormExternalOrder},
  UMoipOrder in 'UMoipOrder.pas' {FormMOIPOrder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormSaleOrder, FormSaleOrder);
  Application.CreateForm(TFormInternalOrder, FormInternalOrder);
  Application.CreateForm(TFormExternalOrder, FormExternalOrder);
  Application.CreateForm(TFormMOIPOrder, FormMOIPOrder);
  Application.Run;
end.
