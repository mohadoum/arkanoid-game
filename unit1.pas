unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls,
  //For playing sound
  FileUtil, ExtendedTabControls, uplaysound, asyncprocess, process, StrUtils;

type

  //For playing  sound
  TPlayStyle = (psAsync, psSync);

  TProcedurePointer = procedure of object;

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    LabelLevel: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    LabelFinalScore: TLabel;
    LabelMenu: TLabel;
    LabelQuit: TLabel;
    Label15: TLabel;
    LabelRestart: TLabel;
    LabelVie4: TLabel;
    LabelVie5: TLabel;
    Labelscore5: TLabel;
    Label86: TLabel;
    Label106: TLabel;
    Label116: TLabel;
    Labelscore4: TLabel;
    Label115: TLabel;
    Label105: TLabel;
    Label85: TLabel;
    LabelVie2: TLabel;
    Label103: TLabel;
    labelVie3: TLabel;
    Label83: TLabel;
    Label93: TLabel;
    Label113: TLabel;
    Label95: TLabel;
    LabelEasy: TLabel;
    Label96: TLabel;
    Label104: TLabel;
    Label84: TLabel;
    Label94: TLabel;
    Label114: TLabel;
    LabelNormal: TLabel;
    LabelHard: TLabel;
    Labelscore1: TLabel;
    LabelVie1: TLabel;
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
    PanelScore: TPanel;
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
    Timer11: TTimer;
    Timer12: TTimer;
    Timer13: TTimer;
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
    procedure LabelFinalScoreClick(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure LabelMenuClick(Sender: TObject);
    procedure LabelQuitClick(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure LabelRestartClick(Sender: TObject);
    procedure Label2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure LabelNormalClick(Sender: TObject);
    procedure LabelHardClick(Sender: TObject);
    procedure LabelVie4Click(Sender: TObject);
    procedure Label65Click(Sender: TObject);
    procedure LabelVie5Click(Sender: TObject);
    procedure Label85Click(Sender: TObject);
    procedure Label95Click(Sender: TObject);
    procedure LabelVie2Click(Sender: TObject);
    procedure LabelLevelClick(Sender: TObject);
    procedure labelVie3Click(Sender: TObject);
    procedure Label84Click(Sender: TObject);
    procedure LabelEasyClick(Sender: TObject);
    procedure Labelscore1Click(Sender: TObject);
    procedure LabelVie1Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label93Click(Sender: TObject);
    procedure Labelscore3Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure PanelScoreClick(Sender: TObject);
    procedure Shape3ChangeBounds(Sender: TObject);
    procedure Shapeball4ChangeBounds(Sender: TObject);
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
    procedure Timer11Timer(Sender: TObject);
    procedure Timer12StartTimer(Sender: TObject);
    procedure Timer12StopTimer(Sender: TObject);
    procedure Timer12Timer(Sender: TObject);
    procedure Timer13Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2StartTimer(Sender: TObject);
    procedure Timer2StopTimer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure PlaySound(szSoundFilepath: string; fPlayStyle: TPlayStyle);
    procedure DestroyPlaySoundObject();
    procedure PlayRandomedSound(DIRECTORY_NAME: string; NUMBER_OF_SOUND: integer; fPlayStyle: TPlayStyle);
    procedure IncreaseScore();
    procedure TakeOneLife();
    procedure ShowScore();
    procedure WaitAndShowScore();
    function LeftTranslation(labeel: TLabel; startPoint: integer; endPoint: integer; duration: integer): integer;

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  up, right, limit_right, limit_left, playingPart, bonuslong, bonusvie,
  growsize, stop: boolean;
  playoops, bonusthor, activebonusthor, stopbonusthor, LeftTranslated, FallingBallSoundPlayed, FallingBallEventOccured: boolean;
  aProcedureIsWaiting : boolean;

  filePath: string;

  ball : TShape;
  bar : TShape;

  s: array of TShape;
  s1: array of TShape;
  s2: array of TShape;
  s3: array of TShape;
  s4: array of TShape;
  tabShape: array[1..5] of array of TShape;
  tabpanel: array[1..5] of Tpanel;
  tab: array of integer;
  tabSave: array[1..5] of array of integer;
  //table which record initial position of all bricks (TShapes) before game start
  tabBarre: array[1..5] of TShape;
  tabBall: array[1..5] of TShape;
  tabLimit: array[1..5] of TShape;
  tabLabel: array[1..5, 1..8] of TLabel;
  tabPositions: array[1..5, 1..2, 1..2] of integer;
  choosenSound, i, j, jv, a, comptvie, al, av, b, c, d, dv, timebonusthor, k,
  t, time, longbarre: integer;
  score, compt, jumpbar, jumpbal: integer;

  array10Labels: array[0..9] of TLabel;
  iterator, iteratorTimer12, LTGameOverLabelIndex, iteratorTimer13 : integer;

  //LT stands for Left Translation
  array10LTStartPoint, array10LTEndPoint, array10LTDuration, array10LTStep : array[0..9] of integer;

  array10Chrono, array10DelayNSeconds : array[0..9] of integer;
  array10ProcedurePointers: array[0..9] of TProcedurePointer;

  //For playing sound
  {$IFNDEF WINDOWS}
  SoundPlayerAsyncProcess: Tasyncprocess;
  SoundPlayerSyncProcess: Tprocess;
  {$ENDIF}

const

  NUMBER_OF_GAME_PANELS = 5;
  NUMBER_OF_SOUND_WIN = 2;
  NUMBER_OF_SOUND_LOSE = 7;
  NUMBER_OF_SOUND_START = 2;
  NUMBER_OF_SOUND_QUIT = 3;
  NUMBER_OF_SOUND_GComment = 7;
  C_UnableToPlay = 'Unable to play ';
  DIRECTORY_NAME_WIN = 'win';
  DIRECTORY_NAME_LOSE = 'lose';
  DIRECTORY_NAME_START = 'start';
  SIRECTORY_NAME_QUIT = 'quit';
  DIRECTORY_NAME_GComment = 'GoodComment';
  DIRECTORY_SOUND = 'sounds';
  SOUND_BAR_TOUCH = 'BarTouch.wav';
  SOUND_BRICK_BREAK ='BrickBreak.wav';
  SOUND_BAR_BONUS = 'BarBonus.wav';
  SOUND_THOR_BONUS = 'ThorBonus.wav';
  SOUND_FALLING_BALL = 'Fall.wav';
  SOUND_NOT_MUCH_TIME_LEFT = 'NotMuchTimeLeft.wav';
  MAX_LEFT = 1500; MAX_TOP = 1000;
  LEFT_TRANSLATION_STEP_DURATION = 100;


{$IFNDEF WINDOWS}
  // Defined in mmsystem
  SND_SYNC = 0;
  SND_ASYNC = 1;
  SND_NODEFAULT = 2;
{$ENDIF}

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  //initialize variables declared at top

 {rewrite(fich_noms);
  assign(fich_noms,'fnoms');
  rewrite(fich_score);
  assign(fich_score,'fscore');}

  setLength(s, 20);
  setLength(s1, 20);
  setLength(s2, 20);
  setLength(s3, 20);
  setLength(s4, 42);
  s[1] := shape1;
  s[2] := shape2;
  s[3] := shape3;
  s[4] := shape4;
  s[5] := shape5;
  s[6] := shape6;
  s[7] := shape7;
  s[8] := shape8;
  s[9] := shape9;
  s[10] := shape10;
  s[11] := shape11;
  s[12] := shape12;
  s[13] := shape13;
  s[14] := shape14;
  s[15] := shape15;
  s[16] := shape16;
  s[17] := shape17;
  s[18] := shape18;
  s[19] := shape19;
  s[20] := shape20;
  s1[1] := shape21;
  s1[2] := shape22;
  s1[3] := shape23;
  s1[4] := shape24;
  s1[5] := shape25;
  s1[6] := shape26;
  s1[7] := shape27;
  s1[8] := shape28;
  s1[9] := shape29;
  s1[10] := shape30;
  s1[11] := shape31;
  s1[12] := shape32;
  s1[13] := shape33;
  s1[14] := shape34;
  s1[15] := shape35;
  s1[16] := shape36;
  s1[17] := shape37;
  s1[18] := shape38;

  s1[19] := shape39;
  s1[20] := shape40;

  s2[1] := shape41;

  s2[2] := shape42;
  s2[3] := shape43;
  s2[4] := shape44;
  s2[5] := shape45;
  s2[6] := shape46;
  s2[7] := shape47;
  s2[8] := shape48;
  s2[9] := shape49;
  s2[10] := shape50;
  s2[11] := shape51;
  s2[12] := shape52;
  s2[13] := shape53;
  s2[14] := shape54;
  s2[15] := shape55;
  s2[16] := shape56;
  s2[17] := shape57;
  s2[18] := shape58;
  s2[19] := shape59;
  s2[20] := shape60;
  tabpanel[1] := panel2;
  tabpanel[2] := panel3;
  tabpanel[3] := panel4;
  tabpanel[4] := panel5;
  tabpanel[5] := panel6;
  tabBarre[1] := shapeBarre1;
  tabBarre[2] := shapeBarre2;
  tabBarre[3] := shapeBarre3;
  tabBarre[4] := shapeBarre4;
  tabBarre[5] := shapeBarre5;
  tabBall[1] := Shapeball1;
  tabBall[2] := Shapeball2;
  tabBall[3] := Shapeball3;
  tabBall[4] := Shapeball4;
  tabBall[5] := Shapeball5;
  tabLimit[1] := ShapeLimit1;
  tabLimit[2] := ShapeLimit2;
  tabLimit[3] := ShapeLimit3;
  tabLimit[4] := ShapeLimit4;
  tabLimit[5] := ShapeLimit5;
  s3[1] := shape61;
  s3[2] := shape62;
  s3[3] := shape63;
  s3[4] := shape64;
  s3[5] := shape65;
  s3[6] := shape66;
  s3[7] := shape67;
  s3[8] := shape68;
  s3[9] := shape69;
  s3[10] := shape70;
  s3[11] := shape71;
  s3[12] := shape72;
  s3[13] := shape73;
  s3[14] := shape74;
  s3[15] := shape75;
  s3[16] := shape76;
  s3[17] := shape77;
  s3[18] := shape78;
  s3[19] := shape79;
  s3[20] := shape80;
  s4[1] := shape81;
  s4[2] := shape82;
  s4[3] := shape83;
  s4[4] := shape84;
  s4[5] := shape85;
  s4[6] := shape86;
  s4[7] := shape87;
  s4[8] := shape88;
  s4[9] := shape89;
  s4[10] := shape90;
  s4[11] := shape91;
  s4[12] := shape92;
  s4[13] := shape93;
  s4[14] := shape94;
  s4[15] := shape95;
  s4[16] := shape96;
  s4[17] := shape97;
  s4[18] := shape98;
  s4[19] := shape99;
  s4[20] := shape100;
  s4[21] := shape101;
  s4[22] := shape102;
  s4[23] := shape103;
  s4[24] := shape104;
  s4[25] := shape105;
  s4[26] := shape106;
  s4[27] := shape107;
  s4[28] := shape108;
  s4[29] := shape109;
  s4[30] := shape110;
  s4[31] := shape111;
  s4[32] := shape112;
  s4[33] := shape113;
  s4[34] := shape114;
  s4[35] := shape115;
  s4[36] := shape116;
  s4[37] := shape117;
  s4[38] := shape118;
  s4[39] := shape119;
  s4[40] := shape120;
  s4[41] := shape121;
  s4[42] := shape122;
  tabShape[1] := s;
  tabShape[2] := s1;
  tabShape[3] := s2;
  tabShape[4] := s3;
  tabShape[5] := s4;
  tabLabel[1][1] := label9; //for bonus message
  tabLabel[1][2] := label11; //for bonus thor
  tabLabel[1][3] := Labelscore1; //for score
  tabLabel[1][4] := LabelVie1; //for life
  tabLabel[1][5] := label10; //for start
  tabLabel[1][6] := label8; //for end
  tabLabel[2][1] := label93; //for bonus message
  tabLabel[2][2] := label113; //for bonus thor
  tabLabel[2][3] := Labelscore2; //for score
  tabLabel[2][4] := LabelVie2; //for life
  tabLabel[2][5] := label103; //for start
  tabLabel[2][6] := label83; //for end
  tabLabel[3][1] := label94; //for bonus message
  tabLabel[3][2] := label114; //for bonus thor
  tabLabel[3][3] := labelscore3; //for score
  tabLabel[3][4] := labelVie3; //for life
  tabLabel[3][5] := label104; //for start
  tabLabel[3][6] := label84; //for end
  tabLabel[4][1] := label95; //for bonus message
  tabLabel[4][2] := label115; //for bonus thor
  tabLabel[4][3] := labelscore4; //for score
  tabLabel[4][4] := LabelVie4; //for life
  tabLabel[4][5] := label105; //for start
  tabLabel[4][6] := label85; //for end
  tabLabel[5][1] := label96; //for bonus message
  tabLabel[5][2] := label116; //for bonus thor
  tabLabel[5][3] := labelscore5; //for score
  tabLabel[5][4] := LabelVie5; //for life
  tabLabel[5][5] := label106; //for start
  tabLabel[5][6] := label86; //for end

  for k := 1 to NUMBER_OF_GAME_PANELS do
  begin
       for iterator := 1 to 6 do
      begin
          tabLabel[k][iterator].Width := 10;
          tabLabel[k][iterator].AutoSize := True;
      end;
  end;


  for k := 1 to NUMBER_OF_GAME_PANELS do
  begin
    setLength(tab, Length(tabShape[k]));
    for t := 1 to Length(tabShape[k]) do
    begin
      tab[t] := tabShape[k][t].Top;
    end;

    tabSave[k] := tab;
  end;


  //panel2
  //ball
  tabPositions[1][1][1] := 640; //left
  tabPositions[1][1][2] := 632; //top
  //barre
  tabPositions[1][2][1] := 562; //left
  tabPositions[1][2][2] := 656; //top
  //panel3
  //ball
  tabPositions[2][1][1] := 680; //left
  tabPositions[2][1][2] := 624; //top
  //barre
  tabPositions[2][2][1] := 592; //left
  tabPositions[2][2][2] := 648; //top
  //panel4
  //ball
  tabPositions[3][1][1] := 664; //left
  tabPositions[3][1][2] := 632; //top
  //barre
  tabPositions[3][2][1] := 584; //left
  tabPositions[3][2][2] := 656; //top
  //panel5
  //ball
  tabPositions[4][1][1] := 648; //left
  tabPositions[4][1][2] := 624; //top
  //barre
  tabPositions[4][2][1] := 560; //left
  tabPositions[4][2][2] := 648; //top
  //panel6
  //ball
  tabPositions[5][1][1] := 645; //left
  tabPositions[5][1][2] := 632; //top
  //barre
  tabPositions[5][2][1] := 560; //left
  tabPositions[5][2][2] := 655; //top





  //Initializing Array10Labels Array
  for iterator := 0 to 9 do
  begin
    array10Labels[iterator] := nil;
  end;

  Timer12.Interval := LEFT_TRANSLATION_STEP_DURATION;

  //Initializing Arrays For Chrono And ProcedurePointer
  for iterator := 0 to 9 do
  begin
    array10Chrono[iterator] := -1;
    array10ProcedurePointers[iterator] := nil;
  end;



  time := 0;
  t := 0;
  bonusthor := False;
  stopbonusthor := True;
  dv := 0;
  timebonusthor := 10;
  activebonusthor := False;
  playoops := False;
  stop := True;
  d := 0;
  limit_left := False;
  limit_right := False;
  growsize := True;
  label9.Left := 270;
  label93.Left := 270;
  label94.Left := 270;
  label95.Left := 270;
  label96.Left := 270;
  al := 0;
  av := 0;
  a := 15;
  c := 0;
  compt := 0;
  j := 0;
  jv := 0;
  LabelVie1.Caption := '0';
  LabelVie2.Caption := '0';
  labelVie3.Caption := '0';
  LabelVie4.Caption := '0';
  LabelVie5.Caption := '0';
  bonuslong := False;
  bonusvie := False;


  playingPart := False;
  score := 0;
  comptvie := 2;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormKeyPress(Sender: TObject; var key: char);
begin

  if key = 'm' then //want to go right
  begin
    limit_left := False;
    if limit_right = False then
      tabBarre[k].Left := tabBarre[k].left + jumpbar;
  end
  else
  if key = 'l' then //want to go to left
  begin
    limit_right := False;
    if limit_left = False then
      tabBarre[k].Left := tabBarre[k].left - jumpbar;
  end
  else
  if key = 'a' then //want to active bonus
  begin
    if bonuslong = True then
    begin
      //sound effect for bonuslong
      PlaySound('BarBonus.wav', psASync);

      tabBarre[k].Width := 300;
      bonuslong := False;
    end;
    if bonusthor = True then
    begin
      //sound effect for bonusthor
      PlaySound('ThorBonus.wav', psASync);

      activebonusthor := True;
      bonusthor := False;
    end;

  end
  else
  if (key = 'z') OR (key = 'Z') then //want to start game
  begin
    if playingPart = False then
    begin
      playingPart := True;

      ball := tabBall[k];
      bar := tabBarre[k];

      //sound start
      if score = 0 then
         PlayRandomedSound(DIRECTORY_NAME_START, NUMBER_OF_SOUND_START, psSync);

      //label start or continue
      tabLabel[k][5].Left := MAX_LEFT;

      //label vie
      TakeOneLife();


      //label score
      IncreaseScore();

      //activer les timers
      timer1.Enabled := True;   //on fait tourner la balle sans considérer les briques
      timer3.Enabled := True;   //on fait tourner la balle en considérant uniquement les briques
      timer2.Enabled:= True; //Gère tout ce qui est relatif à la chute du ball au sol
      timer11.Enabled := True;  //on fait mouvoir la balle

      // c := 0;
     // timer7.interval := 10;
    end;
  end;

end;

procedure TForm1.Image5Click(Sender: TObject);
begin

end;

procedure TForm1.Label10Click(Sender: TObject);
begin

end;

procedure TForm1.LabelFinalScoreClick(Sender: TObject);
begin

end;

procedure TForm1.Label9Click(Sender: TObject);
begin

end;

procedure TForm1.LabelMenuClick(Sender: TObject);
begin
  // Reinit all variables eventually touched in the precedent game
  timer1.Enabled := False;
  timer2.Enabled := True;
  timer3.Enabled := False;
  timer4.Enabled := True;
  timer5.Enabled := True;
  timer7.Enabled := False;
  timer6.Enabled := True;
  timer8.Enabled := True;
  timer9.Enabled := False;
  time := 0;

  tabBall[k].left := 640;
  tabBall[k].top := 632;
  tabBarre[k].left := 560;
  tabLabel[k][5].Caption := 'press z to continue';
  for t := 1 to Length(tabShape[k]) do
  begin
    tabShape[k][t].top := tabSave[k][t];
  end;

  PanelScore.Top := 1000;
  panel1.Top := 160;
  bonusthor := False;
  stopbonusthor := True;
  dv := 0;
  timebonusthor := 10;
  activebonusthor := False;
  playoops := False;
  stop := True;
  t := 0;
  d := 0;
  limit_left := False;
  limit_right := False;
  playingPart := True;
  growsize := True;
  score := 0;
  tabLabel[k][1].Left := 270;
  al := 0;
  av := 0;
  a := 15;
  c := 0;
  compt := 0;
  j := 0;
  jv := 0;
  comptvie := 2;
  bonuslong := False;
  bonusvie := False;
  tabLabel[k][6].Left := 1400;
  tabLabel[k][6].top := 304;

end;

procedure TForm1.LabelQuitClick(Sender: TObject);
begin
  Destroy();
  application.terminate;
end;

procedure TForm1.Label15Click(Sender: TObject);
begin

end;

procedure TForm1.LabelRestartClick(Sender: TObject);
begin
  // Reinit all variables eventually touched in the precedent game
  timer1.Enabled := False;
  timer2.Enabled := True;
  timer3.Enabled := False;
  timer4.Enabled := True;
  timer5.Enabled := True;
  timer7.Enabled := False;
  timer6.Enabled := True;
  timer8.Enabled := True;
  timer9.Enabled := False;
  time := 0;

  tabBall[k].left := 640;
  tabBall[k].top := 632;
  tabBarre[k].left := 560;
  tabLabel[k][5].Caption := 'press z to continue';
  for t := 1 to Length(tabShape[k]) do
  begin
    tabShape[k][t].top := tabSave[k][t];
  end;

  PanelScore.Top := 1000;
  tabpanel[k].top := 0;
  bonusthor := False;
  stopbonusthor := True;
  dv := 0;
  timebonusthor := 10;
  activebonusthor := False;
  playoops := False;
  stop := True;
  t := 0;
  d := 0;
  limit_left := False;
  limit_right := False;
  playingPart := True;
  growsize := True;
  score := 0;
  tabLabel[k][1].Left := 270;
  al := 0;
  av := 0;
  a := 15;
  c := 0;
  compt := 0;
  j := 0;
  jv := 0;
  comptvie := 2;
  bonuslong := False;
  bonusvie := False;
  tabLabel[k][6].Left := 1400;
  tabLabel[k][6].top := 304;
end;

procedure TForm1.Label2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin

end;

procedure TForm1.LabelNormalClick(Sender: TObject);
begin
  Edit1.Enabled := False; //For preventing him to catch the FormKeyressEvent

  randomize;
  k := random(NUMBER_OF_GAME_PANELS) + 1;
  tabpanel[k].left := 0;
  tabpanel[k].top := 0;
  panel1.top := 1000;
  jumpbal := 1;
  jumpbar := 17;
  longbarre := 150;
  tabBarre[k].Width := longbarre;
end;

procedure TForm1.LabelHardClick(Sender: TObject);
begin
  Edit1.Enabled := False; //For preventing him to catch the FormKeyressEvent

  randomize;
  k := random(NUMBER_OF_GAME_PANELS) + 1;
  tabpanel[k].left := 0;
  tabpanel[k].top := 0;
  panel1.top := 1000;
  jumpbal := 10;
  jumpbar := 20;
  longbarre := 100;
  tabBarre[k].Width := longbarre;
end;

procedure TForm1.LabelVie4Click(Sender: TObject);
begin

end;

procedure TForm1.Label65Click(Sender: TObject);
begin

end;

procedure TForm1.LabelVie5Click(Sender: TObject);
begin

end;

procedure TForm1.Label85Click(Sender: TObject);
begin

end;

procedure TForm1.Label95Click(Sender: TObject);
begin

end;

procedure TForm1.LabelVie2Click(Sender: TObject);
begin

end;

procedure TForm1.LabelLevelClick(Sender: TObject);
begin

end;

procedure TForm1.labelVie3Click(Sender: TObject);
begin

end;

procedure TForm1.Label84Click(Sender: TObject);
begin

end;

procedure TForm1.LabelEasyClick(Sender: TObject);
begin
  Edit1.Enabled := False; //For preventing him to catch the FormKeyressEvent

  randomize;
  k := random(NUMBER_OF_GAME_PANELS) + 1;
  tabpanel[k].left := 0;
  tabpanel[k].top := 0;
  panel1.top := 1000;
  jumpbal := 5;
  jumpbar := 15;
  longbarre := 193;
  tabBarre[k].Width := longbarre;

end;

procedure TForm1.Labelscore1Click(Sender: TObject);
begin

end;

procedure TForm1.LabelVie1Click(Sender: TObject);
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

procedure TForm1.PanelScoreClick(Sender: TObject);
begin

end;

procedure TForm1.Shape3ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shapeball4ChangeBounds(Sender: TObject);
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

procedure TForm1.Timer11Timer(Sender: TObject); //on fait mouvoir la balle
begin
  //montée ou descente de la balle
  if up = True then
    tabBall[k].top := tabBall[k].Top - jumpbal
  else
    tabBall[k].Top := tabBall[k].top + jumpbal;

  //la  balle  va à droite ou à gauche
  if right = True then
    tabBall[k].Left := tabBall[k].left + jumpbal
  else
    tabBall[k].left := tabBall[k].left - jumpbal;
end;

procedure TForm1.Timer12StartTimer(Sender: TObject);
begin

end;

procedure TForm1.Timer12StopTimer(Sender: TObject);
begin

end;

procedure TForm1.Timer12Timer(Sender: TObject);  //For left Translation of any label
begin

  LeftTranslated := False;
  //Parcourt du tableau des labels à translater à gauche
  for iteratorTimer12 := 0 to 9 do
  begin
    if (array10Labels[iteratorTimer12] <> nil ) then
    begin
      if (array10Labels[iteratorTimer12].Left > array10LTEndPoint[iteratorTimer12]) then
      begin
        array10Labels[iteratorTimer12].Left := array10Labels[iteratorTimer12].Left - array10LTStep[iteratorTimer12];
        Lefttranslated := TRUE;
      end
      else
      begin
          array10Labels[iteratorTimer12].Left := array10LTEndPoint[iteratorTimer12];
          array10Labels[iteratorTimer12] := nil;
      end;
    end;
  end;

  //Désactivation du Timer
  if (LeftTranslated = FALSE) then
     Timer12.Enabled := FALSE;
end;


//Faire des pauses avant d'éxecuter des blocks de codes spécifiques
procedure TForm1.Timer13Timer(Sender: TObject);
begin
   aProcedureIsWaiting := FALSE;
  //Parcourt des procedures en attente à executer
  for iteratorTimer13 := 0 to 9 do
  begin
    if(array10ProcedurePointers[iteratorTimer13] <> nil) then
    begin
      array10Chrono[iteratorTimer13] := array10Chrono[iteratorTimer13] + 1;
      if (array10Chrono[iteratorTimer13]  >= array10DelayNSeconds[iteratorTimer13]) then
      begin
           array10ProcedurePointers[iteratorTimer13]();
           array10ProcedurePointers[iteratorTimer13] := nil;
      end
      else
           aProcedureIsWaiting := TRUE;

    end;
  end;


  //Conditions de désactivation du Timer 13
  if (not(aProcedureIsWaiting)) then
     Timer13.Enabled := FALSE;
end;

procedure TForm1.Timer1Timer(Sender: TObject); //on fait tourner la balle sans considérer les briques
begin

  //conditions de changement de direction de la balle sur l'axe vertical
  if tabBall[k].top <= tabLimit[k].top + tabLimit[k].Height then  //shapeLimit contact
  begin
    up := False;

  end
  else
  if (tabBall[k].top + tabBall[k].Height >= tabBarre[k].top) and
    (tabBall[k].Top + tabBall[k].Height < tabBarre[k].Top + tabBarre[k].Height) then //shapeBar top contact
  begin
    if ((tabBall[k].left + (tabBall[k].Width div 2)) >= tabBarre[k].Left) and
      ((tabBall[k].left + (tabBall[k].Width div 2)) <= tabBarre[k].Left +
      tabBarre[k].Width) then //shapeBar inner top contact
    begin
         up := True;
         PlaySound(DIRECTORY_SOUND + '/' + SOUND_BAR_TOUCH, psAsync);
    end
    else
    if ((tabBall[k].Left + tabBall[k].Width > tabBarre[k].Left) and
      (tabBall[k].Left < tabBarre[k].Left)) or
      ((tabBall[k].Left < tabBarre[k].Left + tabBarre[k].Width) and
      (tabBall[k].Left + tabBall[k].Width > tabBarre[k].Left + tabBarre[k].Width)) then //shapeBar top corner contact
    begin
         right := not (right);
         PlaySound(DIRECTORY_SOUND + '/' + SOUND_BAR_TOUCH, psAsync);
    end;

  end
  else
  if (ball.Left + ball.Width >= bar.Left) and (ball.Left < bar.Left) and (ball.Top >= bar.Top) AND (ball.Top < bar.Top + bar.Height) then  //shapeBar right side contact
     right := FALSE
  else
  if (ball.Left <= bar.Left + bar.Width) and (ball.Left + ball.Width > bar.Left + bar.Width) and (ball.Top >= bar.Top) AND (ball.Top < bar.Top + bar.Height) then   //shapeBar left side contact
     right := TRUE;


  //conditions de changement de direction de la balle sur l'axe horizontal
  if tabBall[k].left <= tabpanel[k].Left then
    right := True
  else
  if tabBall[k].Left + tabBall[k].Width >= tabpanel[k].Left + tabpanel[k].Width then
    right := False;

end;

procedure TForm1.Timer2StartTimer(Sender: TObject);
begin
     FallingBallSoundPlayed := False;
     FallingBallEventOccured := False;
end;

procedure TForm1.Timer2StopTimer(Sender: TObject);
begin
     FallingBallSoundPlayed := False;
     FallingBallEventOccured := False;
end;

procedure TForm1.Timer2Timer(Sender: TObject); //Gère tout ce qui est relatif à la chute du ball au sol
begin
     //Falling Ball Sound Management
     if (FallingBallSoundPlayed = FALSE) then
     //la balle dépasse la barre
     if (tabBall[k].Top > tabBarre[k].Top + tabBarre[k].Height) then
     begin
       //Allumer le son falling Ball
       PlaySound(DIRECTORY_SOUND + '/' + SOUND_FALLING_BALL, psAsync);
       FallingBallSoundPlayed := TRUE;
     end;


     if (FallingBallEventOccured = FALSE) then
     //la balle arrive au sol
     if (tabBall[k].Top + tabBall[k].Height >= tabPanel[k].Top + tabPanel[k].Height) then
     begin
       FallingBallEventOccured := TRUE;
       //stopper la balle
       Timer11.Enabled := False;


       if(comptvie <= 0) then
       begin
            //Allumer un son Game Over
            PlayRandomedSound(DIRECTORY_NAME_LOSE, NUMBER_OF_SOUND_LOSE, psAsync);

            //Déplacer le label 'Game Over' et le centrer
            tabLabel[k][6].Caption:= 'Game Over';
            LTGameOverLabelIndex := LeftTranslation(tabLabel[k][6], MAX_LEFT, tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][6].Width div 2), 2000);

            //faire-pause-3-secondes ET afficher-Score
            WaitAndShowScore();

            //reinit-game-data
       end
       else
       //(comptvie > 0) recentrer ball and bar positions
       begin
           tabBarre[k].Top := tabPositions[k][2][2];
           tabBarre[k].Left := tabPositions[k][2][1];
           tabBall[k].Top := tabPositions[k][1][2];
           tabBall[k].Left := tabPositions[k][1][1];
           //change label Start content
           tabLabel[k][5].Caption := 'Press Z to continue';
           tabLabel[k][5].Left := tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][5].Width div 2);
       end;
     end;

     //Désactivation du Timer
     if (FallingBallEventOccured) then
     begin
        playingPart := FALSE;
        Timer2.Enabled := FALSE;
        Timer1.Enabled := FALSE;
        Timer3.Enabled := FALSE;
     end;
end;

procedure TForm1.Timer3Timer(Sender: TObject); //on fait tourner la balle en considérant uniquement les briques
begin

  //on parcourt les briques
  for i := 1 to Length(tabShape[k]) do
  begin
    //montée
    if up = True then
    begin
      if (tabBall[k].Top <= tabShape[k][i].Top + tabShape[k][i].Height) and
        (tabShape[k][i].Top < tabBall[k].top) and
        (tabShape[k][i].left <= tabBall[k].Left + (tabBall[k].Width / 2)) and
        (tabBall[k].Left + (tabBall[k].Width / 2) <= tabShape[k][i].left +
        tabShape[k][i].Width) then
      begin
        tabShape[k][i].top := 1000;
        increaseScore();
        if activebonusthor = False then
          up := False;
        PlaySound(DIRECTORY_SOUND + '/' + SOUND_BRICK_BREAK, psAsync);
      end;
    end
    else //descente
    begin
      if (tabBall[k].top < tabShape[k][i].Top) and
        (tabBall[k].Top + tabBall[k].Height >= tabShape[k][i].top) and
        (tabShape[k][i].left <= tabBall[k].Left + (tabBall[k].Width / 2)) and
        (tabBall[k].Left + (tabBall[k].Width / 2) <= tabShape[k][i].left +
        tabShape[k][i].Width) then
      begin
        tabShape[k][i].top := 1000;
        increaseScore();
        if activebonusthor = False then
          up := True;
        PlaySound(DIRECTORY_SOUND + '/' + SOUND_BRICK_BREAK, psAsync);
      end;

    end;
    //vers la droite
    if right = True then
    begin
      if (tabBall[k].left + tabBall[k].Width >= tabShape[k][i].left) and
        (tabBall[k].Left < tabShape[k][i].Left + tabShape[k][i].Width) and
        (tabBall[k].top + (tabBall[k].Height / 2) <= tabShape[k][i].Top +
        tabShape[k][i].Height) and (tabShape[k][i].Top < tabBall[k].top +
        (tabBall[k].Height / 2)) then
      begin
        tabShape[k][i].top := 1000;
        increaseScore();
        if activebonusthor = False then
          right := False;
        PlaySound(DIRECTORY_SOUND + '/' + SOUND_BRICK_BREAK, psAsync);
      end;
    end
    else //vers la gauche
    begin
      if (tabBall[k].Left <= tabShape[k][i].Left + tabShape[k][i].Width) and
        (tabBall[k].Left > tabShape[k][i].left) and
        ((tabBall[k].top + (tabBall[k].Height div 2)) >= tabShape[k][i].Top) and
        (tabBall[k].top + (tabBall[k].Height / 2) <= tabShape[k][i].Top +
        tabShape[k][i].Height) then
      begin
        tabShape[k][i].top := 1000;
        increaseScore();
        if activebonusthor = False then
          right := True;
        PlaySound(DIRECTORY_SOUND + '/' + SOUND_BRICK_BREAK, psAsync);
      end;

    end;

  end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin

  tabLabel[k][3].Caption := 'SCORE: ' + IntToStr(score);
  if playingPart = True then
  begin
    //ball crashed
    if (tabBall[k].top > tabBarre[k].top + 25) and (comptvie = 0) then
    begin
      timer9.Enabled := True;
      LabelFinalScore.Caption := 'SCORE : ' + IntToStr(score);
      tabLabel[k][6].Caption := 'GAME OVER';
      tabLabel[k][6].Left := tabLabel[k][6].left - 50; //??
    end;
  end;

  if tabLabel[k][6].left < 500 then
    playingPart := False;
  for i := 1 to Length(tabShape[k]) do
  begin
    if tabShape[k][i].top < 500 then
      compt := compt + 1;
  end;
  if (compt = 0) and (playingPart = True) then
  begin
    timer1.Enabled := False;
    timer9.Enabled := True;
    LabelFinalScore.Caption := 'SCORE : ' + IntToStr(score);
    tabLabel[k][6].Caption := 'CONGRATULATION';
    tabLabel[k][6].left := tabLabel[k][6].left - 50;
    //sound win
    randomize;
    choosenSound := random(NUMBER_OF_SOUND_WIN) + 1;
    PlaySound(IntToStr(choosenSound) + '.wav', psASync);
  end;
  compt := 0;
  if stop = False then
  begin
    tabLabel[k][5].Left := tabLabel[k][5].left - 50;
    timer4.interval := 1;
  end;

  if (tabLabel[k][5].left > 270) and (bonusvie = True) and (av = 1) then
    tabLabel[k][5].Left := tabLabel[k][5].left - 50;
  if (tabLabel[k][5].left <= 270) and (stop) then
  begin
    timer4.interval := 3000;
    stop := False;
  end;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin

  if (bonuslong = True) and (al = 0) then
  begin
    tabLabel[k][1].Caption := 'press a to take the special bar bonus';
    al := al + 1;
  end;
  if (bonusvie = True) and (av = 0) then
  begin
    tabLabel[k][5].font.color := clmaroon;
    tabLabel[k][5].Caption := ' you have a special life bonus';
    av := av + 1;
  end;
  if (bonusthor = True) and (dv = 0) then
  begin
    tabLabel[k][2].Caption := 'you have a ball''s thor bonus ,press a to take it';
    dv := dv + 1;
  end;
  case a of
    14: tabLabel[k][1].font.Color := clgreen;
    10: tabLabel[k][1].font.Color := clblue;
    7: tabLabel[k][1].font.Color := clyellow;
    1: tabLabel[k][1].font.Color := clred

  end;
  if growsize then
    tabLabel[k][1].font.size := tabLabel[k][1].font.size + 1;
  if tabLabel[k][1].font.size >= 30 then
    tabLabel[k][1].font.size := 15;
end;


procedure TForm1.Timer6Timer(Sender: TObject);
begin
  //Affichage des durrées des bonus
  if ((tabBarre[k].Width = 300) and (activebonusthor = True)) then
  begin
    tabLabel[k][1].left := 680;
    tabLabel[k][1].Caption := 'TIME BONUS : ' + IntToStr(a) +
      ' (long) | ' + IntToStr(timebonusthor) + ' (thor)';
  end
  else
  if (tabBarre[k].Width = 300) then
  begin
    tabLabel[k][1].left := 680;
    tabLabel[k][1].Caption := 'TIME BONUS : ' + IntToStr(a);
  end
  else
  if (activebonusthor = True) then
  begin
    tabLabel[k][6].left := 680;
    tabLabel[k][6].Caption := 'TIME BONUS : ' + IntToStr(timebonusthor);
  end;

  //BonusLong countdown
  if tabBarre[k].Width = 300 then
  begin
    a := a - 1;

    if a = -1 then
    begin
      tabBarre[k].Width := longbarre;
      tabLabel[k][1].Caption := '';
    end;
  end;
  //BonusThor countdown
  if activebonusthor = True then
  begin
    timebonusthor := timebonusthor - 1;

    if timebonusthor = -1 then
    begin
      activebonusthor := False;
    end;
    case timebonusthor of
      9: tabBall[k].brush.color := clgreen;
      8: tabBall[k].brush.color := clblue;
      7: tabBall[k].brush.color := clyellow;
      6: tabBall[k].brush.color := clred;
      5: tabBall[k].brush.color := clgreen;
      4: tabBall[k].brush.color := clred;
      3: tabBall[k].brush.color := clblue;
      2: tabBall[k].brush.color := clred;
      1: tabBall[k].brush.color := clolive;
      0: tabBall[k].brush.color := clred;
    end;
  end;
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
  if (playoops = True) and (c = 0) then
  begin
    //sound lose
    randomize;
    choosenSound := random(NUMBER_OF_SOUND_LOSE) + 1;
    PlaySound(IntToStr(choosenSound) + '.wav', psASync);
    c := c + 1;
    playoops := False;
    timer7.interval := 5000;
  end;

end;


procedure TForm1.Timer8Timer(Sender: TObject);
begin

  if (stopbonusthor = False) and (bonusthor) then
  begin
    timer8.Interval := 1;
    tabLabel[k][2].left := tabLabel[k][2].left - 50;
  end;
  if (tabLabel[k][2].left > 250) and (bonusthor) and (dv = 1) then
  begin
    tabLabel[k][2].left := tabLabel[k][2].left - 50;
    if (tabLabel[k][2].left <= 250) and (stopbonusthor) then
    begin
      timer8.interval := 3000;
      stopbonusthor := False;
    end;
  end;

end;

procedure TForm1.Timer9Timer(Sender: TObject);
begin
  if time = 3 then
  begin
    PanelScore.top := 160;
    PanelScore.left := 384;
    if k = 1 then
      panel2.top := 1000;
    if k = 2 then
      panel3.top := 1000;
    if k = 3 then
      panel4.top := 1000;
    if k = 4 then
      panel5.top := 1000;
    if k = 5 then
      panel6.top := 1000;
  end;
  time := time + 1;
end;

procedure TForm1.PlaySound(szSoundFilepath: string; fPlayStyle: TPlayStyle);
var
  flags: word;
  szNonWindowsPlayCommand: string;
begin
  if (FileExists(szSoundFilepath)) then
  begin
    szNonWindowsPlayCommand := '';
    {$IFDEF WINDOWS}
    if fPlayStyle = psASync then
      flags := SND_ASYNC or SND_NODEFAULT
    else
      flags := SND_SYNC or SND_NODEFAULT;
    try
      sndPlaySound(PChar(szSoundFilepath), flags);
    except
      On E: Exception do
        E.CreateFmt(C_UnableToPlay + '%s Message:%s',
          [szSoundFilepath, E.Message]);
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
        SoundPlayerAsyncProcess.CurrentDirectory := ExtractFileDir(szSoundFilepath);
        SoundPlayerAsyncProcess.Executable :=
          FindDefaultExecutablePath(Copy2Space(szNonWindowsPlayCommand));
        SoundPlayerAsyncProcess.Parameters.Clear;
        SoundPlayerAsyncProcess.Parameters.Add(ExtractFileName(szSoundFilepath));
        try
          SoundPlayerAsyncProcess.Execute;
        except
          On E: Exception do
            E.CreateFmt('Playstyle=paASync: ' + C_UnableToPlay +
              '%s Message:%s', [szSoundFilepath, E.Message]);
        end;
      end
      else
      begin
        if SoundPlayerSyncProcess = nil then
          SoundPlayerSyncProcess := Tprocess.Create(nil);
        SoundPlayerSyncProcess.CurrentDirectory := ExtractFileDir(szSoundFilepath);
        SoundPlayerSyncProcess.Executable :=
          FindDefaultExecutablePath(Copy2Space(szNonWindowsPlayCommand));
        SoundPlayersyncProcess.Parameters.Clear;
        SoundPlayerSyncProcess.Parameters.Add(ExtractFileName(szSoundFilepath));
        try
          SoundPlayerSyncProcess.Execute;
          SoundPlayersyncProcess.WaitOnExit;
        except
          On E: Exception do
            E.CreateFmt('Playstyle=paSync: ' + C_UnableToPlay +
              '%s Message:%s', [szSoundFilepath, E.Message]);
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


procedure TForm1.PlayRandomedSound(DIRECTORY_NAME: string; NUMBER_OF_SOUND: integer; fPlayStyle: TPlayStyle);
begin
  if (DIRECTORY_NAME <> '') and (NUMBER_OF_SOUND > 0) then
  begin
    randomize;
    choosenSound := random(NUMBER_OF_SOUND) + 1;
    filePath := DIRECTORY_SOUND + '/' + DIRECTORY_NAME + '/' +
    IntToStr(choosenSound) + '.wav';
    PlaySound(filePath, fPlayStyle);
  end;
end;

procedure TForm1.IncreaseScore();
begin
  score := score + 1;
  tabLabel[k][3].Caption := 'Score: ' + IntToStr(score);
end;


procedure TForm1.TakeOneLife();
begin
  if(comptvie > 0) then
  begin
      comptvie := comptvie - 1;
      tabLabel[k][4].Caption := IntToStr(comptvie);
  end;
end;

procedure TForm1.ShowScore();
begin
     tabPanel[k].Top := MAX_TOP;
     LabelFinalScore.Width := 10;
     LabelFinalScore.AutoSize:= TRUE;
     LabelFinalScore.Caption := 'Score: ' + IntToStr(score) + ' ';
     PanelScore.Left := (Form1.width div 2) - (PanelScore.Width div 2);
     PanelScore.Top := (Form1.Height div 2) - (PanelScore.Height div 2);
end;


procedure TForm1.WaitAndShowScore();
var
  iterator : integer;
begin
     //faire_pause_3_secondes
     iterator := 0;
     while((iterator < 10) AND (array10ProcedurePointers[iterator] <> nil)) do
         iterator := iterator + 1;
     if(iterator > 9) then //nil posiion not found else found
         iterator := 0;
     array10ProcedurePointers[iterator] := @ShowScore;
     array10Chrono[iterator] := -1;
     array10DelayNSeconds[iterator] := 3;

     if(not(Timer13.Enabled)) then
         Timer13.Enabled := True;

end;


//Réalise les translations vers la gauche des labels à l'aide du Timer12
function TForm1.LeftTranslation(labeel: TLabel; startPoint: integer; endPoint: integer; duration: integer): integer;
var
  step: integer;
begin
    if (startPoint > endPoint) AND (duration > LEFT_TRANSLATION_STEP_DURATION) then
    begin
        // Quel pas pour la durée de base définie en fonction de la vitesse donnée en entrée?
        step := (LEFT_TRANSLATION_STEP_DURATION * (startPoint - endPoint)) div duration;

        // rendre effective le déplacement à l'aide du timer12 dédié au LeftTranslation de labels et les données ci-dessous transmises globalement
        iterator := 0;
        while((iterator < 10) AND (array10Labels[iterator] <> nil)) do
        begin
             iterator := iterator + 1 ;
        end;
        if(iterator > 9) then //null item not found else found
            iterator := 0;
        array10Labels[iterator] := labeel;
        array10LTStartPoint[iterator] := startPoint;
        array10LTEndPoint[iterator] := endPoint;
        array10LTStep[iterator] := step;
        array10LTDuration[iterator] := duration;
        //si la translation termine, le label doit être vidé du tableau des labels


        if(Timer12.Enabled = False) then
             Timer12.Enabled:= True;

        LeftTranslation := iterator;


    end;
end;


end.
