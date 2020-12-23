unit classe.client;

interface

uses system.classes, system.SysUtils, classe.person;

type
  TClient = class(TPerson)
  protected
    function save: boolean; override;
  public
    function Check: boolean; override;
  private
    dayPayment: Integer;
    Adress: String;
  end;

implementation

{ TClient }
function TClient.Check: boolean;
begin
  if inherited then
  begin
    if (IntToStr(dayPayment) <> '') AND (dayPayment >= 1) AND (dayPayment <= 31)
      AND (Adress <> '') AND (length(Adress) <= 200) then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;
end;

function TClient.save: boolean;
begin
  inherited;
  SQL[length(SQL) - 1] := 'CLIENTE:' + SQL[length(SQL) - 1] + ' | Dia: ' +
    IntToStr(dayPayment) + ' | Endereço: ' + Adress;
  Result := True;
end;

end.
