unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, unit2;
Type

  { TBenutzer }

  TBenutzer = class(TPeson)
    protected
      passwort: String;
      status : String;
    public
      constructor Create (na,pas: String; st: String);

  end;

implementation

{ TBenutzer }

constructor TBenutzer.Create(na, pas: String; st: String);
begin
  inherited  Create (na);
  passwort := pas;
  status:= st;
end;

end.

