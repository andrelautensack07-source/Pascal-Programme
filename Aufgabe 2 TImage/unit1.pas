unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure setImage (z:integer);
  private

  public

  end;

var
  Form1: TForm1;
  zaehler:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Center:=true;
  Randomize;
end;

procedure TForm1.setImage(z: integer);
begin
   case IntToStr(zaehler) of
   '0' : Image1.Picture.LoadFromFile('bild1.jpg');
   '1' : Image1.Picture.LoadFromFile('bild2.jpg');
   '2' : Image1.Picture.LoadFromFile('bild3.jpg');
   '3' : Image1.Picture.LoadFromFile('bild4.jpg');
   '4' : Image1.Picture.LoadFromFile('bild5.jpg');
   '5' : Image1.Picture.LoadFromFile('bild6.jpg');
   end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  zaehler:= Random(6);
  setimage(zaehler);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    image1.Picture.Clear;
end;

end.
