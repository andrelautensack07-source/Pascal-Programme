unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, unit2;

type

  { Schueler }

  Schueler = class(Person)
    private
      stufe: Integer;
      abijahrgang: Integer;
    public
      constructor create(
        pName: String; pGeburtsjahr, pStufe, pAbijahrgang: Integer
      );
      function getStufe(): Integer;
      function getAbiJahrgang(): Integer;
  end;

implementation

{ Schueler }

constructor Schueler.create(pName: String; pGeburtsjahr, pStufe,
  pAbijahrgang: Integer);
begin
  Person.create(pName, pGeburtsjahr);
  stufe:=pStufe;
  abijahrgang:=pAbijahrgang;
end;

function Schueler.getStufe(): Integer;
begin
  result := stufe;
end;

function Schueler.getAbiJahrgang(): Integer;
begin
  result := abijahrgang;
end;

end.

