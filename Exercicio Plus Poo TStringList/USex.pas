unit USex;

interface

uses Uperson, system.classes, system.SysUtils;

Type
  TSex = Class(TPessoa)
  protected

    function doSQL(Storage: TStringList): boolean; override;
  private
  public
  tipo: string;
  End;

implementation

{ TMulher }

function TSex.doSQL(Storage: TStringList): boolean;
begin
  if inherited then
  begin
    result := True;
    Storage.Add(doSqlDone + tipo);
  end
  else
  begin
    result := False;
  end;
end;

end.
