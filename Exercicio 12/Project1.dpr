program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FormMenu},
  Unit2 in 'Unit2.pas' {FormPedidoVenda},
  Unit3 in 'Unit3.pas' {FormVendaInterna},
  Unit4 in 'Unit4.pas' {FormVendaExterna},
  Unit5 in 'Unit5.pas' {FormVendaMOIP};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormPedidoVenda, FormPedidoVenda);
  Application.CreateForm(TFormVendaInterna, FormVendaInterna);
  Application.CreateForm(TFormVendaExterna, FormVendaExterna);
  Application.CreateForm(TFormVendaMOIP, FormVendaMOIP);
  Application.Run;
end.
