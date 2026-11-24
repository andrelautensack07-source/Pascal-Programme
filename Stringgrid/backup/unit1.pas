unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
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
var i: byte;
begin
  StringGrid1.Cells[0,0] := 'Std.';
  StringGrid1.Cells[1,0] := 'Zeit';
  StringGrid1.Cells[2,0] := 'Montag';
  StringGrid1.Cells[3,0] := 'Dienstag';
  StringGrid1.Cells[4,0] := 'Mittwoch';
  StringGrid1.Cells[5,0] := 'Donnerstag';
  StringGrid1.Cells[6,0] := 'Freitag';

  StringGrid1.ColWidths[0] := 50;

  StringGrid1.Cells[1,1] := '07:40 - 08:25';
  StringGrid1.Cells[1,2] := '08:30 - 09:15';
  StringGrid1.Cells[1,3] := '09:30 - 10:15';
  StringGrid1.Cells[1,4] := '10:20 - 11:05';
  StringGrid1.Cells[1,5] := '11:10 - 11:55';
  StringGrid1.Cells[1,6] := '12:20 - 13:05';
  StringGrid1.Cells[1,7] := '13:10 - 13:55';
  StringGrid1.Cells[1,8] := '14:00 - 14:45';
  StringGrid1.Cells[1,9] := '14:50 - 15:35';

  for i := 1 to 9 do begin
    StringGrid1.Cells[0,i] := IntToStr(i);
  end;

  //Erweiterung:
  //============
  {
    * Einfach: Stunden einfach hier in der onCreate-Methode reinprogrammiern
    * Einfach: 3 Editfelder (Stunde, Tag, Fach) auf Formular legen und
               die Daten sollen durch Knopfdruck eingefügt werden.
    * Mittel:  andere Komponenten (z. B. Combobox) verwenden
    * Mittel:  Eingetragene Stunden sollen auch gelöscht werden dürfen
    * Schwer:  3 Editfelder + Button dynamisch erzeugen
  }
end;

end.

