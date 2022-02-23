unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls,
  //For playing sound
  FileUtil{$IFDEF WINDOWS},mmsystem{$ELSE},asyncprocess,process{$ENDIF},StrUtils;

type

  //For playing  sound
    TPlayStyle = (psAsync,psSync);

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label66: TLabel;
    Labelscore5: TLabel;
    Label86: TLabel;
    Label106: TLabel;
    Label116: TLabel;
    Labelscore4: TLabel;
    Label115: TLabel;
    Label105: TLabel;
    Label85: TLabel;
    Label73: TLabel;
    Label65: TLabel;
    Label63: TLabel;
    Label103: TLabel;
    label74: TLabel;
    Label83: TLabel;
    Label93: TLabel;
    Label113: TLabel;
    Label95: TLabel;
    Label2: TLabel;
    Label96: TLabel;
    Label64: TLabel;
    Label104: TLabel;
    Label84: TLabel;
    Label94: TLabel;
    Label114: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Labelscore2: TLabel;
    Labelscore3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Shape1: TShape;
    Shape10: TShape;
    Shape100: TShape;
    Shape101: TShape;
    Shape102: TShape;
    Shape103: TShape;
    Shape104: TShape;
    Shape105: TShape;
    Shape106: TShape;
    Shape107: TShape;
    Shape108: TShape;
    Shape109: TShape;
    Shape110: TShape;
    Shape111: TShape;
    Shape112: TShape;
    Shape113: TShape;
    Shape114: TShape;
    Shape115: TShape;
    Shape116: TShape;
    Shape117: TShape;
    Shape118: TShape;
    Shape119: TShape;
    Shape120: TShape;
    Shape121: TShape;
    Shape122: TShape;
    Shapebarre5: TShape;
    Shapeball5: TShape;
    Shapelimit5: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape2: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape40: TShape;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Shape45: TShape;
    Shape46: TShape;
    Shape47: TShape;
    Shape48: TShape;
    Shape49: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Shape52: TShape;
    Shape53: TShape;
    Shape54: TShape;
    Shape55: TShape;
    Shape56: TShape;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape60: TShape;
    Shape61: TShape;
    Shape68: TShape;
    Shape69: TShape;
    Shape70: TShape;
    Shape71: TShape;
    Shape72: TShape;
    Shape73: TShape;
    Shape74: TShape;
    Shape75: TShape;
    Shape76: TShape;
    Shape77: TShape;
    Shape78: TShape;
    Shape79: TShape;
    Shape80: TShape;
    Shape81: TShape;
    Shape82: TShape;
    Shape83: TShape;
    Shape84: TShape;
    Shape85: TShape;
    Shape86: TShape;
    Shape87: TShape;
    Shape88: TShape;
    Shape89: TShape;
    Shape90: TShape;
    Shape91: TShape;
    Shape92: TShape;
    Shape93: TShape;
    Shape94: TShape;
    Shape95: TShape;
    Shape96: TShape;
    Shape97: TShape;
    Shape98: TShape;
    Shape99: TShape;
    Shapebarre4: TShape;
    Shapeball4: TShape;
    Shapelimit4: TShape;
    Shape62: TShape;
    Shape63: TShape;
    Shape64: TShape;
    Shape65: TShape;
    Shape66: TShape;
    Shape67: TShape;
    Shapelimit3: TShape;
    Shapebarre3: TShape;
    Shapeball3: TShape;
    Shapelimit2: TShape;
    Shapebarre2: TShape;
    Shapeball2: TShape;
    Shapelimit1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shapebarre1: TShape;
    Shapeball1: TShape;
    Timer1: TTimer;
    Timer10: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    Timer9: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure Image5Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label75Click(Sender: TObject);
    procedure Label65Click(Sender: TObject);
    procedure Label76Click(Sender: TObject);
    procedure Label85Click(Sender: TObject);
    procedure Label95Click(Sender: TObject);
    procedure Label73Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure label74Click(Sender: TObject);
    procedure Label84Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label93Click(Sender: TObject);
    procedure Labelscore3Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Shape3ChangeBounds(Sender: TObject);
    procedure Shapeball5ChangeBounds(Sender: TObject);
    procedure Shapebarre5ChangeBounds(Sender: TObject);
    procedure Shape12ChangeBounds(Sender: TObject);
    procedure Shape14ChangeBounds(Sender: TObject);
    procedure Shape15ChangeBounds(Sender: TObject);
    procedure Shape17ChangeBounds(Sender: TObject);
    procedure Shape18ChangeBounds(Sender: TObject);
    procedure Shape19ChangeBounds(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
    procedure Shape20ChangeBounds(Sender: TObject);
    procedure Shape28ChangeBounds(Sender: TObject);
    procedure Shape35ChangeBounds(Sender: TObject);
    procedure Shape36ChangeBounds(Sender: TObject);
    procedure Shape40ChangeBounds(Sender: TObject);
    procedure Shape41ChangeBounds(Sender: TObject);
    procedure Shape46ChangeBounds(Sender: TObject);
    procedure Shape4ChangeBounds(Sender: TObject);
    procedure Shape5ChangeBounds(Sender: TObject);
    procedure Shape74ChangeBounds(Sender: TObject);
    procedure Shape81ChangeBounds(Sender: TObject);
    procedure Shapebarre3ChangeBounds(Sender: TObject);
    procedure Shape6ChangeBounds(Sender: TObject);
    procedure Shape7ChangeBounds(Sender: TObject);
    procedure Shape9ChangeBounds(Sender: TObject);
    procedure Shapeball1ChangeBounds(Sender: TObject);
    procedure Shapebarre1ChangeBounds(Sender: TObject);
    procedure Shapelimit2ChangeBounds(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure PlaySound(const szSoundFilename: string; fPlayStyle:TPlayStyle);
    procedure DestroyPlaySoundObject();
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  up,rigth,limit_rigth,limit_left,playingPart,bonuslong,bonusvie,growsize,stop:boolean;
  playoops,bonusthor,activebonusthor,stopbonusthor:boolean;
  s : array [1..20] of Tshape;
  s1: array [21..40] of Tshape;
  s2: array[41..60] of Tshape;
  s3 : array[61..80] of Tshape;
  s4 : array[81..122] of Tshape;
  tabpanel: array[1..5] of Tpanel;
  tabsave: array[1..122] of integer;
  tabBarre: array[1..5] of TShape;
  tabBall: array[1..5] of TShape;
  tabLabel: array[1..5, 1..8] of TLabel;
  p, i,j,jv,a,comptvie,al,av,b,c,d,dv,timebonusthor,k,t,time,longbarre:integer;
  score,compt,jumpbar,jumpbal:integer;
  //For playing sound
  {$IFNDEF WINDOWS}
  SoundPlayerAsyncProcess:Tasyncprocess;
  SoundPlayerSyncProcess:Tprocess;
  {$ENDIF}

CONST NUMBER_OF_SOUND_WIN =2; NUMBER_OF_SOUND_LOSE =7; NUMBER_OF_SOUND_START =2; NUMBER_OF_SOUND_QUIT =3; NUMBER_OF_SOUND_GComment =7;
 C_UnableToPlay = 'Unable to play ';
{$IFNDEF WINDOWS}
 // Defined in mmsystem
  SND_SYNC=0;
  SND_ASYNC=1;
  SND_NODEFAULT=2;
{$ENDIF}

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
 {rewrite(fich_noms);
  assign(fich_noms,'fnoms');
  rewrite(fich_score);
  assign(fich_score,'fscore');}
 time:=0;
 t:=0;
 bonusthor:=false;
 stopbonusthor:=true;
 dv:=0;
 timebonusthor:=10;
 activebonusthor:=false;
 playoops:=false;
  stop:=true;
  d:=0;
  limit_left:=false;
  limit_rigth:=false;
  playingPart:=true;
  growsize:=true;
  score:=0;
  label9.Left:=270;
  label93.Left:=270;
  label94.Left:=270;
  label95.Left:=270;
  label96.Left:=270;
  al:=0;
  av:=0;
  a:=15;
  c:=0;
  compt:=0;
  j:=0;
  jv:=0;
  label7.caption:='0';
  label73.caption:='0';
  label74.caption:='0';
  label75.caption:='0';
  label76.caption:='0';
  comptvie:=1;
  bonuslong:=false;
  bonusvie:=false;
  s[1]:=shape1;
  s[2]:=shape2;
  s[3]:=shape3;
  s[4]:=shape4;
  s[5]:=shape5;
  s[6]:=shape6;
  s[7]:=shape7;
  s[8]:=shape8;
  s[9]:=shape9;
  s[10]:=shape10;
  s[11]:=shape11;
  s[12]:=shape12;
  s[13]:=shape13;
  s[14]:=shape14;
  s[15]:=shape15;
  s[16]:=shape16;
  s[17]:=shape17;
  s[18]:=shape18;
  s[19]:=shape19;
  s[20]:=shape20;
  s1[21]:=shape21;
  s1[22]:=shape22;
  s1[23]:=shape23;
  s1[24]:=shape24;
  s1[25]:=shape25;
  s1[26]:=shape26;
  s1[27]:=shape27;
  s1[28]:=shape28;
  s1[29]:=shape29;
  s1[30]:=shape30;
  s1[31]:=shape31;
  s1[32]:=shape32;
  s1[33]:=shape33;
  s1[34]:=shape34;
  s1[35]:=shape35;
  s1[36]:=shape36;
  s1[37]:=shape37;
  s1[38]:=shape38;

  s1[39]:=shape39;
  s1[40]:=shape40;

  s2[41]:=shape41;

  s2[42]:=shape42;
  s2[43]:=shape43;
  s2[44]:=shape44;
  s2[45]:=shape45;
  s2[46]:=shape46;
  s2[47]:=shape47;
  s2[48]:=shape48;
  s2[49]:=shape49;
  s2[50]:=shape50;
  s2[51]:=shape51;
  s2[52]:=shape52;
  s2[53]:=shape53;
  s2[54]:=shape54;
  s2[55]:=shape55;
  s2[56]:=shape56;
  s2[57]:=shape57;
  s2[58]:=shape58;
  s2[59]:=shape59;
  s2[60]:=shape60;
  tabpanel[1]:=panel2;
  tabpanel[2]:=panel3;
  tabpanel[3]:=panel4;
  tabpanel[4]:=panel5;
  tabpanel[5]:=panel6;
  tabBarre[1]:=shapeBarre1;
  tabBarre[2]:=shapeBarre2;
  tabBarre[3]:=shapeBarre3;
  tabBarre[4]:=shapeBarre4;
  tabBarre[5]:=shapeBarre5;
  tabBall[1]:=Shapeball1;
  tabBall[2]:=Shapeball2;
  tabBall[3]:=Shapeball3;
  tabBall[4]:=Shapeball4;
  tabBall[5]:=Shapeball5;
  s3[61]:=shape61;
  s3[62]:=shape62;
  s3[63]:=shape63;
  s3[64]:=shape64;
  s3[65]:=shape65;
  s3[66]:=shape66;
  s3[67]:=shape67;
  s3[68]:=shape68;
  s3[69]:=shape69;
  s3[70]:=shape70;
  s3[71]:=shape71;
  s3[72]:=shape72;
  s3[73]:=shape73;
  s3[74]:=shape74;
  s3[75]:=shape75;
  s3[76]:=shape76;
  s3[77]:=shape77;
  s3[78]:=shape78;
  s3[79]:=shape79;
  s3[80]:=shape80;
  s4[81]:=shape81;
  s4[82]:=shape82;
  s4[83]:=shape83;
  s4[84]:=shape84;
  s4[85]:=shape85;
  s4[86]:=shape86;
  s4[87]:=shape87;
  s4[88]:=shape88;
  s4[89]:=shape89;
  s4[90]:=shape90;
  s4[91]:=shape91;
  s4[92]:=shape92;
  s4[93]:=shape93;
  s4[94]:=shape94;
  s4[95]:=shape95;
  s4[96]:=shape96;
  s4[97]:=shape97;
  s4[98]:=shape98;
  s4[99]:=shape99;
  s4[100]:=shape100;
  s4[101]:=shape101;
  s4[102]:=shape102;
  s4[103]:=shape103;
  s4[104]:=shape104;
  s4[105]:=shape105;
  s4[106]:=shape106;
  s4[107]:=shape107;
  s4[108]:=shape108;
  s4[109]:=shape109;
  s4[110]:=shape110;
  s4[111]:=shape111;
  s4[112]:=shape112;
  s4[113]:=shape113;
  s4[114]:=shape114;
  s4[115]:=shape115;
  s4[116]:=shape116;
  s4[117]:=shape117;
  s4[118]:=shape118;
  s4[119]:=shape119;
  s4[120]:=shape120;
  s4[121]:=shape121;
  s4[122]:=shape122;
  tabLabel[1][1]= label9; //for bonus message
  tabLabel[1][2]= label11; //for bonus thor
  tabLabel[1][3]= label5; //for score
  tabLabel[1][4]= label7; //for life
  tabLabel[1][5]= label10 //for start
  tabLabel[1][6]= label8; //for end
  tabLabel[2][1]= label93; //for bonus message
  tabLabel[2][2]= label113; //for bonus thor
  tabLabel[2][3]= label53; //for score
  tabLabel[2][4]= label73; //for life
  tabLabel[2][5]= label103 //for start
  tabLabel[2][6]= label83; //for end
  tabLabel[3][1]= label94; //for bonus message
  tabLabel[3][2]= label114; //for bonus thor
  tabLabel[3][3]= label54; //for score
  tabLabel[3][4]= label74; //for life
  tabLabel[3][5]= label104 //for start
  tabLabel[3][6]= label84; //for end
  tabLabel[4][1]= label95; //for bonus message
  tabLabel[4][2]= label115; //for bonus thor
  tabLabel[4][3]= label55; //for score
  tabLabel[4][4]= label75; //for life
  tabLabel[4][5]= label105 //for start
  tabLabel[4][6]= label85; //for end
  tabLabel[5][1]= label96; //for bonus message
  tabLabel[5][2]= label116; //for bonus thor
  tabLabel[5][3]= label56; //for score
  tabLabel[5][4]= label76; //for life
  tabLabel[5][5]= label106; //for start
  tabLabel[5][6]= label86; //for end
  for t:=1 to 20 do
  begin
  tabsave[t]:=s[t].Top;
  end;
  for t:=21 to 40 do
  begin
   tabsave[t]:=s1[t].Top;
  end;
  for t:=41 to 60 do
  begin
   tabsave[t]:=s2[t].Top;
  end;
  for t:=61 to 80 do
  begin
   tabsave[t]:=s3[t].Top;
  end;
  for t:=81 to 122 do
  begin
   tabsave[t]:=s4[t].Top;
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin


end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormKeyPress(Sender: TObject; var key: char);
begin

  if key='m' then
  begin
   if k=1 then
    begin
     limit_left:=false;
     if limit_rigth=false then
     Shapebarre1.Left:=Shapebarre1.left+jumpbar;
    end;
    if k=2 then
    begin
     limit_left:=false;
     if limit_rigth=false then
     Shapebarre2.Left:=Shapebarre2.left+jumpbar;
    end;
    if k=3 then
    begin
     limit_left:=false;
     if limit_rigth=false then
     Shapebarre3.Left:=Shapebarre3.left+jumpbar;
    end;
    if k=4 then
    begin
     limit_left:=false;
     if limit_rigth=false then
     Shapebarre4.Left:=Shapebarre4.left+jumpbar;
    end;
    if k=5 then
    begin
     limit_left:=false;
     if limit_rigth=false then
     Shapebarre5.Left:=Shapebarre5.left+jumpbar;
    end;
  end
  else
  if key='l' then
  begin
    if k=1 then
    begin
     limit_rigth:=false;
     if limit_left=false then
     Shapebarre1.Left:=Shapebarre1.left-jumpbar;
    end;
    if k=2 then
    begin
     limit_rigth:=false;
     if limit_left=false then
     Shapebarre2.Left:=Shapebarre2.left-jumpbar;
    end;
    if k=3 then
    begin
     limit_rigth:=false;
     if limit_left=false then
     Shapebarre3.Left:=Shapebarre3.left-jumpbar;
    end;
    if k=4 then
    begin
     limit_rigth:=false;
     if limit_left=false then
     Shapebarre4.Left:=Shapebarre4.left-jumpbar;
    end;
    if k=5 then
    begin
     limit_rigth:=false;
     if limit_left=false then
     Shapebarre5.Left:=Shapebarre5.left-jumpbar;
    end;
  end
  else
  if key='a' then
  begin
     if bonuslong=true then
     begin
       //sound effect for bonuslong
       PlaySound('BarBonus.wav', psASync);

       if k=1 then
       Shapebarre1.width:=300;
       if k=2 then
       Shapebarre2.width:=300;
       if k=3 then
       Shapebarre3.width:=300;
       if k=4 then
       Shapebarre4.width:=300;
       if k=5 then
       Shapebarre5.width:=300;
       bonuslong:=false;
     end;
     if bonusthor=true then
     begin
       activebonusthor:=true;
       bonusthor:=false;
     end;

  end
  else
  if key='z' then
  begin
    if k = 1 then
     begin
     label10.Caption:='';
     label10.top:=30;
     label10.left:=1400;
     end;
    if k = 2 then
     begin
     label103.Caption:='';
     label103.top:=30;
     label103.left:=1400;
     end;
    if k = 3 then
     begin
     label104.Caption:='';
     label104.top:=30;
     label104.left:=1400;
     end;
    if k = 4 then
     begin
     label105.Caption:='';
     label105.top:=30;
     label105.left:=1400;
     end;
    if k = 5 then
     begin
     label106.Caption:='';
     label106.top:=30;
     label106.left:=1400;
     end;

     if comptvie<>0 then
     begin
     comptvie:=comptvie-1;
     end;
     if k=1 then
     label7.caption:=inttostr(comptvie);
     if k=2 then
     label73.caption:=inttostr(comptvie);
     if k=3 then
     label74.caption:=inttostr(comptvie);
     if k=4 then
     label75.caption:=inttostr(comptvie);
     if k=5 then
     Label66.caption:=inttostr(comptvie);
     timer1.enabled:=true;
     timer3.enabled:=true;
     c:=0;
     timer7.interval:=10;
  end;

end;

procedure TForm1.Image5Click(Sender: TObject);
begin

end;

procedure TForm1.Label10Click(Sender: TObject);
begin

end;

procedure TForm1.Label12Click(Sender: TObject);
begin

end;

procedure TForm1.Label13Click(Sender: TObject);
begin
  timer1.enabled:=false;
  timer2.enabled:=true;
  timer3.enabled:=false;
  timer4.enabled:=true;
  timer5.enabled:=true;
  timer7.enabled:=false;
  timer6.enabled:=true;
  timer8.enabled:=true;
  timer9.enabled:=false;
  time:=0;
  if k= 1 then
  begin
  Shapeball1.left:=640;
  Shapeball1.top:=632;
  Shapebarre1.left:=560;
  label10.caption:='press z to continue';
  for t:=1 to 20 do
  begin
   s[t].top:=tabsave[t]
  end;
  end;
  if k=2 then
  begin
    Shapeball2.left:=680;
  Shapeball2.top:=624;
  Shapebarre2.left:=592;
  label103.caption:='press z to continue';
   for t:=21 to 40 do
  begin
   s1[t].top:=tabsave[t]
  end;
  end;
  if k=3 then
  begin
    Shapeball3.left:=664;
  Shapeball3.top:=632;
  Shapebarre3.left:=584;
  label104.caption:='press z to continue';
  for t:=41 to 60 do
  begin
   s2[t].top:=tabsave[t]
  end;
  end;
  if k=4 then
  begin
    Shapeball4.left:=648;
  Shapeball4.top:=624;
  Shapebarre4.left:=560;
  label105.caption:='press z to continue';
  for t:=61 to 80 do
  begin
   s3[t].top:=tabsave[t]
  end;
  end;
  if k=5 then
  begin
    Shapeball5.left:=645;
  Shapeball5.top:=632;
  Shapebarre5.left:=560;
  label106.caption:='press z to continue';
  for t:=81 to 122 do
  begin
   s4[t].top:=tabsave[t]
  end;
  end;
  timer9.enabled:=false;
  panel7.Top:=1000;
  panel1.top:=160;
  bonusthor:=false;
 stopbonusthor:=true;
 dv:=0;
 timebonusthor:=10;
 activebonusthor:=false;
 playoops:=false;
  stop:=true;
  t:=0;
  d:=0;
  limit_left:=false;
  limit_rigth:=false;
  playingPart:=true;
  growsize:=true;
  score:=0;
  label9.Left:=270;
  label93.Left:=270;
  label94.Left:=270;
  label95.Left:=270;
  label96.Left:=270;
  al:=0;
  av:=0;
  a:=15;
  c:=0;
  compt:=0;
  j:=0;
  jv:=0;
  label6.caption:='1';
  label63.caption:='1';
  label64.caption:='1';
  label65.caption:='1';
  label66.caption:='1';
  comptvie:=1;
  bonuslong:=false;
    label6.caption:='0';
  label63.caption:='0';
  label64.caption:='0';
  label65.caption:='0';
  label66.caption:='0';
  bonusvie:=false;
  label8.left:=1400;
  label8.top:=304;
  label83.left:=1400;
  label83.top:=304;
  label84.left:=1400;
  label84.top:=304;
  label85.left:=1400;
  label85.top:=304;
  label86.left:=1400;
  label86.top:=304;

end;

procedure TForm1.Label14Click(Sender: TObject);
begin
  Destroy();
  application.terminate;
end;

procedure TForm1.Label15Click(Sender: TObject);
begin

end;

procedure TForm1.Label16Click(Sender: TObject);
begin

end;

procedure TForm1.Label2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin
  Edit1.Enabled := false; //For preventing him to catch the FormKeyressEvent

  randomize;
  k:=random(5)+1;
  tabpanel[k].left:=0;
  tabpanel[k].top:=0;
  panel1.top:=1000;
  jumpbal:=7;
  jumpbar:=17;
   longbarre:=150;
  if k=1 then
  shapebarre1.width:=longbarre;
  if k=2 then
  shapebarre2.width:=longbarre;
  if k=3 then
  shapebarre3.width:=longbarre;
  if k=4 then
  shapebarre4.width:=longbarre;
  if k=5 then
  shapebarre5.width:=longbarre;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
  Edit1.Enabled := false; //For preventing him to catch the FormKeyressEvent

  randomize;
  k:=random(5)+1;
  tabpanel[k].left:=0;
  tabpanel[k].top:=0;
  panel1.top:=1000;
  jumpbal:=10;
  jumpbar:=20;
  longbarre:=100;
  if k=1 then
  shapebarre1.width:=longbarre;
  if k=2 then
  shapebarre2.width:=longbarre;
  if k=3 then
  shapebarre3.width:=longbarre;
  if k=4 then
  shapebarre4.width:=longbarre;
  if k=5 then
  shapebarre5.width:=longbarre;
end;

procedure TForm1.Label75Click(Sender: TObject);
begin

end;

procedure TForm1.Label65Click(Sender: TObject);
begin

end;

procedure TForm1.Label76Click(Sender: TObject);
begin

end;

procedure TForm1.Label85Click(Sender: TObject);
begin

end;

procedure TForm1.Label95Click(Sender: TObject);
begin

end;

procedure TForm1.Label73Click(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.label74Click(Sender: TObject);
begin

end;

procedure TForm1.Label84Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  Edit1.Enabled := false; //For preventing him to catch the FormKeyressEvent

  randomize;
  k:=random(5)+1;
  tabpanel[k].left:=0;
  tabpanel[k].top:=0;
  panel1.top:=1000;
  jumpbal:=5;
  jumpbar:=15;
  longbarre:=193;
  if k=1 then
  shapebarre1.width:=longbarre;
  if k=2 then
  shapebarre2.width:=longbarre;
  if k=3 then
  shapebarre3.width:=longbarre;
  if k=4 then
  shapebarre4.width:=longbarre;
  if k=5 then
  shapebarre5.width:=longbarre;

end;

procedure TForm1.Label5Click(Sender: TObject);
begin

end;

procedure TForm1.Label7Click(Sender: TObject);
begin

end;

procedure TForm1.Label8Click(Sender: TObject);
begin

end;

procedure TForm1.Label93Click(Sender: TObject);
begin

end;

procedure TForm1.Labelscore3Click(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.Panel2Click(Sender: TObject);
begin

end;

procedure TForm1.Panel3Click(Sender: TObject);
begin

end;

procedure TForm1.Panel4Click(Sender: TObject);
begin

end;

procedure TForm1.Panel5Click(Sender: TObject);
begin

end;

procedure TForm1.Panel6Click(Sender: TObject);
begin

end;

procedure TForm1.Panel7Click(Sender: TObject);
begin

end;

procedure TForm1.Shape3ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shapeball5ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shapebarre5ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape12ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape14ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape15ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape17ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape18ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape19ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape20ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape28ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape35ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape36ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape40ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape41ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape46ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape4ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape5ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape74ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape81ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shapebarre3ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape6ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape7ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape9ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shapeball1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shapebarre1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shapelimit2ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Timer10Timer(Sender: TObject);
begin
  {if nwrite=0 then
  begin
   if edit1.text<>'' then
   begin
   write(fich_noms,edit1.Text);
   close(fich_noms);
   end;
  end;}
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if k=1 then
  begin
  if up=true then
  Shapeball1.top:=Shapeball1.Top-jumpbal
  else
  Shapeball1.Top:=Shapeball1.top+jumpbal;
  if Shapeball1.top<=Shapelimit1.top+Shapelimit1.height then
  up:=false;
  if (Shapeball1.top+Shapeball1.height>=Shapebarre1.top) and (Shapeball1.Left+Shapeball1.width>=Shapebarre1.Left) and (Shapeball1.Left<=Shapebarre1.Left+Shapebarre1.Width) then
  up:=true;
  if rigth=true then
  Shapeball1.Left:=Shapeball1.left+jumpbal
  else
  Shapeball1.left:=Shapeball1.left-jumpbal;
  if Shapeball1.left<=0 then
  rigth:=true
  else
    if Shapeball1.Left+Shapeball1.Width>=tabpanel[k].width then
    rigth:=false;

 end;
  if k=2 then
  begin
  if up=true then
  Shapeball2.top:=Shapeball2.Top-jumpbal
  else
  Shapeball2.Top:=Shapeball2.top+jumpbal;
  if Shapeball2.top<=Shapelimit2.top+Shapelimit2.height then
  up:=false;
  if (Shapeball2.top+Shapeball2.height>=Shapebarre2.top) and (Shapeball2.Left+Shapeball2.width>=Shapebarre2.Left) and (Shapeball2.Left<=Shapebarre2.Left+Shapebarre2.Width) then
  up:=true;
  if rigth=true then
  Shapeball2.Left:=Shapeball2.left+jumpbal
  else
  Shapeball2.left:=Shapeball2.left-jumpbal;
  if Shapeball2.left<=0 then
  rigth:=true
  else
    if Shapeball2.left+Shapeball2.Width>=tabpanel[k].width then
    rigth:=false;

 end;
  if k=3 then
  begin
  if up=true then
  Shapeball3.top:=Shapeball3.Top-jumpbal
  else
  Shapeball3.Top:=Shapeball3.top+jumpbal;
  if Shapeball3.top<=Shapelimit3.top+Shapelimit3.height then
  up:=false;
  if (Shapeball3.top+Shapeball3.height>=Shapebarre3.top) and (Shapeball3.Left+Shapeball3.width>=Shapebarre3.Left) and (Shapeball3.Left<=Shapebarre3.Left+Shapebarre3.Width) then
  up:=true;
  if rigth=true then
  Shapeball3.Left:=Shapeball3.left+jumpbal
  else
  Shapeball3.left:=Shapeball3.left-jumpbal;
  if Shapeball3.left<=0 then
  rigth:=true
  else
    if Shapeball3.Left+Shapeball3.Width>=tabpanel[k].width then
    rigth:=false;

 end;
  if k=4 then
  begin
  if up=true then
  Shapeball4.top:=Shapeball4.Top-jumpbal
  else
  Shapeball4.Top:=Shapeball4.top+jumpbal;
  if Shapeball4.top<=Shapelimit4.top+Shapelimit4.height then
  up:=false;
  if (Shapeball4.top+Shapeball4.height>=Shapebarre4.top) and (Shapeball4.Left+Shapeball4.width>=Shapebarre4.Left) and (Shapeball4.Left<=Shapebarre4.Left+Shapebarre4.Width) then
  up:=true;
  if rigth=true then
  Shapeball4.Left:=Shapeball4.left+jumpbal
  else
  Shapeball4.left:=Shapeball4.left-jumpbal;
  if Shapeball4.left<=0 then
  rigth:=true
  else
    if Shapeball4.Left+Shapeball4.Width>=tabpanel[k].width then
    rigth:=false;

 end;
  if k=5 then
  begin
  if up=true then
  Shapeball5.top:=Shapeball5.Top-jumpbal
  else
  Shapeball5.Top:=Shapeball5.top+jumpbal;
  if Shapeball5.top<=Shapelimit5.top+Shapelimit5.height then
  up:=false;
  if (Shapeball5.top+Shapeball5.height>=Shapebarre5.top) and (Shapeball5.Left+Shapeball5.width>=Shapebarre5.Left) and (Shapeball5.Left<=Shapebarre5.Left+Shapebarre5.Width) then
  up:=true;
  if rigth=true then
  Shapeball5.Left:=Shapeball5.left+jumpbal
  else
  Shapeball5.left:=Shapeball5.left-jumpbal;
  if Shapeball5.left<=0 then
  rigth:=true
  else
    if Shapeball5.Left+Shapeball5.Width>=tabpanel[k].width then
    rigth:=false;

 end;


end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  if k=1 then
  begin
  if Shapeball1.Top>=Shapebarre1.top+40 then
  begin
  timer1.enabled:=false;
  timer7.enabled:=true;
  playoops:=true;
  if (comptvie>0) and (timer1.enabled=false) then
  begin
  Shapeball1.left:=640;
  Shapeball1.top:=632;
  Shapebarre1.left:=560;
  label10.caption:='press z to continue';
  end;
  end;
  if (Shapebarre1.left<=0) then
  limit_left:=true;
  if Shapebarre1.left+Shapebarre1.Width>=tabpanel[k].width  then
  limit_rigth:=true;
  for i:=1 to 20 do
  begin
    if (j=0) and (s[i].brush.Color=clred) then
    begin
      if s[i].Top=1000 then
      begin
      bonuslong:=true;
      j:=j+1;
      end;

   end;
   if (jv=0) and (s[i].brush.Color=clolive) then
   begin
      if s[i].top=1000 then
      begin
      bonusvie:=true;
      comptvie:=comptvie+1;
      label7.caption:=inttostr(comptvie);
      jv:=jv+1;
      end;
   end;
   if (d=0) and (s[i].Brush.color=clyellow) then
   begin
      if s[i].top=1000 then
      begin
      bonusthor:=true;
      d:=d+1;
      end;
   end;
  end;

  end;
    if k=2 then
  begin
  if Shapeball2.Top>=Shapebarre2.top+40 then
  begin
  timer1.enabled:=false;
  timer7.enabled:=true;
  playoops:=true;
  if (comptvie>0) and (timer1.enabled=false) then
  begin
  Shapeball2.left:=680;
  Shapeball2.top:=624;
  Shapebarre2.left:=592;
  label103.caption:='press z to continue';
  end;
  end;
  if (Shapebarre2.left<=0) then
  limit_left:=true;
  if Shapebarre2.left+Shapebarre2.Width>=tabpanel[k].width  then
  limit_rigth:=true;
  for i:=21 to 40 do
  begin
    if (j=0) and (s1[i].brush.Color=clred) then
    begin
      if s1[i].Top=1000 then
      begin
      bonuslong:=true;
      j:=j+1;
      end;

   end;
   if (jv=0) and (s1[i].brush.Color=clolive) then
   begin
      if s1[i].top=1000 then
      begin
      bonusvie:=true;
      comptvie:=comptvie+1;
      label73.caption:=inttostr(comptvie);
      jv:=jv+1;
      end;
   end;
   if (d=0) and (s1[i].Brush.color=clyellow) then
   begin
      if s1[i].top=1000 then
      begin
      bonusthor:=true;
      d:=d+1;
      end;
   end;
  end;

  end;
  if k=3 then
  begin
  if Shapeball3.Top>=Shapebarre3.top+40 then
  begin
  timer1.enabled:=false;
  timer7.enabled:=true;
  playoops:=true;
  if (comptvie>0) and (timer1.enabled=false) then
  begin
  Shapeball3.left:=664;
  Shapeball3.top:=632;
  Shapebarre3.left:=584;
  label104.caption:='press z to continue';
  end;
  end;
  if (Shapebarre3.left<=0) then
  limit_left:=true;
  if Shapebarre3.left+Shapebarre3.Width>=tabpanel[k].width  then
  limit_rigth:=true;
  for i:=41 to 60 do
  begin
    if (j=0) and (s2[i].brush.Color=clred) then
    begin
      if s2[i].Top=1000 then
      begin
      bonuslong:=true;
      j:=j+1;
      end;

   end;
   if (jv=0) and (s2[i].brush.Color=clolive) then
   begin
      if s2[i].top=1000 then
      begin
      bonusvie:=true;
      comptvie:=comptvie+1;
      label74.caption:=inttostr(comptvie);
      jv:=jv+1;
      end;
   end;
   if (d=0) and (s2[i].Brush.color=clyellow) then
   begin
      if s2[i].top=1000 then
      begin
      bonusthor:=true;
      d:=d+1;
      end;
   end;
  end;

  end;
   if k=4 then
  begin
  if Shapeball4.Top>=Shapebarre4.top+40 then
  begin
  timer1.enabled:=false;
  timer7.enabled:=true;
  playoops:=true;
  if (comptvie>0) and (timer1.enabled=false) then
  begin
    Shapeball4.left:=648;
  Shapeball4.top:=624;
  Shapebarre4.left:=560;
  label105.caption:='press z to continue';
  end;
  end;
  if (Shapebarre4.left<=0) then
  limit_left:=true;
  if Shapebarre4.left+Shapebarre4.Width>=tabpanel[k].width  then
  limit_rigth:=true;
  for i:=61 to 80 do
  begin
    if (j=0) and (s3[i].brush.Color=clred) then
    begin
      if s3[i].Top=1000 then
      begin
      bonuslong:=true;
      j:=j+1;
      end;

   end;
   if (jv=0) and (s3[i].brush.Color=clolive) then
   begin
      if s3[i].top=1000 then
      begin
      bonusvie:=true;
      comptvie:=comptvie+1;
      label75.caption:=inttostr(comptvie);
      jv:=jv+1;
      end;
   end;
   if (d=0) and (s3[i].Brush.color=clyellow) then
   begin
      if s3[i].top=1000 then
      begin
      bonusthor:=true;
      d:=d+1;
      end;
   end;
  end;

  end;
    if k=5 then
  begin
  if Shapeball5.Top>=Shapebarre5.top+40 then
  begin
  timer1.enabled:=false;
  timer7.enabled:=true;
  playoops:=true;
  if (comptvie>0) and (timer1.enabled=false) then
  begin
  Shapeball5.left:=645;
  Shapeball5.top:=632;
  Shapebarre5.left:=560;
  label106.caption:='press z to continue';
  end;
  end;
  if (Shapebarre5.left<=0) then
  limit_left:=true;
  if Shapebarre5.left+Shapebarre5.Width>=tabpanel[k].width  then
  limit_rigth:=true;
  for i:=81 to 122 do
  begin
    if (j=0) and (s4[i].brush.Color=clred) then
    begin
      if s4[i].Top=1000 then
      begin
      bonuslong:=true;
      j:=j+1;
      end;

   end;
   if (jv=0) and (s4[i].brush.Color=clolive) then
   begin
      if s4[i].top=1000 then
      begin
      bonusvie:=true;
      comptvie:=comptvie+1;
      Label66.caption:=inttostr(comptvie);
      jv:=jv+1;
      end;
   end;
   if (d=0) and (s4[i].Brush.color=clyellow) then
   begin
      if s4[i].top=1000 then
      begin
      bonusthor:=true;
      d:=d+1;
      end;
   end;
  end;

  end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
   if k=1 then
  begin
  for i:=1 to 20 do
  begin
    if up=true then
    begin
       if (Shapeball1.Top<=s[i].Top+s[i].Height) and (Shapeball1.top>=s[i].Top) and (Shapeball1.Left+Shapeball1.width>=s[i].left) and (Shapeball1.left<=s[i].left+s[i].Width) then
       begin
        s[i].top:=1000;
        score:=score+50;
        if activebonusthor=false then
        up:=false;
       end;
    end
    else
    begin
    if (Shapeball1.top+Shapeball1.height>=s[i].Top) and (Shapeball1.Top+Shapeball1.height<=s[i].top+s[i].Height) and (Shapeball1.Left+Shapeball1.width>=s[i].left) and (Shapeball1.left<=s[i].left+s[i].Width) then
    begin
       s[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       up:=true;
    end;

    end;
    if rigth=true then
    begin
       if (Shapeball1.left+Shapeball1.width>=s[i].left) and (Shapeball1.Left<=s[i].Left+s[i].Width) and (Shapeball1.top+Shapeball1.height>=s[i].Top) and (Shapeball1.top <=s[i].Height+s[i].Top) then
       begin
          s[i].top:=1000;
          score:=score+50;
          if activebonusthor=false then
          rigth:=false;
       end;
    end
    else
    begin
    if (Shapeball1.Left<=s[i].Left+s[i].Width) and  (Shapeball1.Left>=s[i].left) and (Shapeball1.top+Shapeball1.height>=s[i].Top) and (Shapeball1.top <=s[i].Height+s[i].Top) then
    begin
       s[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       rigth:=true;
    end;

    end;

  end;

  end;

  if k=2 then
  begin
  for i:=21 to 40 do
  begin
    if up=true then
    begin
       if (Shapeball2.Top<=s1[i].Top+s1[i].Height) and (Shapeball2.top>=s1[i].Top) and (Shapeball2.Left+Shapeball2.width>=s1[i].left) and (Shapeball2.left<=s1[i].left+s1[i].Width) then
       begin
        s1[i].top:=1000;
        score:=score+50;
        if activebonusthor=false then
        up:=false;
       end;
    end
    else
    begin
    if (Shapeball2.top+Shapeball2.height>=s1[i].Top) and (Shapeball2.Top+Shapeball2.height<=s1[i].top+s1[i].Height) and (Shapeball2.Left+Shapeball2.width>=s1[i].left) and (Shapeball2.left<=s1[i].left+s1[i].Width) then
    begin
       s1[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       up:=true;
    end;

    end;
    if rigth=true then
    begin
       if (Shapeball2.left+Shapeball2.width>=s1[i].left) and (Shapeball2.Left<=s1[i].Left+s1[i].Width) and (Shapeball2.top+Shapeball2.height>=s1[i].Top) and (Shapeball2.top <=s1[i].Height+s1[i].Top) then
       begin
          s1[i].top:=1000;
          score:=score+50;
          if activebonusthor=false then
          rigth:=false;
       end;
    end
    else
    begin
    if (Shapeball2.Left<=s1[i].Left+s1[i].Width) and  (Shapeball2.Left>=s1[i].left) and (Shapeball2.top+Shapeball2.height>=s1[i].Top) and (Shapeball2.top <=s1[i].Height+s1[i].Top) then
    begin
       s1[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       rigth:=true;
    end;

    end;

  end;

  end;
  if k=3 then
  begin
  for i:=41 to 60 do
  begin
    if up=true then
    begin
       if (Shapeball3.Top<=s2[i].Top+s2[i].Height) and (Shapeball3.top>=s2[i].Top) and (Shapeball3.Left+Shapeball3.width>=s2[i].left) and (Shapeball3.left<=s2[i].left+s2[i].Width) then
       begin
        s2[i].top:=1000;
        score:=score+50;
        if activebonusthor=false then
        up:=false;
       end;
    end
    else
    begin
    if (Shapeball3.top+Shapeball3.height>=s2[i].Top) and (Shapeball3.Top+Shapeball3.height<=s2[i].top+s2[i].Height) and (Shapeball3.Left+Shapeball3.width>=s2[i].left) and (Shapeball3.left<=s2[i].left+s2[i].Width) then
    begin
       s2[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       up:=true;
    end;

    end;
    if rigth=true then
    begin
       if (Shapeball3.left+Shapeball3.width>=s2[i].left) and (Shapeball3.Left<=s2[i].Left+s2[i].Width) and (Shapeball3.top+Shapeball3.height>=s2[i].Top) and (Shapeball3.top <=s2[i].Height+s2[i].Top) then
       begin
          s2[i].top:=1000;
          score:=score+50;
          if activebonusthor=false then
          rigth:=false;
       end;
    end
    else
    begin
    if (Shapeball3.Left<=s2[i].Left+s2[i].Width) and  (Shapeball3.Left>=s2[i].left) and (Shapeball3.top+Shapeball3.height>=s2[i].Top) and (Shapeball3.top <=s2[i].Height+s2[i].Top) then
    begin
       s2[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       rigth:=true;
    end;

    end;

  end;

  end;
  if k=4 then
  begin
  for i:=61 to 80 do
  begin
    if up=true then
    begin
       if (Shapeball4.Top<=s3[i].Top+s3[i].Height) and (Shapeball4.top>=s3[i].Top) and (Shapeball4.Left+Shapeball4.width>=s3[i].left) and (Shapeball4.left<=s3[i].left+s3[i].Width) then
       begin
        s3[i].top:=1000;
        score:=score+50;
        if activebonusthor=false then
        up:=false;
       end;
    end
    else
    begin
    if (Shapeball4.top+Shapeball4.height>=s3[i].Top) and (Shapeball4.Top+Shapeball4.height<=s3[i].top+s3[i].Height) and (Shapeball4.Left+Shapeball4.width>=s3[i].left) and (Shapeball4.left<=s3[i].left+s3[i].Width) then
    begin
       s3[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       up:=true;
    end;

    end;
    if rigth=true then
    begin
       if (Shapeball4.left+Shapeball4.width>=s3[i].left) and (Shapeball4.Left<=s3[i].Left+s3[i].Width) and (Shapeball4.top+Shapeball4.height>=s3[i].Top) and (Shapeball4.top <=s3[i].Height+s3[i].Top) then
       begin
          s3[i].top:=1000;
          score:=score+50;
          if activebonusthor=false then
          rigth:=false;
       end;
    end
    else
    begin
    if (Shapeball4.Left<=s3[i].Left+s3[i].Width) and  (Shapeball4.Left>=s3[i].left) and (Shapeball4.top+Shapeball4.height>=s3[i].Top) and (Shapeball4.top <=s3[i].Height+s3[i].Top) then
    begin
       s3[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       rigth:=true;
    end;

    end;

  end;

  end;
  if k=5 then
  begin
  for i:=80 to 122 do
  begin
    if up=true then
    begin
       if (Shapeball5.Top<=s4[i].Top+s4[i].Height) and (Shapeball5.top>=s4[i].Top) and (Shapeball5.Left+Shapeball5.width>=s4[i].left) and (Shapeball5.left<=s4[i].left+s4[i].Width) then
       begin
        s4[i].top:=1000;
        score:=score+50;
        if activebonusthor=false then
        up:=false;
       end;
    end
    else
    begin
    if (Shapeball5.top+Shapeball5.height>=s4[i].Top) and (Shapeball5.Top+Shapeball5.height<=s4[i].top+s4[i].Height) and (Shapeball5.Left+Shapeball5.width>=s4[i].left) and (Shapeball5.left<=s4[i].left+s4[i].Width) then
    begin
       s4[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       up:=true;
    end;

    end;
    if rigth=true then
    begin
       if (Shapeball5.left+Shapeball5.width>=s4[i].left) and (Shapeball5.Left<=s4[i].Left+s4[i].Width) and (Shapeball5.top+Shapeball5.height>=s4[i].Top) and (Shapeball5.top <=s4[i].Height+s4[i].Top) then
       begin
          s4[i].top:=1000;
          score:=score+50;
          if activebonusthor=false then
          rigth:=false;
       end;
    end
    else
    begin
    if (Shapeball5.Left<=s4[i].Left+s4[i].Width) and  (Shapeball5.Left>=s4[i].left) and (Shapeball5.top+Shapeball5.height>=s4[i].Top) and (Shapeball5.top <=s4[i].Height+s4[i].Top) then
    begin
       s4[i].top:=1000;
       score:=score+50;
       if activebonusthor=false then
       rigth:=true;
    end;

    end;

  end;

  end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  if k=1 then
  begin
  label6.caption:=inttostr(score);
  if playingPart=true then
  begin
    //ball crashed
    if (Shapeball1.top > Shapebarre1.top+25) and (comptvie=0)  then
    begin
      timer9.Enabled:=true;
      label12.caption:='SCORE : '+inttostr(score);
      label8.caption:='GAME OVER';
      label8.Left:=label8.left-50; //??
    end;
  end;

  if label8.left<500 then
  playingPart:=false;
  for i:=1 to 20 do
  begin
   if s[i].top<500 then
   compt:=compt+1;
  end;
  if (compt=0) and (playingPart=true) then
  begin
  timer1.enabled:=false;
  timer9.Enabled:=true;
  label12.caption:='SCORE : '+inttostr(score);
  label8.Caption:='CONGRATULATION';
  label8.left:=label8.left-50;
  //sound win
  randomize;
  p:=random(NUMBER_OF_SOUND_WIN)+1;
  PlaySound(p+'.wav', psASync);
  end;
  compt:=0;
  if stop=false then
  begin
  label10.Left:=label10.left-50;
  timer4.interval:=1;
  end;

  if (label10.left>270) and (bonusvie=true) and (av=1) then
  label10.Left:=label10.left-50;
  if (label10.left<=270) and (stop) then
  begin
  timer4.interval:=3000;
  stop:=false;
  end;

  end;
  if k=2 then
  begin
  label63.caption:=inttostr(score);
  if playingPart=true then
  begin
  if (Shapeball2.top >= Shapebarre2.top+40) and (comptvie=0)  then
  begin
    timer9.Enabled:=true;
    label12.caption:='SCORE : '+inttostr(score);
    label83.caption:='GAME OVER';
    label83.Left:=label83.left-50;
  end;
  end;
  if label83.left<500 then
  playingPart:=false;
  for i:=21 to 40 do
  begin
   if s1[i].top<500 then
   compt:=compt+1;
  end;
  if (compt=0) and (playingPart=true) then
  begin
  timer1.enabled:=false;
  timer9.Enabled:=true;
    label12.caption:='SCORE : '+inttostr(score);
  label83.Caption:='CONGRATULATION';
  label83.left:=label83.left-50;
  //sound win
  randomize;
  p:=random(NUMBER_OF_SOUND_WIN)+1;
  PlaySound(p+'.wav', psASync);
  end;
  compt:=0;
  if stop=false then
  begin
  label103.Left:=label103.left-50;
  timer4.interval:=1;
  end;

  if (label103.left>270) and (bonusvie=true) and (av=1) then
  label103.Left:=label103.left-50;
  if (label103.left<=270) and (stop) then
  begin
  timer4.interval:=3000;
  stop:=false;
  end;

  end;
  if k=3 then
  begin
  label64.caption:=inttostr(score);
  if playingPart=true then
  begin
  if (Shapeball3.top >= Shapebarre3.top+40) and (comptvie=0)  then
  begin
    timer9.Enabled:=true;
    label12.caption:='SCORE : '+inttostr(score);
    label84.caption:='GAME OVER';
    label84.Left:=label84.left-50;
  end;
  end;
  if label84.left<500 then
  playingPart:=false;
  for i:=41 to 60 do
  begin
   if s2[i].top<500 then
   compt:=compt+1;
  end;
  if (compt=0) and (playingPart=true) then
  begin
  timer1.enabled:=false;
  timer9.Enabled:=true;
  label12.caption:='SCORE : '+inttostr(score);
  label84.Caption:='CONGRATULATION';
  label84.left:=label84.left-50;
  //sound win
  randomize;
  p:=random(NUMBER_OF_SOUND_WIN)+1;
  PlaySound(p+'.wav', psASync);
  end;
  compt:=0;
  if stop=false then
  begin
  label104.Left:=label104.left-50;
  timer4.interval:=1;
  end;

  if (label104.left>270) and (bonusvie=true) and (av=1) then
  label104.Left:=label104.left-50;
  if (label104.left<=270) and (stop) then
  begin
  timer4.interval:=3000;
  stop:=false;
  end;

  end;
  if k=4 then
  begin
  Label75.caption:=inttostr(score);
  if playingPart=true then
  begin
  if (Shapeball4.top >= Shapebarre4.top+40) and (comptvie=0)  then
   begin
   timer9.Enabled:=true;
   label12.caption:='SCORE : '+inttostr(score);
   label85.caption:='GAME OVER';
   label85.Left:=label85.left-50;
   end;
  end;
  if label85.left<500 then
  playingPart:=false;
  for i:=61 to 80 do
  begin
   if s3[i].top<500 then
   compt:=compt+1;
  end;
  if (compt=0) and (playingPart=true) then
  begin
  timer1.enabled:=false;
  timer9.Enabled:=true;
  label12.caption:='SCORE : '+inttostr(score);
  label85.Caption:='CONGRATULATION';
  label85.left:=label85.left-50;
  //sound win
  randomize;
  p:=random(NUMBER_OF_SOUND_WIN)+1;
  PlaySound(p+'.wav', psASync);
  end;
  compt:=0;
  if stop=false then
  begin
  label105.Left:=label105.left-50;
  timer4.interval:=1;
  end;

  if (label105.left>270) and (bonusvie=true) and (av=1) then
  label105.Left:=label105.left-50;
  if (label105.left<=270) and (stop) then
  begin
  timer4.interval:=3000;
  stop:=false;
  end;

  end;
  if k=5 then
  begin
  Label76.caption:=inttostr(score);
  if playingPart=true then
  begin
  if (Shapeball5.top >= Shapebarre5.top+40) and (comptvie=0)  then
  begin
    timer9.Enabled:=true;
    label12.caption:='SCORE : '+inttostr(score);
    label86.caption:='GAME OVER';
    label86.Left:=label86.left-50;
  end;
  end;
  if label86.left<500 then
  playingPart:=false;
  for i:=81 to 122 do
  begin
   if s4[i].top<550 then
   compt:=compt+1;
  end;
  if (compt=0) and (playingPart=true) then
  begin
  timer1.enabled:=false;
  timer9.Enabled:=true;
  label12.caption:='SCORE : '+inttostr(score);
  label86.Caption:='CONGRATULATION';
  label86.left:=label86.left-50;
  //sound win
  randomize;
  p:=random(NUMBER_OF_SOUND_WIN)+1;
  PlaySound(p+'.wav', psASync);
  end;
  compt:=0;
  if stop=false then
  begin
  label106.Left:=label106.left-50;
  timer4.interval:=1;
  end;

  if (label106.left>270) and (bonusvie=true) and (av=1) then
  label106.Left:=label106.left-50;
  if (label106.left<=270) and (stop) then
  begin
  timer4.interval:=3000;
  stop:=false;
  end;

  end;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
  if k=1 then
  begin
  if (bonuslong=true) and (al=0) then
  begin
   label9.caption:='press a to take the special bar bonus';
   al:=al+1;
  end;
  if (bonusvie=true) and (av=0) then
  begin
  label10.font.color:=clmaroon;
   label10.caption:=' you have a special life bonus';
   av:=av+1;
  end;
  if (bonusthor=true) and (dv=0) then
  begin
  label11.caption:='you have a ball''s thor bonus ,press a to take it';
  dv:=dv+1;
  end;
  case a of
  14:label9.font.Color:=clgreen;
  10:label9.font.Color:=clblue;
  7:label9.font.Color:=clyellow;
  1:label9.font.Color:=clred

  end;
  if growsize then
  label9.font.size:=label9.font.size+1 ;
  if label9.font.size>=30 then
  label9.font.size:=15;
 end;
   if k=2 then
  begin
  if (bonuslong=true) and (al=0) then
  begin
   label93.caption:='press a to take the special bar bonus';
   al:=al+1;
  end;
  if (bonusvie=true) and (av=0) then
  begin
  label103.font.color:=clmaroon;
   label103.caption:=' you have a special life bonus';
   av:=av+1;
  end;
  if (bonusthor=true) and (dv=0) then
  begin
  label113.caption:='you have a ball''s thor bonus ,press a to take it';
  dv:=dv+1;
  end;
  case a of
  14:label93.font.Color:=clgreen;
  10:label93.font.Color:=clblue;
  7:label93.font.Color:=clyellow;
  1:label93.font.Color:=clred

  end;
  if growsize then
  label93.font.size:=label93.font.size+1 ;
  if label93.font.size>=30 then
  label93.font.size:=15;
 end;
    if k=3 then
  begin
  if (bonuslong=true) and (al=0) then
  begin
   label94.caption:='press a to take the special bar bonus';
   al:=al+1;
  end;
  if (bonusvie=true) and (av=0) then
  begin
  label104.font.color:=clmaroon;
   label104.caption:=' you have a special life bonus';
   av:=av+1;
  end;
  if (bonusthor=true) and (dv=0) then
  begin
  label114.caption:='you have a ball''s thor bonus ,press a to take it';
  dv:=dv+1;
  end;
  case a of
  14:label94.font.Color:=clgreen;
  10:label94.font.Color:=clblue;
  7:label94.font.Color:=clyellow;
  1:label94.font.Color:=clred

  end;
  if growsize then
  label94.font.size:=label94.font.size+1 ;
  if label94.font.size>=30 then
  label94.font.size:=15;
 end;
    if k=4 then
  begin
  if (bonuslong=true) and (al=0) then
  begin
   label95.caption:='press a to take the special bar bonus';
   al:=al+1;
  end;
  if (bonusvie=true) and (av=0) then
  begin
  label105.font.color:=clmaroon;
   label105.caption:=' you have a special life bonus';
   av:=av+1;
  end;
  if (bonusthor=true) and (dv=0) then
  begin
  label115.caption:='you have a ball''s thor bonus ,press a to take it';
  dv:=dv+1;
  end;
  case a of
  14:label95.font.Color:=clgreen;
  10:label95.font.Color:=clblue;
  7:label95.font.Color:=clyellow;
  1:label95.font.Color:=clred

  end;
  if growsize then
  label95.font.size:=label95.font.size+1 ;
  if label95.font.size>=30 then
  label95.font.size:=15;
 end;
 if k=5 then
  begin
  if (bonuslong=true) and (al=0) then
  begin
   label96.caption:='press a to take the special bar bonus';
   al:=al+1;
  end;
  if (bonusvie=true) and (av=0) then
  begin
  label106.font.color:=clmaroon;
   label106.caption:=' you have a special life bonus';
   av:=av+1;
  end;
  if (bonusthor=true) and (dv=0) then
  begin
  label116.caption:='you have a ball''s thor bonus ,press a to take it';
  dv:=dv+1;
  end;
  case a of
  14:label96.font.Color:=clgreen;
  10:label96.font.Color:=clblue;
  7:label96.font.Color:=clyellow;
  1:label96.font.Color:=clred

  end;
  if growsize then
  label96.font.size:=label96.font.size+1 ;
  if label96.font.size>=30 then
  label96.font.size:=15;
 end;
end;


procedure TForm1.Timer6Timer(Sender: TObject);
begin
    //Affichage des durrées des bonus
    if(tabBarre[k].width=300 AND activebonusthor = true) then
    begin
         tabLabel[k][1].left:=680;
         tabLabel[k][1].caption:='TIME BONUS : '+inttostr(a)+ ' (long) | ' + inttostr(timebonusthor) + ' (thor)';
    end
    else
    if (tabBarre[k].Width = 300) then
    begin
         tabLabel[k][1].left:=680;
         tabLabel[k][1].caption:='TIME BONUS : '+inttostr(a);
    end
    else
    if(activebonusthor = true) then
    begin
         tabLabel[k][6].left:=680;
         tabLabel[k][6].caption:='TIME BONUS : '+ inttostr(timebonusthor);
    end;

    //BonusLong active
    if tabBarre[k].Width=300 then
    begin
      a:=a-1;

      if a=-1 then
      begin
      tabBarre[k].Width:=longbarre;
      tabLabel[k][1].caption:='';
      end;
    end;
    //BonusThor active
    if activebonusthor=true then
    begin
      timebonusthor:=timebonusthor-1;

      if timebonusthor=-1 then
      begin
      activebonusthor:=false;
      end;
      case timebonusthor of
      9:tabBall[k].brush.color:=clgreen;
      8:tabBall[k].brush.color:=clblue;
      7:tabBall[k].brush.color:=clyellow;
      6:tabBall[k].brush.color:=clred;
      5:tabBall[k].brush.color:=clgreen;
      4:tabBall[k].brush.color:=clred;
      3:tabBall[k].brush.color:=clblue;
      2:tabBall[k].brush.color:=clred;
      1:tabBall[k].brush.color:=clolive;
      0:tabBall[k].brush.color:=clred;
      end;
    end;
    {if k=4 then
  begin
  if Shapebarre4.Width=300 then
  begin
  label95.left:=680;
  label95.caption:='TIME BONUS : '+inttostr(a);
  a:=a-1;

  if a=-1 then
  begin
  Shapebarre4.Width:=longbarre;
  label95.caption:='';
  end;
  end;
  if activebonusthor=true then
  begin
  label115.left:=680;
  label115.caption:='TIME BONUS : '+inttostr(timebonusthor);
  timebonusthor:=timebonusthor-1;
  end;
  if timebonusthor=-1 then
  begin
  activebonusthor:=false;
  label115.left:=1400;
  end;
  case timebonusthor of
  9:Shapeball1.brush.color:=clgreen;
  8:Shapeball1.brush.color:=clblue;
  7:begin
    Shapeball4.brush.color:=clyellow;
    label115.font.color:=clyellow;
    end;
  6:Shapeball4.brush.color:=clred;
  5:Shapeball4.brush.color:=clgreen;
  4:Shapeball4.brush.color:=clred;
  3:begin
    Shapeball4.brush.color:=clblue;
    label115.font.color:=clblue;
    end;
  2:Shapeball4.brush.color:=clred;
  1:Shapeball4.brush.color:=clolive;
  0:Shapeball4.brush.color:=clred;
  end;

  end;
    if k=5 then
  begin
  if Shapebarre5.Width=300 then
  begin
  label96.left:=680;
  label96.caption:='TIME BONUS : '+inttostr(a);
  a:=a-1;

  if a=-1 then
  begin
  Shapebarre5.Width:=longbarre;
  label96.caption:='';
  end;
  end;
  if activebonusthor=true then
  begin
  label116.left:=680;
  label116.caption:='TIME BONUS : '+inttostr(timebonusthor);
  timebonusthor:=timebonusthor-1;
  end;
  if timebonusthor=-1 then
  begin
  activebonusthor:=false;
  label116.left:=1400;
  end;
  case timebonusthor of
  9:Shapeball1.brush.color:=clgreen;
  8:Shapeball1.brush.color:=clblue;
  7:begin
    Shapeball5.brush.color:=clyellow;
    label116.font.color:=clyellow;
    end;
  6:Shapeball5.brush.color:=clred;
  5:Shapeball5.brush.color:=clgreen;
  4:Shapeball5.brush.color:=clred;
  3:begin
    Shapeball5.brush.color:=clblue;
    label116.font.color:=clblue;
    end;
  2:Shapeball5.brush.color:=clred;
  1:Shapeball5.brush.color:=clolive;
  0:Shapeball5.brush.color:=clred;
  end;

  end;}
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
 if (playoops=true) and (c=0) then
 begin
  //sound lose
  randomize;
  p:=random(NUMBER_OF_SOUND_LOSE)+1;
  PlaySound(p+'.wav', psASync);
  c:=c+1;
  playoops:=false;
  timer7.interval:=5000;
 end;

end;

procedure TForm1.Timer8Timer(Sender: TObject);
begin

  if (stopbonusthor=false) and (bonusthor) then
  begin
    timer8.Interval:=1;
    tabLabel[k][2]:=tabLabel[k][2].left-50;
  end;
  if (tabLabel[k][2].left>250) and (bonusthor) and (dv=1) then
  begin
    tabLabel[k][2].left:=tabLabel[k][2].left-50;
    if (tabLabel[k][2].left<=250) and (stopbonusthor) then
    begin
      timer8.interval:=3000;
      stopbonusthor:=false;
    end;
  end;

end;

procedure TForm1.Timer9Timer(Sender: TObject);
begin
 if time=3 then
 begin
  panel7.top:=160;
  panel7.left:=384;
  if k=1 then
  panel2.top:=1000;
  if k=2 then
  panel3.top:=1000;
  if k=3 then
  panel4.top:=1000;
  if k=4 then
  panel5.top:=1000;
  if k=5 then
  panel6.top:=1000;
 end;
 time:=time+1;
end;

procedure TForm1.PlaySound(const szSoundFilename: string; fPlayStyle:TPlayStyle);
var
  flags: word;
  szNonWindowsPlayCommand: string;
begin
 if(FileExists(szSoundFilename)) then
 begin
      szNonWindowsPlayCommand := '';
    {$IFDEF WINDOWS}
      if fPlayStyle = psASync then
        flags := SND_ASYNC or SND_NODEFAULT
      else
        flags := SND_SYNC or SND_NODEFAULT;
      try
        sndPlaySound(PChar(szSoundFilename), flags);
      except
        On E: Exception do
          E.CreateFmt(C_UnableToPlay +
          '%s Message:%s', [szSoundFilename, E.Message]);
      end;
    {$ELSE}
      // How to play in Linux? Use generic Linux commands
      // Use asyncprocess to play sound as SND_ASYNC
      // Try play
      if (FindDefaultExecutablePath('play') <> '') then
        szNonWindowsPlayCommand := 'play -q';
      // Try aplay
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('aplay') <> '') then
          szNonWindowsPlayCommand := 'aplay -q ';
      // Try paplay
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('paplay') <> '') then
          szNonWindowsPlayCommand := 'paplay';
      // Try mplayer
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('mplayer') <> '') then
          szNonWindowsPlayCommand := 'mplayer -really-quiet ';
      // Try CMus
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('CMus') <> '') then
          szNonWindowsPlayCommand := 'CMus ';
      // Try pacat
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('pacat') <> '') then
          szNonWindowsPlayCommand := 'pacat -p ';
      // Try ffplay
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('ffplay') <> '') then
          szNonWindowsPlayCommand := 'ffplay -autoexit -nodisp -loglevel quiet';
      // Try cvlc
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('cvlc') <> '') then
          szNonWindowsPlayCommand := 'cvlc -q --play-and-exit ';
      // Try canberra-gtk-play
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('canberra-gtk-play') <> '') then
          szNonWindowsPlayCommand := 'canberra-gtk-play -c never -f ';
      // Try Macintosh command?
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('afplay') <> '') then
          szNonWindowsPlayCommand := 'afplay';
      // Try mpg321
      if (szNonWindowsPlayCommand = '') then
        if (FindDefaultExecutablePath('mpg321') <> '') then
          szNonWindowsPlayCommand := 'mpg321 -q';
      // proceed if we managed to find a valid command
      if (szNonWindowsPlayCommand <> '') then
      begin
        if fPlayStyle = psASync then
        begin
          if SoundPlayerAsyncProcess = nil then
            SoundPlayerAsyncProcess := Tasyncprocess.Create(nil);
          SoundPlayerAsyncProcess.CurrentDirectory := ExtractFileDir(szSoundFilename);
          SoundPlayerAsyncProcess.Executable :=
            FindDefaultExecutablePath(Copy2Space(szNonWindowsPlayCommand));
          SoundPlayerAsyncProcess.Parameters.Clear;
          SoundPlayerAsyncProcess.Parameters.Add(szSoundFilename);
          try
            SoundPlayerAsyncProcess.Execute;
          except
            On E: Exception do
              E.CreateFmt('Playstyle=paASync: ' + C_UnableToPlay +
                '%s Message:%s', [szSoundFilename, E.Message]);
          end;
        end
        else
        begin
          if SoundPlayerSyncProcess = nil then
            SoundPlayerSyncProcess := Tprocess.Create(nil);
          SoundPlayerSyncProcess.CurrentDirectory := ExtractFileDir(szSoundFilename);
          SoundPlayerSyncProcess.Executable :=
            FindDefaultExecutablePath(Copy2Space(szNonWindowsPlayCommand));
          SoundPlayersyncProcess.Parameters.Clear;
          SoundPlayerSyncProcess.Parameters.Add(szSoundFilename);
          try
            SoundPlayerSyncProcess.Execute;
            SoundPlayersyncProcess.WaitOnExit;
          except
            On E: Exception do
              E.CreateFmt('Playstyle=paSync: ' + C_UnableToPlay +
                '%s Message:%s', [szSoundFilename, E.Message]);
          end;
        end;
      end
      else
        raise Exception.CreateFmt('The play command %s does not work on your system',
          [szNonWindowsPlayCommand]);
    {$ENDIF}
  end;
end;

procedure TForm1.DestroyPlaySoundObject();
begin
  {$IFNDEF WINDOWS}
  FreeAndNil(SoundPlayerSyncProcess);
  FreeAndNil(SoundPlayerAsyncProcess);
  {$ENDIF}
end;
end.

