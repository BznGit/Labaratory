unit Unit5;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, TeeProcs, Chart,
  TeEngine, Series, ComCtrls, Math, VarCmplx;

type
 Tmass1=array[0..10000] of Extended;
  TForm5 = class(TForm)
 PaintBox1: TPaintBox;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series4: TFastLineSeries;
    Series5: TFastLineSeries;
    Series6: TFastLineSeries;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    PaintBox2: TPaintBox;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox5: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    TrackBar1: TTrackBar;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Series7: TFastLineSeries;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    TrackBar5: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    TrackBar9: TTrackBar;
    TrackBar10: TTrackBar;
    TrackBar11: TTrackBar;
    TrackBar8: TTrackBar;
    GroupBox3: TGroupBox;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    procedure FormPaint(Sender: TObject);
    procedure Diagram;
    procedure raschet;
    procedure Vector;
    procedure VecXY(ModV,alfa:extended; out x,y:extended);
    procedure XYVec(x,y:extended;out  ModV,alfa:extended);

    procedure TrackBar5Change(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);

    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure TrackBar6Change(Sender: TObject);
    procedure TrackBar7Change(Sender: TObject);
    procedure TrackBar8Change(Sender: TObject);
    procedure TrackBar9Change(Sender: TObject);
    procedure TrackBar10Change(Sender: TObject);
    procedure TrackBar11Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ua1,Ub1,Uc1,Uab1,Ub1c,Uca1, Uap,Ubp,Ucp,Ia1,Ib1,Ic1,Inet, Pa,Pb,Pc,P:Tmass1;
  Form5: TForm5;
  f,w,R,L,C,U,Um,f0,w0:extended;
  t,mas, mas2,mas3,Ki, Kfi:extended;
  j:integer;
  UgolUa, UgolUb, UgolUc,
  UgolIa, UgolIb, UgolIc,
  UgolZa, UgolZb, UgolZc,
  Ua,Ub,Uc,
  Ia,Ib,Ic,
  Za, Zb, Zc,
  Ra, Xla, Xca,
  Rb, Xlb, Xcb,
  Rc, Xlc, Xcc,
  La, Ca,
  Lb, Cb,
  Lc, Cc,
  x1,y1:  extended;
  x2,y2:  extended;
  x3,y3:  extended;
  x4,y4:  extended;
  x5,y5:  extended;
  x6,y6:  extended;
implementation
 uses unit1;
{$R *.dfm}
procedure TForm5.VecXY(ModV,alfa:extended; out x,y:extended);

  begin
     
     x:=ModV*cos(alfa*pi/180);
     y:=ModV*sin(alfa*pi/180);


end;

procedure TForm5.XYVec(x,y:extended;out  ModV,alfa:extended);

begin
   ModV:=sqrt(sqr(x)+sqr(y));
   alfa:=(arctan(y/x))*180/3.14;
   label9.Caption:=floattostr(alfa);
end;

procedure TForm5.raschet;
   var k:integer;
  begin

    Um:=U*sqrt(2);

   // Label9.Caption:=FloatToStrf(f0,fffixed,4,0);
     w:=f*2*pi;
     k:=0;
     t:=0.0001;

     UgolUa:=0;
     UgolUb:=-120;
     UgolUc:=120;


     Xla:= w*La;
     Xca:= 1/w*Ca;
     Ra:=R;
     Za:=sqrt(sqr(Ra)+sqr(Xla-Xca));
     UgolZa:=(arctan((Xla-Xca)/Ra))*180/pi;
     Ia:=(Ua/Za)*100;
     UgolIA:= UgolIa-UgolZa;


     VecXY(U,UgolUa,x1,y1);
     VecXY(U,UgolUb,x2,y2);
     VecXY(U,UgolUc,x3,y3);

     VecXY(Ia,UgolIA,x4,y4);
     VecXY(Ic,UgolIb,x5,y5);
     VecXY(Ib,UgolIc,x6,y6);
      while k<=10000 do
      begin

      Ua1[k]:=Um*sin(w*t);
      Ub1[k]:=Um*sin(w*t-pi*2/3);
      Uc1[k]:=Um*sin(w*t+pi*2/3);
      t:=t+0.00001;
    {
          StringGrid1.Cells[0,k]:=FloatToStr(k);
          StringGrid1.Cells[1,k]:=FloatToStrf(f[k] ,fffixed,7,3);
          StringGrid1.Cells[2,k]:=FloatToStrf(U ,fffixed,7,3);
          StringGrid1.Cells[3,k]:=FloatToStrf(Ir[k]*1000,fffixed,7,3);
          StringGrid1.Cells[4,k]:=FloatToStrf(Il[k]*1000,fffixed,7,3);
          StringGrid1.Cells[5,k]:=FloatToStrf(Ic[k]*1000,fffixed,7,3);
          StringGrid1.Cells[6,k]:=FloatToStrf(I[k]*1000,fffixed,7,3);
          StringGrid1.Cells[7,k]:=FloatToStrf(fi[k],fffixed,7,3);
  }
        k:=k+1;

     end;
   if RadioButton4.Checked=true then Ki:=1000;
   if RadioButton5.Checked=true then Kfi:=1;
  //j:=147;
     Series7.Clear;
 // Diagram;
   mas:=50;
  mas2:=50;
   mas3:=50;

  Vector;
  end;

procedure TForm5.Vector;
   var rez:boolean;
 begin

    /////Векторная диаграмма----------------------------------------------------------
   
     PaintBox2.Refresh;
    
     PaintBox2.Canvas.Pen.Color:=250;
     PaintBox2.Canvas.Pen.Width:=2;
     // UA -------------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clred;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2), round(PaintBox2.ClientHeight/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x1*mas2), round(PaintBox2.ClientHeight/2+y1*mas2));

     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-5+x1*mas2),round(PaintBox2.ClientHeight/2-3+y1*mas2));
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x1*mas2), round(PaintBox2.ClientHeight/2-2+y1*mas2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-5+x1*mas2), round(PaintBox2.ClientHeight/2+3+y1*mas2));
     //UB ----------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clGreen;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2), round(PaintBox2.ClientHeight/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x2*mas2), Round(PaintBox2.ClientHeight/2-y2*mas2));

     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-1+x2*mas2), Round(PaintBox2.ClientHeight/2-5-y2*mas2));
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x2*mas2), Round(PaintBox2.ClientHeight/2-y2*mas2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+7+x2*mas2), Round(PaintBox2.ClientHeight/2-5-y2*mas2));
       //UC----------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clblue;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2), round(PaintBox2.ClientHeight/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x3*mas2), Round(PaintBox2.ClientHeight/2+y2*mas2));

     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+7+x2*mas2), Round(PaintBox2.ClientHeight/2+5+y2*mas2));
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x3*mas2), Round(PaintBox2.ClientHeight/2+y2*mas2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-1+x3*mas2), Round(PaintBox2.ClientHeight/2+6+y2*mas2));
    //UAB---------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clRed;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x1*mas2), Round(PaintBox2.ClientHeight/2-y1*mas2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x2*mas2), round(PaintBox2.ClientHeight/2-y2*mas2));
     //UBC---------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clgreen;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x2*mas2), Round(PaintBox2.ClientHeight/2-y2*mas2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x2*mas2), round(PaintBox2.ClientHeight/2-y3*mas2));
      //UCA---------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clblue;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x3*mas2), Round(PaintBox2.ClientHeight/2-y3*mas2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x1*mas2), round(PaintBox2.ClientHeight/2+y1*mas2));
      // IA -------------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clblack;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2), round(PaintBox2.ClientHeight/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x4*mas2/2), round(PaintBox2.ClientHeight/2+y4*mas2/2));

     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-5+x4*mas2/2),round(PaintBox2.ClientHeight/2-3+y4*mas2/2));
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x4*mas2/2), round(PaintBox2.ClientHeight/2-2+y4*mas2/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-5+x4*mas2/2), round(PaintBox2.ClientHeight/2+3+y4*mas2/2));
     //IB ----------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clblack;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2), round(PaintBox2.ClientHeight/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x2*mas2/2), Round(PaintBox2.ClientHeight/2-y2*mas2/2));

     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-1+x2*mas2/2), Round(PaintBox2.ClientHeight/2-5-y2*mas2/2));
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x2*mas2/2), Round(PaintBox2.ClientHeight/2-y2*mas2/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+7+x2*mas2/2), Round(PaintBox2.ClientHeight/2-5-y2*mas2/2));
       //IC----------------------------------------------------------------------
     PaintBox2.Canvas.Pen.Color:=clblack;
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2), round(PaintBox2.ClientHeight/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+x3*mas2), Round(PaintBox2.ClientHeight/2+y2*mas2));

     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+7+x2*mas2), Round(PaintBox2.ClientHeight/2+5+y2*mas2));
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+x3*mas2), Round(PaintBox2.ClientHeight/2+y2*mas2/2));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-1+x3*mas2), Round(PaintBox2.ClientHeight/2+6+y2*mas2));


    {  PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-4+U*mas3),  round(PaintBox2.ClientHeight/2-4+3));
     PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+U*mas3),  round(PaintBox2.ClientHeight/2+3));
     PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-4+U*mas3),  round(PaintBox2.ClientHeight/2+4+3));
     PaintBox2.Canvas.Pen.Color:=1;
     PaintBox2.Canvas.MoveTo(0,0);
       rez:=false;
          if abs(Ic[j]-Il[j])<0.0008 then

           rez:=true else rez:=false;


          if (Il[j]>Ic[j]) and (rez=false) then
               begin
                   //Ток Il+Ir----------------------------------------------------------------------
                   PaintBox2.Canvas.Pen.Color:=clWebDarkOrange;
                   PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2), round(PaintBox2.ClientHeight/2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2), Round(PaintBox2.ClientHeight/2+Il[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-4+Ir[j]*mas2), Round(PaintBox2.ClientHeight/2-5+Il[j]*mas2));
                   PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2), Round(PaintBox2.ClientHeight/2+Il[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+5+Ir[j]*mas2), Round(PaintBox2.ClientHeight/2-5+Il[j]*mas2));

                   //Ток (Il+Ir)-Ic----------------------------------------------------------------------
                   PaintBox2.Canvas.Pen.Color:=clblue;
                   PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-4), round(PaintBox2.ClientHeight/2+Il[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-4), Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-3+Ir[j]*mas2-4), Round(PaintBox2.ClientHeight/2+5+Il[j]*mas2-Ic[j]*mas2));
                   PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-4), Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+3+Ir[j]*mas2-4), Round(PaintBox2.ClientHeight/2+5+Il[j]*mas2-Ic[j]*mas2));
                  //Ток I )----------------------------------------------------------------------
                   PaintBox2.Canvas.Pen.Color:=clred;
                   PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2),             round(PaintBox2.ClientHeight/2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-5),  Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-10),Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2-5));
                   PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-5),  Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-10),Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2+5));

                   PaintBox2.Canvas.Pen.Width:=1;
                   PaintBox2.Canvas.MoveTo(0,0);
                   PaintBox2.Canvas.Pen.Color:=clblack;


         end;


           if (Il[j]<Ic[j])  and (rez=false) then
                begin
                   //Ток Ic+Ir----------------------------------------------------------------------
                  PaintBox2.Canvas.Pen.Color:=clblue;
                   PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2), round(PaintBox2.ClientHeight/2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2), Round(PaintBox2.ClientHeight/2-Ic[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-4+Ir[j]*mas2), Round(PaintBox2.ClientHeight/2+5-Ic[j]*mas2));
                   PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2), Round(PaintBox2.ClientHeight/2-Ic[j]*mas2));
                   PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+5+Ir[j]*mas2), Round(PaintBox2.ClientHeight/2+5-Ic[j]*mas2));

                     //Ток (Il+Ir)-Ic----------------------------------------------------------------------
                        PaintBox2.Canvas.Pen.Color:=clWebDarkOrange;
                       PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-4), round(PaintBox2.ClientHeight/2-Ic[j]*mas2));
                       PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-4), Round(PaintBox2.ClientHeight/2-Ic[j]*mas2+Il[j]*mas2));
                       PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2-3+Ir[j]*mas2-4), Round(PaintBox2.ClientHeight/2-5-Ic[j]*mas2+Il[j]*mas2));
                       PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-4), Round(PaintBox2.ClientHeight/2-Ic[j]*mas2+Il[j]*mas2));
                       PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+3+Ir[j]*mas2-4), Round(PaintBox2.ClientHeight/2-5-Ic[j]*mas2+Il[j]*mas2));
                       //Ток I )----------------------------------------------------------------------
                       PaintBox2.Canvas.Pen.Color:=clred;
                       PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2),             round(PaintBox2.ClientHeight/2));
                       PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-5),  Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2));
                       PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-10),Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2-5));
                       PaintBox2.Canvas.MoveTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-5),  Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2));
                       PaintBox2.Canvas.LineTo(round(PaintBox2.ClientWidth/2+Ir[j]*mas2-10),Round(PaintBox2.ClientHeight/2+Il[j]*mas2-Ic[j]*mas2+5));

                   end;       }

        PaintBox2.Canvas.MoveTo(0,0);
        PaintBox2.Canvas.Pen.Color:=clblack;
        PaintBox2.Canvas.Pen.Width:=1;
        PaintBox2.Color:=clWhite;



 end;

procedure TForm5.FormCreate(Sender: TObject);
begin

   f:=TrackBar1.Position;
   U:=TrackBar5.Position;

   GroupBox4.Enabled:=true;
   GroupBox3.Enabled:=false;

   Ra:=TrackBar2.Position;
   La:=TrackBar3.Position/1000;
   Ca:=TrackBar4.Position*0.01/1000000;

   Rb:=TrackBar2.Position;
   Lb:=TrackBar3.Position/1000;
   Cb:=TrackBar4.Position*0.01/1000000;

   Rc:=TrackBar2.Position;
   Lc:=TrackBar3.Position/1000;
   Cc:=TrackBar4.Position*0.01/1000000;

   Label10.Caption:=FloatToStr(TrackBar2.Position);
   Label15.Caption:=FloatToStr(TrackBar3.Position);
   Label16.Caption:=FloatToStr(TrackBar4.Position*0.01);
   Label17.Caption:=FloatToStr(TrackBar5.Position);

    // raschet;
     Series7.Clear;
     Diagram;
     Vector;

     TrackBar1.Enabled:=true;
     GroupBox5.Enabled:=true;
end;

procedure TForm5.FormPaint(Sender: TObject);

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
     //Фаза А------------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(125*mas),round(50*mas));
     PaintBox1.Canvas.LineTo(round(500*mas),round(50*mas));
     PaintBox1.Canvas.Rectangle(round(500*mas), round(40*mas),round(540*mas),round(60*mas));
     PaintBox1.Canvas.MoveTo(round(540*mas),round(50*mas));
     PaintBox1.Canvas.LineTo(round(620*mas),round(50*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     //Фаза В------------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(125*mas),round(130*mas));
     PaintBox1.Canvas.LineTo(round(500*mas),round(130*mas));
     PaintBox1.Canvas.Rectangle(round(500*mas), round(120*mas),round(540*mas),round(140*mas));
     PaintBox1.Canvas.MoveTo(round(540*mas),round(130*mas));
     PaintBox1.Canvas.LineTo(round(620*mas),round(130*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     //Фаза С------------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(125*mas),round(210*mas));
     PaintBox1.Canvas.LineTo(round(500*mas),round(210*mas));
     PaintBox1.Canvas.Rectangle(round(500*mas), round(200*mas),round(540*mas),round(220*mas));
     PaintBox1.Canvas.MoveTo(round(540*mas),round(210*mas));
     PaintBox1.Canvas.LineTo(round(620*mas),round(210*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     //Общая-----------------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(620*mas),round(50*mas));
     PaintBox1.Canvas.LineTo(round(620*mas),round(210*mas));
     PaintBox1.Canvas.MoveTo(round(620*mas),round(130*mas));
     PaintBox1.Canvas.LineTo(round(700*mas),round(130*mas));
     PaintBox1.Canvas.LineTo(round(700*mas),round(290*mas));
     PaintBox1.Canvas.LineTo(round(540*mas),round(290*mas));
     //Нейтраль------------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(125*mas),round(290*mas));
     PaintBox1.Canvas.LineTo(round(500*mas),round(290*mas));
     PaintBox1.Canvas.Rectangle(round(500*mas), round(280*mas),round(540*mas),round(300*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     //Клемы источника-------------------------------------------------
     PaintBox1.Canvas.Ellipse(round(115*mas),round(45*mas),round(125*mas),round(55*mas));
     PaintBox1.Canvas.Ellipse(round(115*mas),round(125*mas),round(125*mas),round(135*mas));
     PaintBox1.Canvas.Ellipse(round(115*mas),round(205*mas),round(125*mas),round(215*mas));
      PaintBox1.Canvas.Ellipse(round(115*mas),round(285*mas),round(125*mas),round(295*mas));
     //Клемы нагрузки-------------------------------------------------
     PaintBox1.Canvas.Brush.Style:=bsSolid;
     PaintBox1.Canvas.Ellipse(round(460*mas),round(45*mas),round(470*mas),round(55*mas));
     PaintBox1.Canvas.Ellipse(round(460*mas),round(125*mas),round(470*mas),round(135*mas));
     PaintBox1.Canvas.Ellipse(round(460*mas),round(205*mas),round(470*mas),round(215*mas));

     PaintBox1.Canvas.Brush.Style:=bsSolid;
     PaintBox1.Canvas.Ellipse(round(570*mas),round(45*mas),round(580*mas),round(55*mas));
     PaintBox1.Canvas.Ellipse(round(570*mas),round(125*mas),round(580*mas),round(135*mas));
     PaintBox1.Canvas.Ellipse(round(570*mas),round(205*mas),round(580*mas),round(215*mas));

     //Надписи-----------------------------------------------
      PaintBox1.Canvas.Brush.Style:=bsClear;
     PaintBox1.Canvas.Font.Size:=round(16*mas);

     PaintBox1.Canvas.TextOut(round(510*mas),round(10*mas),'Z');
     PaintBox1.Canvas.Font.Size:=round(9*mas);
     PaintBox1.Canvas.TextOut(round(525*mas),round(25*mas),'A');
     PaintBox1.Canvas.Font.Size:=round(16*mas);
     PaintBox1.Canvas.TextOut(round(510*mas),round(90*mas),'Z');
     PaintBox1.Canvas.Font.Size:=round(9*mas);
     PaintBox1.Canvas.TextOut(round(525*mas),round(105*mas),'B');
     PaintBox1.Canvas.Font.Size:=round(16*mas);
     PaintBox1.Canvas.TextOut(round(510*mas),round(170*mas),'Z');
     PaintBox1.Canvas.Font.Size:=round(9*mas);
     PaintBox1.Canvas.TextOut(round(525*mas),round(185*mas),'C');;
     PaintBox1.Canvas.Font.Size:=round(16*mas);
     PaintBox1.Canvas.TextOut(round(510*mas),round(250*mas),'Z');
     PaintBox1.Canvas.Font.Size:=round(9*mas);
     PaintBox1.Canvas.TextOut(round(525*mas),round(265*mas),'N');


     //Напряжение Za-------------------------------------
     PaintBox1.Canvas.Pen.Width:=1;
     PaintBox1.Canvas.MoveTo(round(470*mas),round(70*mas));
     PaintBox1.Canvas.LineTo(round(570*mas),round(70*mas));
     PaintBox1.Canvas.LineTo(round(565*mas),round(65*mas));
     PaintBox1.Canvas.MoveTo(round(570*mas),round(70*mas));
     PaintBox1.Canvas.LineTo(round(565*mas),round(75*mas));

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(450*mas),round(60*mas),'U');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(465*mas),round(73*mas),'A');
     PaintBox1.Canvas.Font.Size:=round(16*mas);
     PaintBox1.Canvas.TextOut(round(95*mas),round(30*mas),'A');
     PaintBox1.Canvas.TextOut(round(95*mas),round(110*mas),'B');
     PaintBox1.Canvas.TextOut(round(95*mas),round(190*mas),'C');
     PaintBox1.Canvas.TextOut(round(95*mas),round(260*mas),'N');
     PaintBox1.Canvas.Pen.Width:=2;
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(453*mas),round(60*mas));
     PaintBox1.Canvas.LineTo(round(458*mas),round(60*mas));
     // " ' " ---------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(465*mas),round(60*mas));
     PaintBox1.Canvas.LineTo(round(465*mas),round(65*mas));

     //Напряжение Zb-------------------------------------
     PaintBox1.Canvas.Pen.Width:=1;
     PaintBox1.Canvas.MoveTo(round(470*mas),round(150*mas));
     PaintBox1.Canvas.LineTo(round(570*mas),round(150*mas));
     PaintBox1.Canvas.LineTo(round(565*mas),round(145*mas));
     PaintBox1.Canvas.MoveTo(round(570*mas),round(150*mas));
     PaintBox1.Canvas.LineTo(round(565*mas),round(155*mas));

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(450*mas),round(140*mas),'U');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(465*mas),round(153*mas),'B');
     PaintBox1.Canvas.Pen.Width:=2;
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(453*mas),round(140*mas));
     PaintBox1.Canvas.LineTo(round(458*mas),round(140*mas));
     // " ' " ---------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(465*mas),round(140*mas));
     PaintBox1.Canvas.LineTo(round(465*mas),round(145*mas));

     //Напряжение Zc-------------------------------------
     PaintBox1.Canvas.Pen.Width:=1;
     PaintBox1.Canvas.MoveTo(round(470*mas),round(230*mas));
     PaintBox1.Canvas.LineTo(round(570*mas),round(230*mas));
     PaintBox1.Canvas.LineTo(round(565*mas),round(225*mas));
     PaintBox1.Canvas.MoveTo(round(570*mas),round(230*mas));
     PaintBox1.Canvas.LineTo(round(565*mas),round(235*mas));

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(450*mas),round(220*mas),'U');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(465*mas),round(233*mas),'C');
     PaintBox1.Canvas.Pen.Width:=2;
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(453*mas),round(220*mas));
     PaintBox1.Canvas.LineTo(round(458*mas),round(220*mas));
     // " ' " ---------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(465*mas),round(220*mas));
     PaintBox1.Canvas.LineTo(round(465*mas),round(225*mas));

     //Напряжение Zn-------------------------------------
     PaintBox1.Canvas.Pen.Width:=1;
     PaintBox1.Canvas.MoveTo(round(570*mas),round(310*mas));
     PaintBox1.Canvas.LineTo(round(470*mas),round(310*mas));
     PaintBox1.Canvas.LineTo(round(475*mas),round(305*mas));
     PaintBox1.Canvas.MoveTo(round(470*mas),round(310*mas));
     PaintBox1.Canvas.LineTo(round(475*mas),round(315*mas));

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(450*mas),round(300*mas),'U');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(465*mas),round(313*mas),'N');
     PaintBox1.Canvas.Pen.Width:=2;
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(453*mas),round(300*mas));
     PaintBox1.Canvas.LineTo(round(458*mas),round(300*mas));
     // " ' " ---------------------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(465*mas),round(300*mas));
     PaintBox1.Canvas.LineTo(round(465*mas),round(305*mas));
     PaintBox1.Canvas.MoveTo(0,0);

     ////////////////Напряжения и токи//////////////////////////////////////////
     //Напряжение AB-----------------------
     PaintBox1.Canvas.Pen.Width:=round(1*mas);
     PaintBox1.Canvas.MoveTo(round(140*mas),round(55*mas));
     PaintBox1.Canvas.LineTo(round(140*mas),round(125*mas));
     PaintBox1.Canvas.LineTo(round(145*mas),round(120*mas));
     PaintBox1.Canvas.MoveTo(round(140*mas),round(125*mas));
     PaintBox1.Canvas.LineTo(round(135*mas),round(120*mas));

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(150*mas),round(80*mas),'U');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(165*mas),round(93*mas),'AB');
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(153*mas),round(80*mas));
     PaintBox1.Canvas.LineTo(round(158*mas),round(80*mas));
     PaintBox1.Canvas.MoveTo(0,0);
          //Напряжение BC-----------------------
     PaintBox1.Canvas.Pen.Width:=round(1*mas);
     PaintBox1.Canvas.MoveTo(round(140*mas),round(135*mas));
     PaintBox1.Canvas.LineTo(round(140*mas),round(205*mas));
     PaintBox1.Canvas.LineTo(round(145*mas),round(200*mas));
     PaintBox1.Canvas.MoveTo(round(140*mas),round(205*mas));
     PaintBox1.Canvas.LineTo(round(135*mas),round(200*mas));

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(150*mas),round(160*mas),'U');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(165*mas),round(173*mas),'BC');
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(153*mas),round(160*mas));
     PaintBox1.Canvas.LineTo(round(158*mas),round(160*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     //Напряжение CA-----------------------
     PaintBox1.Canvas.Pen.Width:=round(1*mas);
     PaintBox1.Canvas.MoveTo(round(190*mas),round(205*mas));
     PaintBox1.Canvas.LineTo(round(190*mas),round(55*mas));
     PaintBox1.Canvas.LineTo(round(195*mas),round(60*mas));
     PaintBox1.Canvas.MoveTo(round(190*mas),round(55*mas));
     PaintBox1.Canvas.LineTo(round(185*mas),round(60*mas));

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(200*mas),round(80*mas),'U');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(215*mas),round(93*mas),'CA');
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(203*mas),round(80*mas));
     PaintBox1.Canvas.LineTo(round(208*mas),round(80*mas));
     PaintBox1.Canvas.MoveTo(0,0);

     //Ток A-------------------------------------
      PaintBox1.Canvas.Pen.Width:=round(3*mas);
     PaintBox1.Canvas.MoveTo(round(300*mas),round(50*mas));
     PaintBox1.Canvas.LineTo(round(294*mas),round(45*mas));
     PaintBox1.Canvas.MoveTo(round(300*mas),round(50*mas));
     PaintBox1.Canvas.LineTo(round(294*mas),round(55*mas));

     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(295*mas),round(20*mas),'I');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(310*mas),round(33*mas),'A');
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(295*mas),round(20*mas));
     PaintBox1.Canvas.LineTo(round(300*mas),round(20*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     //Ток B-------------------------------------
      PaintBox1.Canvas.Pen.Width:=round(3*mas);
     PaintBox1.Canvas.MoveTo(round(300*mas),round(130*mas));
     PaintBox1.Canvas.LineTo(round(294*mas),round(135*mas));
     PaintBox1.Canvas.MoveTo(round(300*mas),round(130*mas));
     PaintBox1.Canvas.LineTo(round(294*mas),round(125*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(295*mas),round(100*mas),'I');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(310*mas),round(113*mas),'B');
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(295*mas),round(100*mas));
     PaintBox1.Canvas.LineTo(round(300*mas),round(100*mas));
     PaintBox1.Canvas.MoveTo(0,0);
     // O----------------------------------------------------
      PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(630*mas),round(105*mas),'O');
           //" ' "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(645*mas),round(105*mas));
     PaintBox1.Canvas.LineTo(round(645*mas),round(110*mas));
     PaintBox1.Canvas.MoveTo(0,0);

       //Ток C-------------------------------------
      PaintBox1.Canvas.Pen.Width:=round(3*mas);
     PaintBox1.Canvas.MoveTo(round(300*mas),round(210*mas));
     PaintBox1.Canvas.LineTo(round(294*mas),round(215*mas));
     PaintBox1.Canvas.MoveTo(round(300*mas),round(210*mas));
     PaintBox1.Canvas.LineTo(round(294*mas),round(205*mas));
     PaintBox1.Canvas.MoveTo(0,0);
      PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(295*mas),round(180*mas),'I');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(310*mas),round(193*mas),'C');
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(295*mas),round(180*mas));
     PaintBox1.Canvas.LineTo(round(300*mas),round(180*mas));
     PaintBox1.Canvas.MoveTo(0,0);
         //Ток N-------------------------------------
     PaintBox1.Canvas.Pen.Width:=round(3*mas);
     PaintBox1.Canvas.MoveTo(round(300*mas),round(290*mas));
     PaintBox1.Canvas.LineTo(round(306*mas),round(295*mas));
     PaintBox1.Canvas.MoveTo(round(300*mas),round(290*mas));
     PaintBox1.Canvas.LineTo(round(306*mas),round(283*mas));
     PaintBox1.Canvas.MoveTo(0,0);
       PaintBox1.Canvas.Font.Size:=round(14*mas);
     PaintBox1.Canvas.TextOut(round(295*mas),round(260*mas),'I');
     PaintBox1.Canvas.Font.Size:=round(7*mas);
     PaintBox1.Canvas.TextOut(round(310*mas),round(273*mas),'N');
     //" * "-------------------------------------------------
     PaintBox1.Canvas.MoveTo(round(295*mas),round(260*mas));
     PaintBox1.Canvas.LineTo(round(300*mas),round(260*mas));
     PaintBox1.Canvas.MoveTo(0,0);

           //  Заголовки таблицы----------
  StringGrid1.Cells[0,0]:='№';
  stringGrid1.Cells[1,0]:='Uab, B' ;
  StringGrid1.Cells[2,0]:='Ubc, В';
  StringGrid1.Cells[3,0]:='Uca, B';
  StringGrid1.Cells[4,0]:='Ua, B';
  StringGrid1.Cells[5,0]:='Ub, B';
  stringGrid1.Cells[6,0]:='Uc, B' ;
  StringGrid1.Cells[7,0]:='Ua'', B';
  StringGrid1.Cells[8,0]:='Ub'', B';
  StringGrid1.Cells[9,0]:='Uc'', B';
  StringGrid1.Cells[10,0]:='Un, B';
  StringGrid1.Cells[11,0]:='Ia, mA';
  StringGrid1.Cells[12,0]:='Ib, mA';
  StringGrid1.Cells[13,0]:='Ic, mA';
  StringGrid1.Cells[14,0]:='In, mA';
  StringGrid1.Cells[15,0]:='Pa, Вт';
  StringGrid1.Cells[16,0]:='Pb, Вт';
  StringGrid1.Cells[17,0]:='Pc, Вт';
  StringGrid1.Cells[18,0]:='P, Вт';
  Ki:=1000;
  Kfi:=1;
end;

procedure TForm5.RadioButton3Click(Sender: TObject);
begin
 // raschet;
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

procedure TForm5.RadioButton4Click(Sender: TObject);
begin
  Series1.Visible:=false;
  Series2.Visible:=false;
  Series3.Visible:=false;
  Series4.Visible:=false;
  Series5.Visible:=true;
  Series6.Visible:=false;
  Series7.Visible:=true;
   Series7.Clear;
    Diagram;

end;

procedure TForm5.RadioButton5Click(Sender: TObject);
begin
  Series1.Visible:=false;
  Series2.Visible:=false;
  Series3.Visible:=false;
  Series4.Visible:=false;
  Series5.Visible:=false;
  Series6.Visible:=true;
  Series7.Visible:=true;
   Kfi:=1;

    Series7.Clear;
  Diagram;

end;

procedure TForm5.TrackBar10Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
      // Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
      // Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
     //  Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

    // raschet;
end;

procedure TForm5.TrackBar11Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
       //Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
       //Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
      // Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

    // raschet;
end;

procedure TForm5.TrackBar1Change(Sender: TObject);
begin

f:=TrackBar1.Position;
Label26.Caption:=FloatToStr(f);
//raschet;
Vector;
 if RadioButton4.Checked=true then Ki:=1000;
  if RadioButton5.Checked=true then Kfi:=1;
Diagram;
end;


procedure TForm5.TrackBar2Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
      // Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
      // Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
      // Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

   //  raschet;
end;

procedure TForm5.TrackBar3Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
     //  Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
      // Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
     //  Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

    // raschet;
end;

procedure TForm5.TrackBar4Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
      // Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
     //  Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
      // Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

    // raschet;
end;

procedure TForm5.TrackBar5Change(Sender: TObject);
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

    // raschet;
     Diagram;
     Vector;
end;

procedure TForm5.TrackBar6Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
      // Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
     //  Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
     //  Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

    // raschet;
end;

procedure TForm5.TrackBar7Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
     //  Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
     //  Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
     //  Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

    // raschet;
end;

procedure TForm5.TrackBar8Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
     //  Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
    //   Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
     //  Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

    // raschet;
end;

procedure TForm5.TrackBar9Change(Sender: TObject);
begin
     Ra:=TrackBar2.Position;
     //  Label5.Caption:=FloatToStr(R);
     La:=TrackBar3.Position/1000;
    //   Label6.Caption:=FloatToStr(L*1000);
     Ca:=TrackBar4.Position*0.01/1000000;
     //  Label8.Caption:=FloatToStr(C*1000000);

     Rb:=TrackBar6.Position;
       Label10.Caption:=FloatToStr(R);
     Lb:=TrackBar7.Position/1000;
       Label15.Caption:=FloatToStr(L*1000);
     Cb:=TrackBar8.Position*0.01/1000000;
       Label16.Caption:=FloatToStr(C*1000000);


     Rc:=TrackBar9.Position;
       Label32.Caption:=FloatToStr(R);
     Lc:=TrackBar10.Position/1000;
       Label33.Caption:=FloatToStr(L*1000);
     Cc:=TrackBar11.Position*0.01/1000000;
       Label34.Caption:=FloatToStr(C*1000000);

     U:=TrackBar5.Position;
     Label17.Caption:=FloatToStr(U);

     f:=TrackBar1.Position;
     Label26.Caption:=FloatToStr(f);

   //  raschet;
end;

procedure TForm5.Diagram;
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

    while t<=10000 do
    begin

        Series1.AddXY(t,Ua1[t],'');
            Series2.AddXY(t,Ub1[t],'');
            Series3.AddXY(t,Uc1[t],'');
           { Series4.AddXY(f[t],Ic[t]*Ki,'');
            Series5.AddXY(f[t],I[t]*Ki,'');
            Series6.AddXY(f[t],fi[t]*Kfi,'');
    }

      t:=t+1;
    end;
{

     Series7.AddXY(f[j],Chart1.LeftAxis.Maximum,'');
     Series7.AddXY(f[j],Chart1.LeftAxis.Minimum,'');


}


 end;


end.
