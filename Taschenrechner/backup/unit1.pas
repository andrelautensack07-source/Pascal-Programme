unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class (TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private

  public

  end;

var
   // Diese Variablen gelten in der ganzen Unit und
   // in allen Units, die diese Unit einbinden
  Form1: TForm1;
  Speicher: double;
  Zahl1 : double;
  Zahl2 : double;
  Ergebnis : double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

begin

  Zahl1 := StrtoFloat (Edit1.text);
  Zahl2 := StrtoFloat (Edit2.Text);
  Ergebnis := (Zahl1 + Zahl2);
  Label1.Caption := FloattoStr (Ergebnis);

end;

procedure TForm1.Button2Click(Sender: TObject);

begin

  Zahl1 := StrtoFloat (Edit1.text);
  Zahl2 := StrtoFloat (Edit2.Text);
  Ergebnis := (Zahl1 - Zahl2);
  Label1.Caption := FloattoStr (Ergebnis);

end;

procedure TForm1.Button3Click(Sender: TObject);

begin

  Zahl1 := StrtoFloat (Edit1.text);
  Zahl2 := StrtoFloat (Edit2.Text);
  Ergebnis := (Zahl1 / Zahl2);
  Label1.Caption := FloattoStr (Ergebnis);

end;

procedure TForm1.Button4Click(Sender: TObject);

begin

  Zahl1 := StrtoFloat (Edit1.text);
  Zahl2 := StrtoFloat (Edit2.Text);
  Ergebnis := (Zahl1 * Zahl2);
  Label1.Caption := FloattoStr (Ergebnis);

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

  Edit1.Caption := ' ';
  Edit2.Caption := ' ';
  Label1.Caption := ' ';

end;

procedure TForm1.Button6Click(Sender: TObject);

begin
  Zahl1 := StrtoFloat (Edit1.text);
  if Zahl1 >= 0 then begin
   Ergebnis := sqrt(Zahl1);
   Label1.Caption := FloattoStr (Ergebnis);
  end else begin
    Label1.Caption := 'nicht Lösebar';
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);

begin

  Zahl1 := StrtoFloat (Edit1.text);
  Ergebnis := (Zahl1 * Zahl1);
  Label1.Caption := FloattoStr (Ergebnis);

end;

procedure TForm1.Button8Click(Sender: TObject);

begin

  Zahl1 := StrtoFloat (Edit1.text);
  Ergebnis := (Zahl1 * Zahl1 * Zahl1);
  Label1.Caption := FloattoStr (Ergebnis);

end;

procedure TForm1.Button9Click(Sender: TObject);

begin

  Zahl1 := StrtoFloat (Edit1.text);
  Ergebnis := (1 / Zahl1);
  Label1.Caption := FloattoStr (Ergebnis);

end;

procedure TForm1.Button10Click(Sender: TObject);

begin

  Edit1.Caption := ' ';
  Edit2.Caption := ' ';

end;

procedure TForm1.Button11Click(Sender: TObject);

begin

  Speicher := 0;

end;

procedure TForm1.Button12Click(Sender: TObject);

begin

      Label1.Caption := FloattoStr (Speicher);

end;

procedure TForm1.Button13Click(Sender: TObject);

begin
   Zahl1 := StrtoFloat (Edit1.text);
   Speicher := (Speicher + Zahl1);
end;

procedure TForm1.Button14Click(Sender: TObject);

begin
   Zahl1 := StrtoFloat (Edit1.text);
   Speicher := (Speicher - Zahl1);
end;

procedure TForm1.Button15Click(Sender: TObject);

begin
  Zahl1 := StrtoFloat (Label1.Caption);
  Speicher := Zahl1 ;




end;

end.

