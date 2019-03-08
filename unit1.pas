unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SpinEx, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtConvertir: TButton;
    BtRAZ: TButton;
    BtQuitter: TButton;
    FSEValeurAConvertir: TFloatSpinEditEx;
    LBValeurconvertie2: TLabel;
    LbValeurAConvertir: TLabel;
    LbValeurconvertie: TLabel;
    RBEuroDollar: TRadioButton;
    RBDollarEuro: TRadioButton;
    RGChoixdeconversion: TRadioGroup;
    procedure BtConvertirClick(Sender: TObject);
    procedure BtRAZClick(Sender: TObject);
    procedure BtQuitterClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BtConvertirClick(Sender: TObject);
Const TAUXCONVERT=0.88;
begin
  If RBEuroDollar.Checked=True Then
     Begin


                LBValeurconvertie2.Caption:=Concat(floattostr((round((FSEValeurAConvertir.Value/TAUXCONVERT)*(100)))/100),' €')

     end
     else
     Begin

                LBValeurconvertie2.Caption:=concat(floattostr((round((FSEValeurAConvertir.Value*TAUXCONVERT)*(100)))/100),' $')

     end;
end;

procedure TForm1.BtRAZClick(Sender: TObject);
begin
     FSEValeurAConvertir.Value:=0;
     LBValeurconvertie2.Caption:='0,0';
     FSEValeurAConvertir.setfocus;
     FSEValeurAConvertir.Hint:='0';
     FSEValeurAConvertir.ShowHint:=true;
end;

procedure TForm1.BtQuitterClick(Sender: TObject);
begin
   case QuestionDlg ('Confirmation','Voulez-vous quitter ?',mtCustom,[mrYes,'Oui', mrNo, 'Non', 'IsDefault'],'') of
        mrYes: close;
    end;
end;





end.

