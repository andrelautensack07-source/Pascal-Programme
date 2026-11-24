unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, unit2;

type

  { Lehrer }

  Lehrer = class(Person)
    private
      erstesFach: String;
      zweitesFach: String;
    public
      constructor create(
        pName: String; pGeburtsjahr: integer; pErstesFach, pZweitesfach: String
      );
      function getErstesFach(): String;
      function getZweitesFach(): String;
  end;

implementation

{ Lehrer }

constructor Lehrer.create(pName: String; pGeburtsjahr: integer; pErstesFach,
  pZweitesfach: String);
begin
  Person.create(pName, pGeburtsjahr);
  name:=pName;
  geburtsjahr:=pGeburtsjahr;
  erstesFach:=pErstesFach;
  zweitesFach:=pZweitesfach;
end;

function Lehrer.getErstesFach(): String;
begin
  result := erstesFach;
end;

function Lehrer.getZweitesFach(): String;
begin
  result := zweitesFach;
end;

end.

