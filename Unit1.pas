unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    tabControl1: TabControl;
    tabPage1: TabPage;
    tabPage2: TabPage;
    textBox2: TextBox;
    textBox1: TextBox;
    label2: &Label;
    label1: &Label;
    label5: &Label;
    label4: &Label;
    label3: &Label;
    textBox5: TextBox;
    textBox4: TextBox;
    button2: Button;
    textBox3: TextBox;
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

procedure Form1.button1_Click(sender: Object; e: EventArgs);
const
  ABC = 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя';

begin
  var s0 := 'уцюьюыгэтьп';
  for var n := 0 to 33 do 
  begin
    var s1 := ''; // это будет результат
    foreach var c: Char in s0 do // для каждого символа исходной строки
      if ABC.IndexOf(c) < 0 then // такого символа нет в алфавите
        s1 += c // поэтому просто перенесём его в результат
      else // есть такой символ в алфавите
      begin
        var p := (ABC.Length + ABC.IndexOf(c) + n) mod ABC.Length + 1; // позиция зашифрованного символа
        s1 += ABC[p]; // зашифрованный символ в строку результата
        
        
      end;
      textBox2.Text:=textBox2.Text+#13#10+s1 +'    '+ inttostr (n);
  end;
end;
end.