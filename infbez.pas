Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure textBox1_TextChanged(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure textBox2_TextChanged(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    seredinn: TabControl;
    tabPage1: TabPage;
    tabPage2: TabPage;
    label2: &Label;
    textBox2: TextBox;
    label1: &Label;
    textBox1: TextBox;
    button1: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.textBox1_TextChanged(sender: Object; e: EventArgs);
begin
  
end;

function GetMidSquareNumber(MidSqSeed:Integer): integer;
var
  Seed: longint;
begin
  Seed := longint(MidSqSeed) * MidSqSeed; 
  MidSqSeed := (Seed div 100) mod 10000;
  Result := MidSqSeed; 
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
var
  MidSqSeed: integer;
  Num: Integer;
begin
  Num:=strtoint(textBox1.Text);
  textBox2.text:=inttostr(GetMidSquareNumber(Num));

end;

procedure Form1.textBox2_TextChanged(sender: Object; e: EventArgs);
begin
  
end;

end.
