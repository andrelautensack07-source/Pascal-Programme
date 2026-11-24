unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;
type

  { TPeson }

  TPeson = class
    protected
      pName: String;
    public
      constructor Create(na : String);
      function    GetName():String;
  end;

implementation

{ TPeson }

constructor TPeson.Create(na: String);
begin
     pName := na;
end;

function TPeson.GetName(): String;
begin
   result:= pName;
end;

end.

