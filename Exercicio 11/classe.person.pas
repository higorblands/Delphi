unit classe.person;

interface

uses system.classes, system.SysUtils;

type
  TPerson = Class
  protected
    function Check: boolean; virtual;
    function doSQL(SQL: TStringList): boolean; virtual;
  public
    Name: String;
    Age: Integer;
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

function TPerson.doSQL(SQL: TStringList): boolean;
begin
  Result := False;
  SQL.Add('Nome: ' + name + ' | Idade: ' + IntToStr(Age));
  Result := True;
end;

function TPerson.save: boolean;
begin
  Result := False;
  if Check then
  begin
    //if doSQL then
    //begin
      Result := True;
    //end;
  end;
end;

end.
