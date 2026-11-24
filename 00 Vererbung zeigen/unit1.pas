unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, unit2, unit3, unit4;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var nPerson: Person; nLehrer: Lehrer; nSchueler: Schueler;
begin
  nPerson := Person.create('Hansi Flick', 1968);
  nLehrer := Lehrer.create('Hr. Möller', 1970, 'Mathematik', 'Tennis');
  nSchueler := Schueler.create('Jonas Baum', 2007, 23, 2026);
  showMessage(
    nPerson.getName() + ', ' +
    nLehrer.getName() + ', ' +
    nSchueler.getName()
  );
  showMessage(
    nLehrer.getErstesFach() + ', ' + IntToStr(nSchueler.getAbiJahrgang())
  );
end;

end.

