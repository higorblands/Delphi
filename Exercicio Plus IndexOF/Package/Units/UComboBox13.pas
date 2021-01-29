unit UComboBox13;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  TComboBox13 = class(TComboBox)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    FAuxTStrings: TStringList;
    constructor Create(AOwner: TComponent); override;
    Function getItem: TStringList;
    Procedure setItem(Value: TStringList);
    function getKey(text : string): String;
    var
    i : string;
  published
    { Published declarations }
    property Key: TStringList read getItem write setItem;
    Procedure addMega(text1, text2: string);

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TComboBox13]);
end;

{ TComboBox13 }
procedure TComboBox13.addMega(text1, text2: string);

begin
  Items.Add('Produto : '+text1+' - C�digo : ' +text2);
  Key.Add(text2);
end;

constructor TComboBox13.Create(AOwner: TComponent);
begin
  inherited;
  FAuxTStrings := TStringList.Create;
end;

function TComboBox13.getItem: TStringList;
begin
  result := FAuxTStrings;
end;

function TComboBox13.getKey(text : string): String;
begin
  result := inttostr(FAuxTStrings.IndexOf(text));
end;


procedure TComboBox13.setItem(Value: TStringList);
begin
  if Assigned(FAuxTStrings) then
    FAuxTStrings.Assign(Value)
  else
    FAuxTStrings := Value;
end;

end.
