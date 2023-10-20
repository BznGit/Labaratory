unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, TeeProcs, Chart,
  TeEngine, Series, ComCtrls;

type
  Tmass1=array[0..1] of Extended;
  Tmass2=array[0..400] of Extended;
  TForm3 = class(TForm)
    PaintBox1: TPaintBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    Series1: TFastLineSeries;
    Series5: TFastLineSeries;
    Series6: TFastLineSeries;
    Series7: TFastLineSeries;
    GroupBox4: TGroupBox;
    StringGrid2: TStringGrid;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox4: TComboBox;
    ComboBox3: TComboBox;
    GroupBox6: TGroupBox;
    Button2: TButton;
    TrackBar1: TTrackBar;
    RadioButton3: TRadioButton;
    TrackBar2: TTrackBar;
    Button1: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CheckBox1: TCheckBox;
    procedure FormPaint(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Diagram;
    procedure raschet;
    procedure Button2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
i,j,l:integer;
  U11,Rl1:extended;
  mas, mas2,mas3,Ki, Kfi:extended;
  I1, Rl, U1, U2,Ul, P1, P2, Pl, KPD, Rn:Tmass1;
  I11,Rn1,U21,Ul1,P11,P21,Pl1,P,KPD1,U111:Tmass2;
  Rnagr, Rlini, Uvtor :boolean;
 Form3: TForm3;

implementation

{$R *.dfm}
procedure TForm3.raschet;
begin
  Button2.Enabled:=true;
 if RadioButton1.Checked=true then begin
   if i=1 then
   begin
     U2[1]:=StrToFloat(ComboBox2.Text);
     Rl[1]:=StrToFloat(ComboBox3.Text);
     Rn[1]:=StrToFloat(ComboBox4.Text);

     I1[1]:=(U2[1]/Rn[1]);
     U1[1]:=I1[1]*(Rn[1]+Rl[1]);
     Ul[1]:= Rl[1]*I1[1];
     P1[1]:=U1[1]*I1[1];
     Pl[1]:=Ul[1]*I1[1];
     P2[1]:=U2[1]*I1[1];
     KPD[1]:=(P2[1]/P1[1])*100;
     i:=i+1;

    end;
   if i=2 then
   begin

      StringGrid1.Cells[1,2]:=FloatToStrf(U1 [1],fffixed,7,3);
      StringGrid1.Cells[2,2]:=FloatToStrf(Ul[1],fffixed,7,3);
      StringGrid1.Cells[3,2]:=FloatToStrf(U2[1],fffixed,7,3);
      StringGrid1.Cells[4,2]:=FloatToStrf(I1[1]*1000,fffixed,7,3);
      StringGrid1.Cells[5,2]:=FloatToStrf(P1[1]*1000,fffixed,7,3);
      StringGrid1.Cells[6,2]:=FloatToStrf(Pl[1]*1000,fffixed,7,3);
      StringGrid1.Cells[7,2]:=FloatToStrf(P2[1]*1000,fffixed,7,3);
      StringGrid1.Cells[8,2]:=FloatToStrf(KPD[1],fffixed,7,0);

      PaintBox1.Canvas.MoveTo(0,0);
      ShowMessage('ВСЕ РАСЧЕТЫ ПРОВЕДЕНЫ!');
      exit;

   end;
   i:=1;
   U2[0]:=StrToFloat(ComboBox2.Text);
   Rl[0]:=StrToFloat(ComboBox3.Text);
   Rn[0]:=StrToFloat(ComboBox4.Text);

   I1[0]:=(U2[0]/Rn[0]);
   U1[0]:=I1[0]*(Rn[0]+Rl[0]);
   Ul[0]:= Rl[0]*I1[0];
   P1[0]:=U1[0]*I1[0];
   Pl[0]:=Ul[0]*I1[0];
   P2[0]:=U2[0]*I1[0];
   KPD[0]:=(P2[0]/P1[0])*100;

   StringGrid1.Cells[1,1]:=FloatToStrf(U1[0],fffixed,7,3);
   StringGrid1.Cells[2,1]:=FloatToStrf(Ul[0],fffixed,7,3);
   StringGrid1.Cells[3,1]:=FloatToStrf(U2[0],fffixed,7,3);
   StringGrid1.Cells[4,1]:=FloatToStrf(I1[0]*1000,fffixed,7,3);
   StringGrid1.Cells[5,1]:=FloatToStrf(P1[0]*1000,fffixed,7,3);
   StringGrid1.Cells[6,1]:=FloatToStrf(Pl[0]*1000,fffixed,7,3);
   StringGrid1.Cells[7,1]:=FloatToStrf(P2[0]*1000,fffixed,7,3);
   StringGrid1.Cells[8,1]:=FloatToStrf(KPD[0],fffixed,7,0);

   PaintBox1.Canvas.MoveTo(0,0);
   ShowMessage('Измените параметры цепи и произведите еще один расчет');
  end;


  if RadioButton2.Checked=true then
  begin
     Button2.Enabled:=true;

    if CheckBox1.Checked=true then
     begin
       U11:=TrackBar1.Position;
       Rl1:=TrackBar2.Position;
    end;

       if CheckBox1.Checked=false then
     begin
       U11:=StrToFloat(ComboBox1.Text);
       Rl1:=StrToFloat(ComboBox3.Text);
    end;

     Rn1[0]:=0;

     For j:=0 to 400 do
     begin
       I11[j]:=U11/(Rn1[j]+Rl1);
       Ul1[j]:=Rl1*I11[j];
       U21[j]:=Rn1[j]*I11[j];
       Pl1[j]:=Ul1[j]*I11[j];
       P21[j]:=U21[j]*I11[j];
       P[j]:=P21[j]+Pl1[j];
       KPD1[j]:= (P21[j]/P[j])*100;
       U111[j]:=U11;
       Rn1[j+1]:= Rn1[j]+100;
   StringGrid2.Cells[0,j+1]:=FloatToStrf(j+1,fffixed,0,0);
   StringGrid2.Cells[1,j+1]:=FloatToStrf(Rn1[j],fffixed,7,3);
   StringGrid2.Cells[2,j+1]:=FloatToStrf(U11,fffixed,7,3);
   StringGrid2.Cells[3,j+1]:=FloatToStrf(Ul1[j],fffixed,7,3);
   StringGrid2.Cells[4,j+1]:=FloatToStrf(U21[j],fffixed,7,3);
   StringGrid2.Cells[5,j+1]:=FloatToStrf(I11[j]*1000,fffixed,7,3);
   StringGrid2.Cells[6,j+1]:=FloatToStrf(P[j]*1000,fffixed,7,3);
   StringGrid2.Cells[7,j+1]:=FloatToStrf(Pl1[j]*1000,fffixed,7,3);
   StringGrid2.Cells[8,j+1]:=FloatToStrf(P21[j]*1000,fffixed,7,3);
   StringGrid2.Cells[9,j+1]:=FloatToStrf(KPD1[j],fffixed,7,0);
   end;
  end;
end;

procedure TForm3.TrackBar1Change(Sender: TObject);
begin
    Label10.Caption :=floattoStr(U11);
     U11:=TrackBar1.Position;
     Rl1:=TrackBar2.Position;
    raschet;
    Diagram;
end;

procedure TForm3.TrackBar2Change(Sender: TObject);
begin
     Label12.Caption:=floattoStr(Rl1);
     Rl1:=TrackBar2.Position;
     U11:=TrackBar1.Position;
    raschet;
    Diagram;
end;

procedure TForm3.Button1Click(Sender: TObject);

begin

raschet;
Diagram;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   if RadioButton1.Checked=true then
   begin
     i:=0;
     for j := 1 to 2 do begin
     for l := 1 to 8 do  begin
       StringGrid1.Cells[l,j]:=('');
       StringGrid1.Cells[l,j]:=('');
     end;
   end;
end;

  if RadioButton2.Checked=true then
  begin
     Series1.Clear;
     Series2.Clear;
     Series3.Clear;
     Series4.Clear;
     Series5.Clear;
     Series6.Clear;
     Series7.Clear;

     PaintBox1.Canvas.TextOut(300,30,'            ');
     PaintBox1.Canvas.MoveTo(0,0);

     for j := 1 to 400 do begin
     for l := 1 to 9 do  begin
       StringGrid2.Cells[l,j]:=('');
       StringGrid2.Cells[l,j]:=('');
     end;
   end;
 end;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
   if CheckBox1.Checked=true then
    begin
     TrackBar1.Enabled:=true;
     TrackBar2.Enabled:=true;
     GroupBox1.Enabled:=false;
     Button1.Enabled:=false;

          Label9.Enabled:=true;
         Label10.Enabled:=true;
            Label3.Enabled:=true;

       Label11.Enabled:=true;
         Label12.Enabled:=true;
            Label4.Enabled:=true;

        //     ComboBox3.Enabled:=false;
           //        ComboBox1.Enabled:=false;
   end;
      if CheckBox1.Checked=False then
    begin
     TrackBar1.Enabled:=False;
     TrackBar2.Enabled:=False;
      GroupBox1.Enabled:=true;
       Label9.Enabled:=false;
         Label10.Enabled:=false;
            Label3.Enabled:=false;

       Label11.Enabled:=false;
         Label12.Enabled:=false;
            Label4.Enabled:=false;

       // ComboBox3.Enabled:=true;
              //     ComboBox1.Enabled:=true;


   end;

end;

procedure TForm3.ComboBox3Change(Sender: TObject);
begin

   Rlini:=true;
   if RadioButton2.Checked=true then
     Button1.Enabled:=true;

   PaintBox1.Canvas.MoveTo(0,0);

    if (Rnagr=true) and (Rlini=true)   then
   Button1.Enabled:=true;
end;

procedure TForm3.ComboBox4Change(Sender: TObject);
begin
   Rnagr:=true;
   if (Rnagr=true)and (Rlini=true)   then
   Button1.Enabled:=true;
end;

procedure TForm3.FormCreate(Sender: TObject);

begin
 form3.width:=getdevicecaps(getdc(0), HORZRES);
 form3.height:=getdevicecaps(getdc(0), VERTRES);
end;

procedure TForm3.FormPaint(Sender: TObject);
begin
   PaintBox1.Canvas.Pen.Style:=psSolid;
   //Рамка----------------------------------------------------------------------
    PaintBox1.Canvas.LineTo( PaintBox1.ClientWidth-1, 0);
    PaintBox1.Canvas.LineTo(PaintBox1.ClientWidth-1, PaintBox1.ClientHeight-1);
    PaintBox1.Canvas.LineTo(0,PaintBox1.ClientHeight-1);
    PaintBox1.Canvas.LineTo(0,0);
///////////////////////////////////////////////////////////////////////////
//////////////////////////СХЕМА//////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
   mas:=0.66;
   //Напряжение U1-----------------------
   PaintBox1.Canvas.MoveTo(round(180*mas),round(65*mas));
   PaintBox1.Canvas.LineTo(round(180*mas),round(255*mas));
   PaintBox1.Canvas.LineTo(round(175*mas),round(245*mas));
   PaintBox1.Canvas.MoveTo(round(180*mas),round(255*mas));
   PaintBox1.Canvas.LineTo(round(185*mas),round(245*mas));
   //Напряжение U2-----------------------
   PaintBox1.Canvas.MoveTo(round(460*mas),round(65*mas));
   PaintBox1.Canvas.LineTo(round(460*mas),round(255*mas));
   PaintBox1.Canvas.LineTo(round(455*mas),round(245*mas));
   PaintBox1.Canvas.MoveTo(round(460*mas),round(255*mas));
   PaintBox1.Canvas.LineTo(round(465*mas),round(245*mas));

   //-------------------------------------
   PaintBox1.Canvas.Pen.Width:=2;
       //Внутр. сопротивлените rв--------------------
       PaintBox1.Canvas.Rectangle(round(100*mas),round(190*mas),round(120*mas),round(230*mas));
       //Проводник к ЭДС--------------------------------
       PaintBox1.Canvas.MoveTo(round(110*mas),round(190*mas));  // провод к ЭДС

       PaintBox1.Canvas.LineTo(round(110*mas),round(130*mas));  // стрелка ЭДС
       PaintBox1.Canvas.LineTo(round(110*mas),round(90*mas));
       PaintBox1.Canvas.LineTo(round(115*mas),round(100*mas));
       PaintBox1.Canvas.MoveTo(round(110*mas),round(90*mas));
       PaintBox1.Canvas.LineTo(round(105*mas),round(100*mas));
       PaintBox1.Canvas.MoveTo(0,0);
       PaintBox1.Canvas.Brush.Style:=bsClear;
           PaintBox1.Canvas.ellipse(round(90*mas),round(90*mas),round(130*mas),round(130*mas));
           PaintBox1.Canvas.MoveTo(round(110*mas),round(90*mas));
           PaintBox1.Canvas.LineTo(round(110*mas),round(60*mas));
           PaintBox1.Canvas.LineTo(round(300*mas),round(60*mas));
           PaintBox1.Canvas.MoveTo(round(340*mas),round(60*mas));
           PaintBox1.Canvas.Rectangle(round(300*mas), round(50*mas),round(340*mas),round(70*mas));  // Внутр. сопротивлените rв
           PaintBox1.Canvas.LineTo(round(530*mas),round(60*mas));
           PaintBox1.Canvas.LineTo(round(530*mas),round(140*mas));
          PaintBox1.Canvas.Rectangle(round(520*mas),round(140*mas),round(540*mas),round(180*mas));
           PaintBox1.Canvas.MoveTo(round(530*mas),round(180*mas));
           PaintBox1.Canvas.LineTo(round(530*mas),round(260*mas));
           PaintBox1.Canvas.LineTo(round(340*mas),round(260*mas));
           PaintBox1.Canvas.MoveTo(round(300*mas),round(260*mas));
           PaintBox1.Canvas.ellipse(round(300*mas),round(240*mas),round(340*mas),round(280*mas));
           PaintBox1.Canvas.LineTo(round(110*mas),round(260*mas));
           PaintBox1.Canvas.LineTo(round(110*mas),round(230*mas));

           PaintBox1.Canvas.Pen.Style:=psDash;
           PaintBox1.Canvas.Pen.Width:=1;
           PaintBox1.Canvas.Rectangle(round(70*mas),round(40*mas),round(150*mas),round(280*mas));
           PaintBox1.Canvas.Rectangle(round(490*mas),round(40*mas),round(570*mas),round(280*mas));

           PaintBox1.Canvas.Font.Size:=round(9*mas);
           PaintBox1.Canvas.TextOut(round(80*mas),round(18*mas),'Источник');
           PaintBox1.Canvas.TextOut(round(493*mas),round(18*mas),'Потребитель');
           PaintBox1.Canvas.Font.Size:=round(13*mas);
          PaintBox1.Canvas.TextOut(round(190*mas),round(145*mas),'U');
          PaintBox1.Canvas.Font.Size:=round(8*mas);
           PaintBox1.Canvas.TextOut(round(202*mas),round(155*mas),'1');
           PaintBox1.Canvas.MoveTo(0,0);

          PaintBox1.Canvas.Font.Size:=round(13*mas);
          PaintBox1.Canvas.TextOut(round(430*mas),round(145*mas),'U');
           PaintBox1.Canvas.TextOut(round(80*mas),round(80*mas),'E');
           PaintBox1.Canvas.TextOut(round(80*mas),round(200*mas),'r');
           PaintBox1.Canvas.TextOut(round(310*mas),round(25*mas),'R');
          PaintBox1.Canvas.Font.Size:=round(8*mas);
           PaintBox1.Canvas.TextOut(round(325*mas),round(35*mas),'л');
           PaintBox1.Canvas.Font.Size:=round(8*mas);
           PaintBox1.Canvas.TextOut(round(88*mas),round(208*mas),'в');
           PaintBox1.Canvas.Font.Size:=round(8*mas);
           PaintBox1.Canvas.TextOut(round(442*mas),round(155*mas),'2');
           PaintBox1.Canvas.Font.Size:=round(16*mas);
           PaintBox1.Canvas.TextOut(round(314*mas),round(246*mas),'A');


           PaintBox1.Canvas.Font.Size:=round(13*mas);
          PaintBox1.Canvas.TextOut(round(495*mas),round(145*mas),'R');
           PaintBox1.Canvas.Font.Size:=round(8*mas);
           PaintBox1.Canvas.TextOut(round(509*mas),round(155*mas),'н');

           PaintBox1.Canvas.MoveTo(0,0);

      //  Заголовки таблицы----------
  StringGrid1.Cells[0,0]:='№';
  stringGrid1.Cells[1,0]:='U1, В' ;
  StringGrid1.Cells[2,0]:='Uл, В';
  StringGrid1.Cells[3,0]:='U2, В';
  StringGrid1.Cells[4,0]:='I,  мА';
  StringGrid1.Cells[5,0]:='P1, мВт ';
  stringGrid1.Cells[6,0]:='Pл, мВт' ;
  StringGrid1.Cells[7,0]:='P2, мВт';
  StringGrid1.Cells[8,0]:='КПД, %';
  StringGrid1.Cells[0,1]:='1';
  StringGrid1.Cells[0,2]:='2';

  //  Заголовки таблицы 2----------
  StringGrid2.Cells[0,0]:='№';
  stringGrid2.Cells[1,0]:='Rn, Oм' ;
  stringGrid2.Cells[2,0]:='U1, В' ;
  StringGrid2.Cells[3,0]:='Uл, В';
  StringGrid2.Cells[4,0]:='U2, В';
  StringGrid2.Cells[5,0]:='I,  мА';
  StringGrid2.Cells[6,0]:='P, мВт ';
  stringGrid2.Cells[7,0]:='Pл, мВт' ;
  StringGrid2.Cells[8,0]:='P2, мВт';
  StringGrid2.Cells[9,0]:='КПД, %';


end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
   CheckBox1.Enabled:=false;
     TrackBar1.Enabled:=False;
   TrackBar1.Enabled:=False;
     GroupBox6.Enabled:=true;
    ComboBox1.Enabled:=False;
   Label1.Enabled:=false;
   Label3.Enabled:=true;
   Label5.Enabled:=true;
   Label7.Enabled:=true;
   ComboBox2.Enabled:=True;
   ComboBox3.Enabled:=True;
   ComboBox4.Enabled:=True;
   StringGrid1.Enabled:=true;
      Button1.Enabled:=false;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
   GroupBox6.Enabled:=true;
   CheckBox1.Enabled:=true;
   Label1.Enabled:=true;
   Label5.Enabled:=true;
   Label7.Enabled:=false;
   Label3.Enabled:=false;
   ComboBox1.Enabled:=True;
   ComboBox3.Enabled:=True;
   ComboBox4.Enabled:=False;
   ComboBox2.Enabled:=False;
   StringGrid1.Enabled:=true;
    Button1.Enabled:=false;
      Button2.Enabled:=false;
    if StrToFloat(ComboBox3.Text)<>0 then       Button1.Enabled:=true;

end;

procedure TForm3.Diagram;
var       k:integer;
begin
      Series1.Clear;
      Series2.Clear;
       Series3.Clear;
        Series4.Clear;
         Series5.Clear;
          Series6.Clear;
           Series7.Clear; // Перерисовка графика МПЗ ИО
    k:=0;
     while k<=400 do

     begin
       Series1.AddXY(I11[k]*1000,P[k]*1000,'');  //  Построение графика МПЗ ИО
      Series2.AddXY(I11[k]*1000,Ul1[k]*10,'');
      Series3.AddXY(I11[k]*1000,P21[k]*1000,'');
      //Series4.AddXY(I11[k]*1000,KPD1[k],'');
      Series5.AddXY(I11[k]*1000,Pl1[k]*1000,'');
      Series6.AddXY(I11[k]*1000,U111[k]*10,'');
      Series7.AddXY(I11[k]*1000,U21[k]*10,'');

      k:=k+1;

     end;

end;

end.



