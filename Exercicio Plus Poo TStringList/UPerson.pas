unit UPerson;
interface
uses system.classes, system.SysUtils;
type
  TPessoa = Class
  protected
  public
  Name : String;
  Age : String;
  function doSQL(Storage: TStringList): boolean; virtual;
  var
doSqlDone : String;
  End;
implementation

{ TPessoa }

function TPessoa.doSQL(Storage: TStringList): boolean;

begin
  Result := False;
  doSqlDone := ('Nome: ' + name + ' | Idade: ' + Age);
  Result := True;
end;

end.
