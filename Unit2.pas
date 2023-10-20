unit Unit2;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, TeeProcs, Chart,
  TeEngine, Series, ComCtrls;
type
  Tmass1=array[0..450] of Extended;
  TForm2 = class(TForm)
    PaintBox1: TPaintBox;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    Series5: TFastLineSeries;
    Series6: TFastLineSeries;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    ComboBox4: TComboBox;
    ComboBox3: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label4: TLabel;
    Button1: TButton;
    GroupBox4: TGroupBox;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    TrackBar5: TTrackBar;
    Label2: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label3: TLabel;
    PaintBox2: TPaintBox;
    TrackBar2: TTrackBar;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label9: TLabel;
    Label23: TLabel;
    GroupBox5: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    TrackBar1: TTrackBar;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Series7: TFastLineSeries;
    procedure FormPaint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Diagram;
    procedure raschet;
    procedure Vector;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure TrackBar5Change(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ur,Ul,Uc,I,fi,f,Z,w:Tmass1;
  Form2: TForm2;
  R,L,C,U,f0,w0:extended;
  mas, mas2,mas3,Ki, Kfi:extended;
  j:integer;
implementation
 uses unit1;
{$R *.dfm}
procedure TForm2.raschet;

   var k:integer;
  begin

     f0:=1/(2*pi*sqrt(L*C));
     Label9.Caption:=FloatToStrf(f0,fffixed,4,0);
     f[0]:=0.1;
     w[0]:=f[0]*2*pi;
     k:=0;
     while k<=450 do
      begin
        w[k]:=2*pi*f[k];
        Z[k]:=sqrt(R*R+sqr(w[k]*L-(1/(w[k]*C))));
        I[k]:=U/Z[k];
        Ur[k]:=R*I[k];
        Ul[k]:=w[k]*L*I[k];
        Uc[k]:=(1/(w[k]*C))*I[k];
        fi[k]:=(arctan((Ul[k]- Uc[k])/ Ur[k]))/PI*180;
        f[k+1]:=f[k]+10;

      StringGrid1.Cells[0,k]:=FloatToStr(k);
      StringGrid1.Cells[1,k]:=FloatToStrf(f[k] ,fffixed,7,3);
      StringGrid1.Cells[2,k]:=FloatToStrf(U ,fffixed,7,3);
      StringGrid1.Cells[3,k]:=FloatToStrf(Ur[k],fffixed,7,3);
      StringGrid1.Cells[4,k]:=FloatToStrf(Ul[k],fffixed,7,3);
      StringGrid1.Cells[5,k]:=FloatToStrf(Uc[k],fffixed,7,3);
      StringGrid1.Cells[6,k]:=FloatToStrf(I[k]*1000,fffixed,7,3);
      StringGrid1.Cells[7,k]:=FloatToStrf(fi[k],fffixed,7,3);
        k:=k+1;

     end;

   if RadioButton4.Checked=true then Ki:=1000;
   if RadioButton5.Checked=true then Kfi:=1;
  j:=162;
     Series7.Clear;
  Diagram;
  mas2:=25;
   mas3:=9000;

  Vector;
  end;

procedure TForm2.Vector;
   var delta:extended;
 begin
  /////Векторная диаграмма----------------------------------------------------------
  PaintBox2.Refresh;
  if Ul[j]>Uc[j] then
  begin

  PaintBox2.Canvas.Pen.Color:=250;
  PaintBox2.Canvas.Pen.Width:=2;
  //Напрежение Ur-------------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clgreen;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5+Ur[j]*mas2),round(PaintBox2.ClientHeight/2-5));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), round(PaintBox2.ClientHeight/2-2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5+Ur[j]*mas2), round(PaintBox2.ClientHeight/2+3));
  //Напрежение Ul----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clWebDarkOrange;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5), Round(PaintBox2.ClientHeight/2+5-Ul[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+3), Round(PaintBox2.ClientHeight/2+5-Ul[j]*mas2));
  //Напрежение Uc----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clblue;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+3), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2));
  //Ток I----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clWebBlueViolet;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+I[j]*mas3),  round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-4+I[j]*mas3),  round(PaintBox2.ClientHeight/2-4+3));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+I[j]*mas3),  round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-4+I[j]*mas3),  round(PaintBox2.ClientHeight/2+4+3));
  PaintBox2.Canvas.Pen.Color:=1;
  PaintBox2.Canvas.MoveTo(0,0);
  //Напрежение Ul+Ur----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clWebDarkOrange;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), Round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-4+Ur[j]*mas2), Round(PaintBox2.ClientHeight/2+5-Ul[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), Round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+5+Ur[j]*mas2), Round(PaintBox2.ClientHeight/2+5-Ul[j]*mas2));
  //Напрежение (Ul+Ur)-Uc----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clblue;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4), round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-3+Ur[j]*mas2-4), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+3+Ur[j]*mas2-4), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2-Ul[j]*mas2));
  //Напрежение (Ul+Ur-Uc)----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clred;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4-2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4-8), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4-2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4-2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2+5));

  PaintBox2.Canvas.Pen.Width:=1;
  PaintBox2.Canvas.MoveTo(0,0);
  PaintBox2.Canvas.Pen.Color:=clblack;
  end;

 if abs(Uc[j]-Ul[j])<0.1 then

  begin
    PaintBox2.Refresh;
     PaintBox2.Canvas.Pen.Color:=250;
  PaintBox2.Canvas.Pen.Width:=2;
  //Напрежение Ur-------------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clgreen;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5+Ur[j]*mas2),round(PaintBox2.ClientHeight/2-5));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), round(PaintBox2.ClientHeight/2-2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5+Ur[j]*mas2), round(PaintBox2.ClientHeight/2+3));
  //Напрежение Ul----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clWebDarkOrange;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5), Round(PaintBox2.ClientHeight/2+5-Ul[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+3), Round(PaintBox2.ClientHeight/2+5-Ul[j]*mas2));
  //Напрежение Uc----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clblue;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+3), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2));
  //Ток I----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clWebBlueViolet;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+I[j]*mas3),  round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-4+I[j]*mas3),  round(PaintBox2.ClientHeight/2-4+3));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+I[j]*mas3),  round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-4+I[j]*mas3),  round(PaintBox2.ClientHeight/2+4+3));
  PaintBox2.Canvas.Pen.Color:=1;
  PaintBox2.Canvas.MoveTo(0,0);

  //Напрежение (Ul+Ur-Uc)----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clred;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-5), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2+5));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-5), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2-5));
   PaintBox2.Canvas.MoveTo(0,0);
  PaintBox2.Canvas.Pen.Color:=clblack;
  PaintBox2.Canvas.Pen.Width:=1;
  end;

 if Ul[j]<Uc[j] then
  begin

  PaintBox2.Canvas.Pen.Color:=250;
  PaintBox2.Canvas.Pen.Width:=2;
  //Напрежение Ur-------------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clgreen;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5+Ur[j]*mas2),round(PaintBox2.ClientHeight/2-5));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), round(PaintBox2.ClientHeight/2-2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5+Ur[j]*mas2), round(PaintBox2.ClientHeight/2+3));
  //Напрежение Ul----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clWebDarkOrange;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5), Round(PaintBox2.ClientHeight/2+5-Ul[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+3), Round(PaintBox2.ClientHeight/2+5-Ul[j]*mas2));
  //Напрежение Uc----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clblue;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-5), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+3), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2));
  //Ток I----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clWebBlueViolet;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+I[j]*mas3),  round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-4+I[j]*mas3),  round(PaintBox2.ClientHeight/2-4+3));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+I[j]*mas3),  round(PaintBox2.ClientHeight/2+3));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-4+I[j]*mas3),  round(PaintBox2.ClientHeight/2+4+3));
  PaintBox2.Canvas.Pen.Color:=1;
  PaintBox2.Canvas.MoveTo(0,0);
  //Напрежение Ul+Uc----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clblue;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-4+Ur[j]*mas2), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+5+Ur[j]*mas2), Round(PaintBox2.ClientHeight/2-5+Uc[j]*mas2));
  //Напрежение (Ul+Ur)-Uc----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clWebDarkOrange;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4), round(PaintBox2.ClientHeight/2+Uc[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3-3+Ur[j]*mas2-4), Round(PaintBox2.ClientHeight/2+5+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+3+Ur[j]*mas2-4), Round(PaintBox2.ClientHeight/2+5+Uc[j]*mas2-Ul[j]*mas2));
  //Напрежение (Ul+Ur-Uc)----------------------------------------------------------------------
  PaintBox2.Canvas.Pen.Color:=clred;
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3), round(PaintBox2.ClientHeight/2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4-2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4-8), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4-2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2));
  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/3+Ur[j]*mas2-4-2), Round(PaintBox2.ClientHeight/2+Uc[j]*mas2-Ul[j]*mas2-5));

  PaintBox2.Canvas.MoveTo(0,0);
  PaintBox2.Canvas.Pen.Color:=clblack;
  PaintBox2.Canvas.Pen.Width:=1;
  PaintBox2.Color:=clWhite;
  end;

 end;

procedure TForm2.Button1Click(Sender: TObject);
begin
     R:=StrToFloat(ComboBox2.Text);
     L:=StrToFloat(ComboBox3.Text)/1000;
     C:=StrToFloat(ComboBox4.Text)/1000000;
     U:=StrToFloat(ComboBox1.Text);
     raschet;
       Series7.Clear;
     Diagram;


     TrackBar1.Enabled:=true;
     GroupBox5.Enabled:=true;
end;

procedure TForm2.FormPaint(Sender: TObject);

begin
     PaintBox1.Canvas.Brush.Style:=bsClear;
     mas:=0.66;
    //Рамка----------------------------------------------------------------------
    PaintBox1.Canvas.LineTo( PaintBox1.ClientWidth-1, 0);
    PaintBox1.Canvas.LineTo(PaintBox1.ClientWidth-1, PaintBox1.ClientHeight-1);
    PaintBox1.Canvas.LineTo(0,PaintBox1.ClientHeight-1);
    PaintBox1.Canvas.LineTo(0,0);

    PaintBox2.Canvas.LineTo( PaintBox2.ClientWidth-1, 0);
    PaintBox2.Canvas.LineTo(PaintBox2.ClientWidth-1, PaintBox2.ClientHeight-1);
    PaintBox2.Canvas.LineTo(0,PaintBox2.ClientHeight-1);
    PaintBox2.Canvas.LineTo(0,0);


//////////////////////////////////////////////////////////////////////////
//////////////////////////СХЕМА////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

     PaintBox1.Canvas.Pen.Width:=2;

     PaintBox1.Canvas.MoveTo(round(125*mas),round(60*mas));
     PaintBox1.Canvas.LineTo(round(300*mas),round(60*mas));
     PaintBox1.Canvas.MoveTo(round(340*mas),round(60*mas));
     PaintBox1.Canvas.Rectangle(round(300*mas), round(50*mas),round(340*mas),round(70*mas));  // Активное сопротивлените
     PaintBox1.Canvas.LineTo(round(530*mas),round(60*mas));
     PaintBox1.Canvas.LineTo(round(530*mas),round(120*mas));
     PaintBox1.Canvas.MoveTo(round(530*mas),round(200*mas));
     //Индуктивность----------------------------------------
     PaintBox1.Canvas.arc(round(520*mas),round(120*mas),round(540*mas),round(140*mas),round(530*mas),round(220*mas),round(530*mas),round(110*mas));
     PaintBox1.Canvas.arc(round(520*mas),round(140*mas),round(540*mas),round(160*mas),round(530*mas),round(240*mas),round(530*mas),round(130*mas));
     PaintBox1.Canvas.arc(round(520*mas),round(160*mas),round(540*mas),round(180*mas),round(530*mas),round(240*mas),round(530*mas),round(150*mas));
     PaintBox1.Canvas.arc(round(520*mas),round(180*mas),round(540*mas),round(200*mas),round(530*mas),round(240*mas),round(530*mas),round(170*mas));
     //-----------------------------------------------------
     PaintBox1.Canvas.LineTo(round(530*mas),round(260*mas));
     PaintBox1.Canvas.LineTo(round(325*mas),round(260*mas));
     //Конденсатор-------------------------------------------
     PaintBox1.Canvas.MoveTo(round(325*mas),round(235*mas));
     PaintBox1.Canvas.LineTo(round(325*mas),round(285*mas));
     PaintBox1.Canvas.MoveTo(round(315*mas),round(235*mas));
     PaintBox1.Canvas.LineTo(round(315*mas),round(285*mas));
     //-----------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(315*mas),round(260*mas));
     PaintBox1.Canvas.LineTo(round(125*mas),round(260*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     //Клемы-------------------------------------------------
     PaintBox1.Canvas.Ellipse(round(115*mas),round(255*mas),round(125*mas),round(265*mas));
     PaintBox1.Canvas.Ellipse(round(115*mas),round(55*mas),round(125*mas),round(65*mas));
     //Надписи-----------------------------------------------
     PaintBox1.Canvas.Font.Size:=round(16*mas);
     PaintBox1.Canvas.TextOut(round(130*mas),round(145*mas),'u');
     PaintBox1.Canvas.TextOut(round(310*mas),round(22*mas),'R');
     PaintBox1.Canvas.TextOut(round(335*mas),round(225*mas),'С');
     PaintBox1.Canvas.TextOut(round(560*mas),round(145*mas),'L');

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(315*mas),round(80*mas),'u');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(328*mas),round(93*mas),'R');

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(485*mas),round(145*mas),'u');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(500*mas),round(160*mas),'L');

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(310*mas),round(195*mas),'u');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(322*mas),round(207*mas),'C');

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(200*mas),round(25*mas),'i');

     ////////////////Напряжения и токи//////////////////////////////////////////
     //Напряжение U-----------------------
     PaintBox1.Canvas.Pen.Width:=1;
     PaintBox1.Canvas.MoveTo(round(120*mas),round(70*mas));
     PaintBox1.Canvas.LineTo(round(120*mas),round(250*mas));
     PaintBox1.Canvas.LineTo(round(115*mas),round(245*mas));
     PaintBox1.Canvas.MoveTo(round(120*mas),round(250*mas));
     PaintBox1.Canvas.LineTo(round(125*mas),round(245*mas));

     //Напряжение R-------------------------------------
     PaintBox1.Canvas.MoveTo(round(290*mas),round(80*mas));
     PaintBox1.Canvas.LineTo(round(350*mas),round(80*mas));
     PaintBox1.Canvas.LineTo(round(345*mas),round(75*mas));
     PaintBox1.Canvas.MoveTo(round(350*mas),round(80*mas));
     PaintBox1.Canvas.LineTo(round(345*mas),round(85*mas));
     //Напряжение L-------------------------------------
     PaintBox1.Canvas.MoveTo(round(510*mas),round(120*mas));
     PaintBox1.Canvas.LineTo(round(510*mas),round(200*mas));
     PaintBox1.Canvas.LineTo(round(505*mas),round(195*mas));
     PaintBox1.Canvas.MoveTo(round(510*mas),round(200*mas));
     PaintBox1.Canvas.LineTo(round(515*mas),round(195*mas));
     //Напряжение C-------------------------------------
     PaintBox1.Canvas.MoveTo(round(350*mas),round(220*mas));
     PaintBox1.Canvas.LineTo(round(290*mas),round(220*mas));
     PaintBox1.Canvas.LineTo(round(295*mas),round(215*mas));
     PaintBox1.Canvas.MoveTo(round(290*mas),round(220*mas));
     PaintBox1.Canvas.LineTo(round(295*mas),round(225*mas));
     //Ток-------------------------------------
     PaintBox1.Canvas.Pen.Width:=round(2*mas);
     PaintBox1.Canvas.MoveTo(round(200*mas),round(55*mas));
     PaintBox1.Canvas.LineTo(round(210*mas),round(60*mas));
     PaintBox1.Canvas.LineTo(round(200*mas),round(65*mas));

     PaintBox1.Canvas.MoveTo(0,0);

           //  Заголовки таблицы----------
  StringGrid1.Cells[0,0]:='№';
  stringGrid1.Cells[1,0]:='f, Гц' ;
  StringGrid1.Cells[2,0]:='U, В';
  StringGrid1.Cells[3,0]:='Ur, В';
  StringGrid1.Cells[4,0]:='Ul,  В';
  StringGrid1.Cells[5,0]:='Uc, В ';
  stringGrid1.Cells[6,0]:='I, мА' ;
  StringGrid1.Cells[7,0]:='fi, град';
  Ki:=100;
  Kfi:=0.01;
end;

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
   GroupBox3.Enabled:=true;
   GroupBox4.Enabled:=false;

end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
   GroupBox4.Enabled:=true;
   GroupBox3.Enabled:=false;

   R:=TrackBar2.Position;
   L:=TrackBar3.Position/1000;
   C:=TrackBar4.Position*0.01/1000000;
   U:=TrackBar5.Position;


   Label10.Caption:=FloatToStr(TrackBar2.Position);
   Label15.Caption:=FloatToStr(TrackBar3.Position);
   Label16.Caption:=FloatToStr(TrackBar4.Position*0.01);
   Label17.Caption:=FloatToStr(TrackBar5.Position);

   raschet;
   Vector;
   TrackBar1.Enabled:=true;
   GroupBox5.Enabled:=true;
end;

procedure TForm2.RadioButton3Click(Sender: TObject);
begin
  raschet;
  Series1.Visible:=true;
  Series2.Visible:=true;
  Series3.Visible:=true;
  Series4.Visible:=true;
  Series5.Visible:=true;
  Series6.Visible:=true;
  Series7.Visible:=true;

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;
  Series5.Clear;
  Series6.Clear;
  Series7.Clear;
  Diagram;

end;

procedure TForm2.RadioButton4Click(Sender: TObject);
begin
  Series1.Visible:=false;
  Series2.Visible:=false;
  Series3.Visible:=false;
  Series4.Visible:=false;
  Series5.Visible:=true;
  Series6.Visible:=false;
  Series7.Visible:=true;
  Series7.Clear;
  Ki:=1000;

  Diagram;

end;

procedure TForm2.RadioButton5Click(Sender: TObject);
begin
  Series1.Visible:=false;
  Series2.Visible:=false;
  Series3.Visible:=false;
  Series4.Visible:=false;
  Series5.Visible:=false;
  Series6.Visible:=true;
  Series7.Visible:=true;
  Series7.Clear;
  Kfi:=1;

  Diagram;

end;

procedure TForm2.TrackBar1Change(Sender: TObject);
begin
j:=TrackBar1.Position;
Label26.Caption:=FloatToStr(f[j]);

Vector;
 if RadioButton4.Checked=true then Ki:=1000;
  if RadioButton5.Checked=true then Kfi:=1;
Diagram;
end;

procedure TForm2.TrackBar2Change(Sender: TObject);

 var k:integer;
begin
     R:=TrackBar2.Position;
     Label10.Caption:=FloatToStr(R);

     L:=TrackBar3.Position/1000;
     Label15.Caption:=FloatToStr(L*1000);

     C:=TrackBar4.Position*0.01/1000000;
     Label16.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);
 raschet;


end;

procedure TForm2.TrackBar3Change(Sender: TObject);
 var k:integer;
begin
     R:=TrackBar2.Position;
     Label10.Caption:=FloatToStr(R);

     L:=TrackBar3.Position/1000;
     Label15.Caption:=FloatToStr(L*1000);

     C:=TrackBar4.Position*0.01/1000000;
     Label16.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     raschet;
end;

procedure TForm2.TrackBar4Change(Sender: TObject);
 var k:integer;
begin
     R:=TrackBar2.Position;
     Label10.Caption:=FloatToStr(R);

     L:=TrackBar3.Position/1000;
     Label15.Caption:=FloatToStr(L*1000);

     C:=TrackBar4.Position*0.01/1000000;
     Label16.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     raschet;

end;

procedure TForm2.TrackBar5Change(Sender: TObject);
 var k:integer;
begin
     R:=TrackBar2.Position;
     Label10.Caption:=FloatToStr(R);

     L:=TrackBar3.Position/1000;
     Label15.Caption:=FloatToStr(L*1000);

     C:=TrackBar4.Position*0.01/1000000;
     Label16.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     raschet;

end;

procedure TForm2.Diagram;
 var t:integer;
 begin
    Chart1.Refresh;
    Series1.Clear;
    Series2.Clear;
    Series3.Clear;
    Series4.Clear;
    Series5.Clear;
    Series6.Clear;
    Series7.Clear;

    t:=0;

    while t<=450 do
    begin
      Series1.AddXY(f[t],U,'');
      Series2.AddXY(f[t],Ur[t],'');
      Series3.AddXY(f[t],Ul[t],'');
      Series4.AddXY(f[t],Uc[t],'');
     Series5.AddXY(f[t],I[t]*Ki,'');
      Series6.AddXY(f[t],fi[t]*Kfi,'');

      t:=t+1;
    end;

   Series7.AddXY(f[j],Chart1.LeftAxis.Maximum,'');
   Series7.AddXY(f[j],Chart1.LeftAxis.Minimum,'');




 end;

end.
