unit UPoo;

interface
uses system.sysutils;

type
  TPerson = class(TObject)
  private

  public
   Name : String;
   Birthday : String;
   function Age : Integer;


  end;
implementation

{TPerson}
function TPerson.Age : Integer;
begin
Result := Trunc((now - StrToDate(Birthday))/365.25)

end;
end.
