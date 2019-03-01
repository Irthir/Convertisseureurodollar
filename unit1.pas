unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Const TAUXCONVERT=0.88;
begin
  If RadioButton1.Checked=True Then
     Begin
       If Edit1.Text<>'' Then
           Begin
                Edit2.Text:=floattostr(strtofloat((Edit1.Text))/TAUXCONVERT)
           end;
     end
     else
     Begin
       If Edit2.Text<>'' Then
           Begin
                Edit1.Text:=floattostr(strtofloat((Edit2.Text))*TAUXCONVERT)
           end;
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     Edit1.Text:='';
     Edit2.Text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close;
end;



end.

