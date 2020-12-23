unit classe.person;
interface
uses system.classes, system.SysUtils;
type
  TPerson = Class
  protected
  function save : boolean; virtual;

  public
    Name: String;
    Birthday: String;
    SQL : array of string;
    function Done : boolean;
    function Age: Integer;
    function Check: boolean; virtual;

  End;

implementation
function TPerson.Age: Integer;
begin
  Result := Trunc((now - StrToDate(Birthday)) / 365.25)
end;
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
function TPerson.Done: boolean;
begin
if Check then
begin
  result := Save;
end
else begin
  result := False;
end;

end;

function TPerson.save: boolean;
begin
  setLength(SQL, length(SQL)+1);
  SQL[length(SQL)-1] := 'Nome: ' + name + ' | Idade: ' + IntToStr(age);
  result := True;
end;

end.
