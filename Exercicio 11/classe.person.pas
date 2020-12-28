unit classe.person;

interface

uses system.classes, system.SysUtils;

type
  TPerson = Class
  protected
    function Check: boolean; virtual;
    function doSQL: boolean; virtual;
  public
    Name: String;
    Age : Integer;
    SQL: array of string;
    function save: boolean;
  End;

implementation

function TPerson.Check: boolean;
begin
  if (name <> '') AND (length(name) <= 50) AND (IntToStr(Age) <> '') AND
    (0 < Age) AND (Age < 130) then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function TPerson.doSQL: boolean;
begin
  Result := False;
  setLength(SQL, length(SQL) + 1);
  SQL[length(SQL) - 1] := 'Nome: ' + name + ' | Idade: ' + IntToStr(Age);
  Result := True;
end;

function TPerson.save: boolean;
begin
  Result := False;
  if Check then
  begin
    if doSQL then
    begin
      Result := True;
    end;
  end;
end;

end.
