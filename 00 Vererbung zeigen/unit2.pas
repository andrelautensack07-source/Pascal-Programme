unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { Person }

  Person = class
    protected
      name: String;
      geburtsjahr: integer;
    public
      constructor create(pName: String; pGeburtsjahr: integer);
      function getName(): String;
      function getGeburtsjahr(): integer;
  end;

implementation

{ Person }

constructor Person.create(pName: String; pGeburtsjahr: integer);
begin
  name        := pName;
  geburtsjahr := pGeburtsjahr;
end;

function Person.getName(): String;
begin
  result := name;
end;

function Person.getGeburtsjahr(): integer;
begin
  result := geburtsjahr;
end;

end.

