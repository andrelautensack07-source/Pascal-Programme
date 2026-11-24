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
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
  //Image1.Proportional:=true;
  //Image1.Stretch:= true;
  //Image1.AutoSize:=true;
  zaehler := 0;
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
   '6' : Image1.Picture.LoadFromFile('bild7.jpg');
   '7' : Image1.Picture.LoadFromFile('bild8.jpg');
   '8' : Image1.Picture.LoadFromFile('bild9.jpg');
   '9' : Image1.Picture.LoadFromFile('bild10.jpg');
   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //Image1.Picture.LoadFromFile('bild1.jpg');
  setimage(zaehler);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   if zaehler <= 8 then begin
     zaehler:= zaehler+1;
   end;
   setimage(zaehler);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  image1.Picture.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if zaehler >= 1 then begin
     zaehler:= zaehler-1;
   end;
   setimage(zaehler);
end;

end.

