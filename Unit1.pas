unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Button3: TButton;
    Label3: TLabel;
    Button4: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   form3.show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   form2.show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   form4.show;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     form5.show;
end;

end.
