unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, unit2, unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    procedure Einlese;
    procedure EinleseBenutzer(zw: string);

  end;

var
  Form1: TForm1;
  TB: array of TBenutzer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetLength(TB,0);
  Einlese;

end;

procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
    gefunden: boolean;
begin
  gefunden:= false;
  for i:= 0 to length(Tb)-1 do begin
    if(Edit1.Text = TB[i].GetNAme()) then begin
       if(Edit2.Text = Tb[i].GetPs()) then begin
          ShowMessage('Glückwusch');
          gefunden:=true;
       end else begin
       ShowMessage('Passwort falsch');
       end;
    end;
  end;
  if not(gefunden) then begin
      ShowMessage('Benutzername falsch');
  end;

end;

procedure TForm1.Einlese;
var Datei : Textfile;
    zw    :String;
begin
  AssignFile(Datei,'Daten.txt');
  Reset(Datei);

  while (EOF(Datei))=false do begin
    Readln(Datei,zw);
    EinleseBenutzer(zw);
  end;
  closeFile(Datei);
end;

procedure TForm1.EinleseBenutzer(zw: string);
var na, ps, st: string;
    i: integer;

begin
     i:= zw.IndexOf(';');
     na := zw.Substring(0,i);
     zw := zw.Substring(i+1,zw.length);
     i:= zw.IndexOf(';');
     ps := zw.Substring(0,i);
     st := zw.Substring(zw.Length-1);

     //ShowMessage(na+', '+ps+', '+st);

     SetLength(Tb,length(tb)+1);
     Tb[Length(tb)-1]:= TBenutzer.Create(na,ps,st);


end;

end.

