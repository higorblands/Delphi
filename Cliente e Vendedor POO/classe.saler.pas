unit classe.saler;

interface

uses classe.person, system.classes, system.SysUtils;

type
  TSaler = class(TPerson)
  protected
    function doSQL(SQL: TStringList): boolean; override;
    function Check: boolean; override;
  public
    Commission: currency;
    TypeSaler: String;

  private


  end;

implementation

{ TSaler }
function TSaler.Check: boolean;
begin
  if inherited then
  begin
    if (Commission > 0) AND ((TypeSaler = 'I') OR (TypeSaler = 'E')) then
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

function TSaler.doSQL(SQL: TStringList): boolean;
begin
  Result := False;
  aux := ' | Comiss�o: ' + CurrToStr(Commission) + ' | Tipo de vendedor: ' + TypeSaler;
  inherited;
  result := True;
end;

end.
