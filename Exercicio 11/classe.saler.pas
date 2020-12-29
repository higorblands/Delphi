unit classe.saler;

interface

uses classe.person, system.classes, system.SysUtils;

type
  TSaler = class(TPerson)
  protected
    function doSQL(SQL: TStringList): boolean; override;
    function Check: boolean; override;
  public
    Percentage: real;
    TypeSaler: String;
  private
    Commission: currency;

  end;

implementation

{ TSaler }
function TSaler.Check: boolean;
begin
  if inherited then
  begin
    if (Commission > 0) AND ((TypeSaler = 'i') OR (TypeSaler = 'e')) then
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
  inherited;
  SQL.Add(' | Comiss�o: ' + CurrToStr(Commission) + ' | Tipo de vendedor: ' +
  TypeSaler);
  result := True;
end;

end.
