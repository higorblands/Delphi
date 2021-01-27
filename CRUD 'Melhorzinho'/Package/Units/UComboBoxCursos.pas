unit UComboBoxCursos;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  TComboBoxCursos = class(TComboBox)
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
    function getKey: String;
  published
    { Published declarations }
    property Key: TStringList read getItem write setItem;
    Procedure addMega(text1, text2: string);

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TComboBoxCursos]);
end;

{ TComboBoxCursos }
procedure TComboBoxCursos.addMega(text1, text2: string);
begin
  Items.Add(text1);
  Key.Add(text2);
end;

constructor TComboBoxCursos.Create(AOwner: TComponent);
begin
  inherited;
  FAuxTStrings := TStringList.Create;
end;

function TComboBoxCursos.getItem: TStringList;
begin
  result := FAuxTStrings;
end;

function TComboBoxCursos.getKey: String;
begin
  result := FAuxTStrings[ItemIndex];
end;

procedure TComboBoxCursos.setItem(Value: TStringList);
begin
  if Assigned(FAuxTStrings) then
    FAuxTStrings.Assign(Value)
  else
    FAuxTStrings := Value;
end;

end.
