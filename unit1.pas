unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus, LCLType,
  //For playing sound
  FileUtil{$IFDEF WINDOWS},mmsystem{$ELSE},asyncprocess,process{$ENDIF}, ExtendedTabControls, uplaysound, StrUtils;

type

  //For playing  sound
  TPlayStyle = (psAsync, psSync);

  TProcedurePointer = procedure of object;

  { TForm1 }

  TForm1 = class(TForm)
    EditSurname: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    LabelCloseCommands: TLabel;
    LabelHowToPlay: TLabel;
    Label16: TLabel;
    LabelBonusMessage7: TLabel;
    LabelBonusThor7: TLabel;
    LabelEnd7: TLabel;
    LabelHeader: TLabel;
    LabelBonusMessage6: TLabel;
    LabelBonusThor6: TLabel;
    LabelEnd6: TLabel;
    LabelPlayer5: TLabel;
    LabelPlayer4: TLabel;
    LabelPlayer3: TLabel;
    LabelPlayer2: TLabel;
    LabelPlayer1: TLabel;
    LabelLevel: TLabel;
    LabelPlayer6: TLabel;
    LabelPlayer7: TLabel;
    Labelscore6: TLabel;
    Labelscore7: TLabel;
    LabelStart1: TLabel;
    LabelBonusThor1: TLabel;
    LabelFinalScore: TLabel;
    LabelMenu: TLabel;
    LabelQuit: TLabel;
    Label15: TLabel;
    LabelRestart: TLabel;
    LabelStart6: TLabel;
    LabelStart7: TLabel;
    LabelVie4: TLabel;
    LabelVie5: TLabel;
    Labelscore5: TLabel;
    LabelEnd5: TLabel;
    LabelStart5: TLabel;
    LabelBonusThor5: TLabel;
    Labelscore4: TLabel;
    LabelBonusThor4: TLabel;
    LabelStart4: TLabel;
    LabelEnd4: TLabel;
    LabelVie2: TLabel;
    LabelStart2: TLabel;
    labelVie3: TLabel;
    LabelEnd2: TLabel;
    LabelBonusMessage2: TLabel;
    LabelBonusThor2: TLabel;
    LabelBonusMessage4: TLabel;
    LabelEasy: TLabel;
    LabelBonusMessage5: TLabel;
    LabelStart3: TLabel;
    LabelEnd3: TLabel;
    LabelBonusMessage3: TLabel;
    LabelBonusThor3: TLabel;
    LabelNormal: TLabel;
    LabelHard: TLabel;
    Labelscore1: TLabel;
    LabelVie1: TLabel;
    LabelEnd1: TLabel;
    LabelBonusMessage1: TLabel;
    Labelscore2: TLabel;
    Labelscore3: TLabel;
    labelVie6: TLabel;
    labelVie7: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    PanelMenu: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    PanelCommands: TPanel;
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
    Shape123: TShape;
    Shape124: TShape;
    Shape125: TShape;
    Shape126: TShape;
    Shape127: TShape;
    Shape128: TShape;
    Shape129: TShape;
    Shape130: TShape;
    Shape131: TShape;
    Shape132: TShape;
    Shape133: TShape;
    Shape134: TShape;
    Shape135: TShape;
    Shape136: TShape;
    Shape137: TShape;
    Shape138: TShape;
    Shape139: TShape;
    Shape140: TShape;
    Shape141: TShape;
    Shape142: TShape;
    Shape143: TShape;
    Shape144: TShape;
    Shape145: TShape;
    Shape146: TShape;
    Shape147: TShape;
    Shape148: TShape;
    Shape149: TShape;
    Shape150: TShape;
    Shape151: TShape;
    Shape152: TShape;
    Shape153: TShape;
    Shape154: TShape;
    Shape155: TShape;
    Shape156: TShape;
    Shape157: TShape;
    Shape158: TShape;
    Shape159: TShape;
    Shape160: TShape;
    Shape161: TShape;
    Shape162: TShape;
    Shape163: TShape;
    Shape164: TShape;
    Shape165: TShape;
    Shape166: TShape;
    Shape167: TShape;
    Shape168: TShape;
    Shape169: TShape;
    Shape170: TShape;
    Shape171: TShape;
    Shape172: TShape;
    Shape173: TShape;
    Shape174: TShape;
    Shape175: TShape;
    Shape176: TShape;
    Shape177: TShape;
    Shape178: TShape;
    Shape179: TShape;
    Shape180: TShape;
    Shape181: TShape;
    Shape182: TShape;
    Shape183: TShape;
    Shape184: TShape;
    Shape185: TShape;
    Shape186: TShape;
    Shape187: TShape;
    Shape188: TShape;
    Shape189: TShape;
    Shape190: TShape;
    Shape191: TShape;
    Shape192: TShape;
    Shape193: TShape;
    Shape194: TShape;
    Shape195: TShape;
    Shape196: TShape;
    Shape197: TShape;
    Shape198: TShape;
    Shape199: TShape;
    Shape200: TShape;
    Shape201: TShape;
    Shape202: TShape;
    Shape203: TShape;
    Shape204: TShape;
    Shape205: TShape;
    Shape206: TShape;
    Shape207: TShape;
    Shape208: TShape;
    Shape209: TShape;
    Shape210: TShape;
    Shape211: TShape;
    Shape212: TShape;
    Shape213: TShape;
    Shape214: TShape;
    Shape215: TShape;
    Shape216: TShape;
    Shape217: TShape;
    Shape218: TShape;
    Shape219: TShape;
    Shape220: TShape;
    Shape221: TShape;
    Shape222: TShape;
    Shape223: TShape;
    Shape224: TShape;
    Shape225: TShape;
    Shape226: TShape;
    Shape227: TShape;
    Shape228: TShape;
    Shape229: TShape;
    Shape230: TShape;
    Shape231: TShape;
    Shape232: TShape;
    Shape233: TShape;
    Shape234: TShape;
    Shape235: TShape;
    Shape236: TShape;
    Shape237: TShape;
    Shape238: TShape;
    Shape239: TShape;
    Shape240: TShape;
    Shape241: TShape;
    Shape242: TShape;
    Shapeball6: TShape;
    Shapeball7: TShape;
    Shapebarre5: TShape;
    Shapeball5: TShape;
    Shapebarre6: TShape;
    Shapebarre7: TShape;
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
    Shapelimit6: TShape;
    Shapelimit7: TShape;
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
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure LabelHowToPlayClick(Sender: TObject);
    procedure LabelMenuClick(Sender: TObject);
    procedure LabelQuitClick(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure LabelRestartClick(Sender: TObject);
    procedure LabelNormalClick(Sender: TObject);
    procedure LabelHardClick(Sender: TObject);
    procedure LabelEasyClick(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
    procedure Timer12Timer(Sender: TObject);
    procedure Timer13Timer(Sender: TObject);
    procedure Timer1StartTimer(Sender: TObject);
    procedure Timer1StopTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2StartTimer(Sender: TObject);
    procedure Timer2StopTimer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4StartTimer(Sender: TObject);
    procedure Timer4StopTimer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7StartTimer(Sender: TObject);
    procedure Timer7StopTimer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8StartTimer(Sender: TObject);
    procedure Timer8StopTimer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure PlaySound(szSoundFilepath: string; fPlayStyle: TPlayStyle);
    procedure DestroyPlaySoundObject();
    procedure PlayRandomedSound(DIRECTORY_NAME: string; NUMBER_OF_SOUND: integer; fPlayStyle: TPlayStyle);
    procedure IncreaseScore();
    Procedure IncreaseLife();
    procedure TakeOneLife();
    procedure HideBonusMessage();
    procedure ShowScore();
    procedure WaitAndDo(delay: integer; procPtr: TProcedurePointer);
    Procedure FullReinitializing();
    Procedure PartialReinitializing();
    Procedure TopMoveGamePanelTo(t: integer);
    Procedure ReplaceTheSpecialOneBrick();
    Procedure Comment();
    Procedure PickNewPanelIndex();
    Procedure ChooseNewBonusBricks();
    function LeftTranslation(labeel: TLabel; startPoint: integer; endPoint: integer; duration: integer): integer;

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  up, right, limit_right, limit_left, zKeyBlocked : Boolean;
  BonusThorEvent, BonusThorTaken, BonusBarreEvent, BonusBarreTaken, BonusLifeEvent, BonusLifeTaken, LeftTranslated: Boolean;
  BarTouchSoundPlayed, FallingBallSoundPlayed, FallingBallEventOccured, GameOverOccured: boolean;
  aProcedureIsWaiting, VictoryEvent, AllBricksBroken, BarTopTouched, BarTouched, commentHeard : boolean;

  filePath: string;

  ball : TShape;
  bar : TShape;

  s: array of TShape;
  s1: array of TShape;
  s2: array of TShape;
  s3: array of TShape;
  s4: array of TShape;
  s5: array of TShape;
  s6: array of TShape;
  tabShape: array[1..7] of array of TShape;
  tabPanel: array[1..7] of Tpanel;
  tab: array of integer;
  tabSave: array[1..7] of array of integer;
  //table which record initial position of all bricks (TShapes) before game start
  tabBarre: array[1..7] of TShape;
  tabBall: array[1..7] of TShape;
  tabLimit: array[1..7] of TShape;
  tabLabel: array[1..7, 1..8] of TLabel;
  tabPositions: array[1..7, 1..2, 1..2] of integer;
  choosenSound, i, j, iT7, iT8, timeAllowedToBonusThor, numeroBrickBonusThor, timeAllowedToBonusBarre, numeroBrickBonusBarre: integer;
  comptvie, k, t, lastChoosenPanelIndex, numeroBrickBonusLife: integer;
  longbarre, bonusBarreLong, numberOfBricksConsecutivelyBroken: integer;
  score, compt, jumpbar, jumpbal, initialBallColor, initialBrickColor, initialBarreColor: integer;

  array10Labels: array[0..9] of TLabel;
  iterator, iteratorTimer12, LTGameOverLabelIndex, LTVictoryLabelIndex, iteratorTimer13 : integer;

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

  NUMBER_OF_GAME_PANELS = 7;
  NUMBER_OF_SOUND_WIN = 2;
  NUMBER_OF_SOUND_LOSE = 7;
  NUMBER_OF_SOUND_START = 2;
  NUMBER_OF_SOUND_QUIT = 3;
  NUMBER_OF_SOUND_GComment = 5;
  C_UnableToPlay = 'Unable to play ';
  DIRECTORY_NAME_WIN = 'win';
  DIRECTORY_NAME_LOSE = 'lose';
  DIRECTORY_NAME_START = 'start';
  DIRECTORY_NAME_QUIT = 'quit';
  DIRECTORY_NAME_GComment = 'GoodComment';
  DIRECTORY_SOUND = 'sounds';
  SOUND_BAR_TOUCH = 'BarTouch.wav';
  SOUND_BRICK_BREAK ='BrickBreak.wav';
  SOUND_BARRE_BONUS = 'BarBonus.wav';
  SOUND_LIFE_BONUS = 'LifeBonus.wav';
  SOUND_THOR_BONUS = 'ThorBonus.wav';
  SOUND_FALLING_BALL = 'Fall.wav';
  SOUND_NOT_MUCH_TIME_LEFT = 'NotMuchTimeLeft.wav';
  MAX_LEFT = 1500; MAX_TOP = 1000;
  LEFT_TRANSLATION_STEP_DURATION = 100;
  BARRE_ALTITUDE = 100;
  MARGIN_TOP = 20; MARGIN = 20;
  BONUS_BRICK_THOR_COLOR_1 = clRed;
  BONUS_BRICK_THOR_COLOR_2 = clMaroon;
  BONUS_BRICK_BARRE_COLOR_1 = clAqua;
  BONUS_BRICK_BARRE_COLOR_2 = clBlue;
  BONUS_BRICK_LIFE_COLOR_1 = clLime;
  BONUS_BRICK_LIFE_COLOR_2 = clGreen;
  TIME_BONUS_THOR = 7;
  TIME_BONUS_BARRE = 10;
  MIN_REQUIRED_FOR_COMMENT = 6;

  // Defined in mmsystem
  SND_SYNC = 0;
  SND_ASYNC = 1;
  SND_NODEFAULT = 2;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  //initialize variables declared at top


  setLength(s, 25);
  setLength(s1, 33);
  setLength(s2, 48);
  setLength(s3, 46);
  setLength(s4, 42);
  setLength(s5, 47);
  setLength(s6, 1);
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
  s[21] := shape123;
  s[22] := shape124;
  s[23] := shape125;
  s[24] := shape126;
  s[25] := shape127;
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
  s1[21] := shape128;
  s1[22] := shape129;
  s1[23] := shape130;
  s1[24] := shape131;
  s1[25] := shape132;
  s1[26] := shape133;
  s1[27] := shape134;
  s1[28] := shape135;
  s1[29] := shape136;
  s1[30] := shape137;
  s1[31] := shape138;
  s1[32] := shape139;
  s1[33] := shape140;

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
  s2[21] := shape141;
  s2[22] := shape142;
  s2[23] := shape143;
  s2[24] := shape144;
  s2[25] := shape145;
  s2[26] := shape146;
  s2[27] := shape147;
  s2[28] := shape148;
  s2[29] := shape149;
  s2[30] := shape150;
  s2[31] := shape151;
  s2[32] := shape152;
  s2[33] := shape153;
  s2[34] := shape154;
  s2[35] := shape155;
  s2[36] := shape156;
  s2[37] := shape157;
  s2[38] := shape158;
  s2[39] := shape159;
  s2[40] := shape160;
  s2[41] := shape161;
  s2[42] := shape162;
  s2[43] := shape163;
  s2[44] := shape164;
  s2[45] := shape165;
  s2[46] := shape166;
  s2[47] := shape167;
  s2[48] := shape168;
  tabPanel[1] := panel2;
  tabPanel[2] := panel3;
  tabPanel[3] := panel4;
  tabPanel[4] := panel5;
  tabPanel[5] := panel6;
  tabPanel[6] := panel7;
  tabPanel[7] := Panel8;
  tabBarre[1] := shapeBarre1;
  tabBarre[2] := shapeBarre2;
  tabBarre[3] := shapeBarre3;
  tabBarre[4] := shapeBarre4;
  tabBarre[5] := shapeBarre5;
  tabBarre[6] := shapeBarre6;
  tabBarre[7] := shapeBarre7;
  tabBall[1] := Shapeball1;
  tabBall[2] := Shapeball2;
  tabBall[3] := Shapeball3;
  tabBall[4] := Shapeball4;
  tabBall[5] := Shapeball5;
  tabBall[6] := Shapeball6;
  tabBall[7] := Shapeball7;
  tabLimit[1] := ShapeLimit1;
  tabLimit[2] := ShapeLimit2;
  tabLimit[3] := ShapeLimit3;
  tabLimit[4] := ShapeLimit4;
  tabLimit[5] := ShapeLimit5;
  tabLimit[6] := ShapeLimit6;
  tabLimit[7] := ShapeLimit7;
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
  s3[21] := shape169;
  s3[22] := shape170;
  s3[23] := shape171;
  s3[24] := shape172;
  s3[25] := shape173;
  s3[26] := shape174;
  s3[27] := shape175;
  s3[28] := shape176;
  s3[29] := shape177;
  s3[30] := shape178;
  s3[31] := shape179;
  s3[32] := shape180;
  s3[33] := shape181;
  s3[34] := shape182;
  s3[35] := shape183;
  s3[36] := shape184;
  s3[37] := shape185;
  s3[38] := shape186;
  s3[39] := shape187;
  s3[40] := shape188;
  s3[41] := shape189;
  s3[42] := shape190;
  s3[43] := shape191;
  s3[44] := shape192;
  s3[45] := shape193;
  s3[46] := shape194;
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
  s5[1] := shape195;
  s5[2] := shape196;
  s5[3] := shape197;
  s5[4] := shape198;
  s5[5] := shape199;
  s5[6] := shape200;
  s5[7] := shape201;
  s5[8] := shape202;
  s5[9] := shape203;
  s5[10] := shape204;
  s5[11] := shape205;
  s5[12] := shape206;
  s5[13] := shape207;
  s5[14] := shape208;
  s5[15] := shape209;
  s5[16] := shape210;
  s5[17] := shape211;
  s5[18] := shape212;
  s5[19] := shape213;
  s5[20] := shape214;
  s5[21] := shape215;
  s5[22] := shape216;
  s5[23] := shape217;
  s5[24] := shape218;
  s5[25] := shape219;
  s5[26] := shape220;
  s5[27] := shape221;
  s5[28] := shape222;
  s5[29] := shape223;
  s5[30] := shape224;
  s5[31] := shape225;
  s5[32] := shape226;
  s5[33] := shape227;
  s5[34] := shape228;
  s5[35] := shape229;
  s5[36] := shape230;
  s5[37] := shape231;
  s5[38] := shape232;
  s5[39] := shape233;
  s5[40] := shape234;
  s5[41] := shape235;
  s5[42] := shape236;
  s5[43] := shape237;
  s5[44] := shape238;
  s5[45] := shape239;
  s5[46] := shape240;
  s5[47] := shape241;
  s6[1] := shape242; //ALHAMDOULILLAH
  tabShape[1] := s;
  tabShape[2] := s1;
  tabShape[3] := s2;
  tabShape[4] := s3;
  tabShape[5] := s4;
  tabShape[6] := s5;
  tabShape[7] := s6;
  tabLabel[1][1] := LabelBonusMessage1; //for bonus message
  tabLabel[1][2] := LabelBonusThor1; //for bonus thor
  tabLabel[1][3] := Labelscore1; //for score
  tabLabel[1][4] := LabelVie1; //for life
  tabLabel[1][5] := LabelStart1; //for start
  tabLabel[1][6] := LabelEnd1; //for end
  tabLabel[1][7] := LabelPlayer1; //for player Name
  tabLabel[2][1] := LabelBonusMessage2; //for bonus message
  tabLabel[2][2] := LabelBonusThor2; //for bonus thor
  tabLabel[2][3] := Labelscore2; //for score
  tabLabel[2][4] := LabelVie2; //for life
  tabLabel[2][5] := LabelStart2; //for start
  tabLabel[2][6] := LabelEnd2; //for end
  tabLabel[2][7] := LabelPlayer2; //for player Name
  tabLabel[3][1] := LabelBonusMessage3; //for bonus message
  tabLabel[3][2] := LabelBonusThor3; //for bonus thor
  tabLabel[3][3] := labelscore3; //for score
  tabLabel[3][4] := labelVie3; //for life
  tabLabel[3][5] := LabelStart3; //for start
  tabLabel[3][6] := LabelEnd3; //for end
  tabLabel[3][7] := LabelPlayer3; //for player Name
  tabLabel[4][1] := LabelBonusMessage4; //for bonus message
  tabLabel[4][2] := LabelBonusThor4; //for bonus thor
  tabLabel[4][3] := labelscore4; //for score
  tabLabel[4][4] := LabelVie4; //for life
  tabLabel[4][5] := LabelStart4; //for start
  tabLabel[4][6] := LabelEnd4; //for end
  tabLabel[4][7] := LabelPlayer4; //for player Name
  tabLabel[5][1] := LabelBonusMessage5; //for bonus message
  tabLabel[5][2] := LabelBonusThor5; //for bonus thor
  tabLabel[5][3] := labelscore5; //for score
  tabLabel[5][4] := LabelVie5; //for life
  tabLabel[5][5] := LabelStart5; //for start
  tabLabel[5][6] := LabelEnd5; //for end
  tabLabel[5][7] := LabelPlayer5; //for player Name
  tabLabel[6][1] := LabelBonusMessage6; //for bonus message
  tabLabel[6][2] := LabelBonusThor6; //for bonus thor
  tabLabel[6][3] := labelscore6; //for score
  tabLabel[6][4] := LabelVie6; //for life
  tabLabel[6][5] := LabelStart6; //for start
  tabLabel[6][6] := LabelEnd6; //for end
  tabLabel[6][7] := LabelPlayer6; //for player Name
  tabLabel[7][1] := LabelBonusMessage7; //for bonus message
  tabLabel[7][2] := LabelBonusThor7; //for bonus thor
  tabLabel[7][3] := labelscore7; //for score
  tabLabel[7][4] := LabelVie7; //for life
  tabLabel[7][5] := LabelStart7; //for start
  tabLabel[7][6] := LabelEnd7; //for end
  tabLabel[7][7] := LabelPlayer7; //for player Name


  for k := 1 to NUMBER_OF_GAME_PANELS do
  begin
    tabPanel[k].Top := MAX_TOP;
  end;

  for k := 1 to NUMBER_OF_GAME_PANELS do
  begin
       for iterator := 1 to 7 do
      begin
          tabLabel[k][iterator].AutoSize := True;
      end;
  end;

  for k := 1 to NUMBER_OF_GAME_PANELS do
  begin
    setLength(tab, Length(tabShape[k]));
  //  ShowMessage(Length(tabShape[k]).ToString);
    for t := 1 to Length(tabShape[k]) do
    begin
      //ShowMessage('k:'+k.ToString + ' t:'+t.ToString + tabShape[k][t].Top.ToString);
      tab[t] := tabShape[k][t].Top;
    end;

    tabSave[k] := tab;
  end;


  //set panelMenu positions
   PanelMenu.Top := (Form1.Height div 2) - (PanelMenu.Height div 2);
   PanelMenu.Left := (Form1.Width div 2) - (PanelMenu.Width div 2);


  //timers
  Timer1.Enabled := FALSE;
  Timer2.Enabled := FALSE;
  Timer3.Enabled := FALSE;
  Timer4.Enabled := FALSE;
  Timer5.Enabled := FALSE;
  Timer6.Enabled := FALSE;
  Timer7.Enabled := FALSE;
  Timer11.Enabled := FALSE;
  Timer12.Enabled := FALSE;
  Timer13.Enabled := FALSE;
  Timer9.Enabled := FALSE;
  Timer8.Enabled := FALSE;

  //bars & balls initial positions
  for iterator := 1 to NUMBER_OF_GAME_PANELS do
  begin
    tabBarre[iterator].Left := tabPanel[iterator].Left + (tabPanel[iterator].width div 2) - (tabBarre[iterator].width div 2);
    tabBall[iterator].Left := tabPanel[iterator].Left + (tabPanel[iterator].Width div 2) - (tabBall[iterator].width div 2);
    tabBarre[iterator].Top := tabPanel[iterator].Top + (tabPanel[iterator].Height) - tabBarre[iterator].Height - BARRE_ALTITUDE;
    //Depending of the barre's Top
    tabBall[iterator].Top := tabBarre[iterator].Top - tabBall[iterator].Height;
  end;



  //Score and life labels static positions. As well as shapeLimits & ...
  for iterator := 1 to NUMBER_OF_GAME_PANELS do
  begin
    tabLabel[iterator][1].Font.Size:= 30;
    tabLabel[iterator][3].Font.Size:= 20;
    tabLabel[iterator][4].Font.Size:= 20;
    tabLabel[iterator][5].Font.Size:= 40;
    tabLabel[iterator][6].Font.Size:= 60;
    tabLabel[iterator][7].Font.Size:= 25;


    tabLabel[iterator][1].Caption := ''; tabLabel[iterator][2].Caption := ''; tabLabel[iterator][5].Caption := ''; tabLabel[iterator][6].Caption := '';
    tabLabel[iterator][1].Caption := 'Bonus x Activated for '+TIME_BONUS_BARRE.ToString+'s';
    tabLabel[iterator][3].Caption := 'SCORE: 0';
    tabLabel[iterator][4].Caption := 'LIFE: 2';
    tabLabel[iterator][5].Caption := 'Press Z to start';
    tabLabel[iterator][6].Caption := 'Gameover';
    tabLabel[iterator][7].Caption := 'PLAYER: Unknown';


    //DEPENDANT TOP ORDER
    tabLabel[iterator][3].Top := tabPanel[iterator].Top + MARGIN_TOP;
    tabLabel[iterator][4].Top := tabLabel[iterator][3].Top + tabLabel[iterator][3].Height + MARGIN_TOP;

    tabLimit[iterator].Top := tabLabel[iterator][4].Top + tabLabel[iterator][4].Height + (2*MARGIN_TOP);

    tabLabel[iterator][1].Top := (tabLimit[iterator].Top div 2) - (tabLabel[iterator][1].Height div 2);
    tabLabel[iterator][5].Top := (tabLimit[iterator].Top div 2) - (tabLabel[iterator][5].Height div 2);// - MAX_TOP;
    tabLabel[iterator][6].Top := ((tabPanel[iterator].Top + tabPanel[iterator].Height) div 2) - (tabLabel[iterator][6].Height div 2);// - MAX_TOP;
    tabLabel[iterator][7].Top := (tabLimit[iterator].Top div 2) - (tabLabel[iterator][7].Height div 2);// - MAX_TOP;

    //Left
    tabLimit[iterator].Left := tabPanel[iterator].Left;
    tabLimit[iterator].Width := tabPanel[iterator].Width;
    tabLimit[iterator].Height := MARGIN_TOP;

    tabLabel[iterator][1].Left := MAX_LEFT;

    tabLabel[iterator][3].Left := tabPanel[iterator].Left + tabPanel[iterator].Width - tabLabel[iterator][3].Width - (3*MARGIN);
    tabLabel[iterator][4].Left := tabLabel[iterator][3].Left;
    tabLabel[iterator][5].Left := (tabPanel[iterator].Width div 2) - (tabLabel[iterator][5].Width div 2);
    tabLabel[iterator][6].Left := MAX_LEFT;
    tabLabel[iterator][7].Left := tabPanel[iterator].Left + MARGIN;

  end;


  //init all Array10 Object's Arrays
  for iterator := 0 to 9 do
  begin
    array10Labels[iterator]:= nil;
    array10ProcedurePointers[iterator] := nil;
  end;


  //meta variables
  KeyPreview := True;
  zKeyBlocked := True;
  EditSurname.Text := '';
  Timer12.Interval := LEFT_TRANSLATION_STEP_DURATION;
  limit_right := FALSE;
  limit_left := False;


  //variables changing after Z key pressed
  score := 0;
  comptvie := 2;
  k := 1;
  lastChoosenPanelIndex := k;
  BonusThorEvent := False;
  BonusThorTaken := False;
  timeAllowedToBonusThor := TIME_BONUS_THOR;
  numeroBrickBonusThor := -1;
  BonusBarreEvent := False;
  BonusBarreTaken := False;
  timeAllowedToBonusBarre := TIME_BONUS_BARRE;
  numeroBrickBonusBarre := -1;
  bonusBarreLong := Form1.Width div 3;
  numeroBrickBonusLife := -1;
  BarTopTouched := FALSE;
  BarTouched := FALSE;
  commentHeard := FALSE;
  numberOfBricksConsecutivelyBroken := 0;

end;


procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RIGHT) then //want to go right
  begin
    limit_left := False;
    if limit_right = False then
      tabBarre[k].Left := tabBarre[k].left + jumpbar;
  end
  else
  if (key = VK_LEFT) then //want to go to left
  begin
    limit_right := False;
    if limit_left = False then
      tabBarre[k].Left := tabBarre[k].left - jumpbar;
  end
end;

procedure TForm1.FormKeyPress(Sender: TObject; var key: char);
begin
  if (key = 'q') OR (key = 'Q') then //want to quit
  begin
       if(tabPanel[k].Top <= 100) then //Playing a part
       begin
           ShowScore();
           FullReinitializing();
       end;
  end
  else
  if (key = 'z') OR (key = 'Z') then //want to start game
  begin
    if zKeyBlocked = False then
    begin
      zKeyBlocked := True;

      ball := tabBall[k];
      bar := tabBarre[k];

      //sound start
      if score = 0 then
         PlayRandomedSound(DIRECTORY_NAME_START, NUMBER_OF_SOUND_START, psSync);

      //label start or continue
      tabLabel[k][5].Left := MAX_LEFT;

      //label vie
      TakeOneLife();

      //activer les timers
      timer1.Enabled := True;   //on fait tourner la balle sans considérer les briques
      timer3.Enabled := True;   //on fait tourner la balle en considérant uniquement les briques
      timer2.Enabled:= True; //Gère tout ce qui est relatif à la chute du ball au sol
      timer11.Enabled := True;  //on fait mouvoir la balle
      timer4.Enabled := True; //Attente de victoire
      Timer5.Enabled := True; //Check les bonus
      Timer6.Enabled := True; //Prends les chronos des bonus
      Timer7.Enabled := True; //Effets color bonus
      Timer9.Enabled := True; //Check limit bar on move

    end;
  end;

end;


procedure TForm1.LabelHowToPlayClick(Sender: TObject);
begin
  PanelMenu.Top := MAX_TOP;
  PanelCommands.Top := (Form1.Height div 2) - (PanelCommands.Height div 2);
  PanelCommands.Left := (Form1.Width div 2) - (PanelCommands.Width div 2);
end;


procedure TForm1.LabelMenuClick(Sender: TObject);
begin

  EditSurname.Enabled := TRUE; //To enable again changing Player Name
  PanelScore.Top := MAX_TOP;
  PanelMenu.Top := (Form1.Height div 2) - (PanelMenu.Height div 2);
  PanelMenu.Left := (Form1.Width div 2) - (PanelMenu.Width div 2);

end;

procedure TForm1.LabelQuitClick(Sender: TObject);
begin
  Destroy();
  application.terminate;
end;

procedure TForm1.Label15Click(Sender: TObject);
begin
  PanelCommands.Top := MAX_TOP;
  PanelMenu.Top := (Form1.Height div 2) - (PanelScore.Height div 2);
end;

procedure TForm1.LabelRestartClick(Sender: TObject);
begin
  // Reinit all variables eventually touched in the precedent game
  ChooseNewBonusBricks();
  PanelScore.Top := MAX_TOP;
  TopMoveGamePanelTo(0);
  zKeyBlocked := False;
  Timer9.Enabled := True; //Check limit for the bar

end;



procedure TForm1.LabelNormalClick(Sender: TObject);
begin
  EditSurname.Enabled := False; //For preventing him to catch the FormKeyressEvent
  zKeyBlocked := False;
  Timer9.Enabled := True; //Check limit for the bar

  PickNewPanelIndex(); //Choose a new k index

  if (Trim(EditSurname.Text).Length = 0)
  then
     tabLabel[k][7].Caption := 'PLAYER: Unknown'
  else
     tabLabel[k][7].Caption := 'PLAYER: '+EditSurname.Text;

  jumpbal := 6;
  jumpbar := 35;
  longbarre := 150;
  tabBarre[k].Width := longbarre;
  tabBarre[k].Left := tabPanel[k].Left + (tabPanel[k].width div 2) - (tabBarre[k].width div 2);


  ChooseNewBonusBricks();
  TopMoveGamePanelTo(0); //depend on k
  PanelMenu.top := 1000;
end;

procedure TForm1.LabelHardClick(Sender: TObject);
begin
  EditSurname.Enabled := False; //For preventing him to catch the FormKeyressEvent
  zKeyBlocked := False;
  Timer9.Enabled := True; //Check limit for the bar

  PickNewPanelIndex(); //Choose a new k index

  if (Trim(EditSurname.Text).Length = 0)
  then
     tabLabel[k][7].Caption := 'PLAYER: Unknown'
  else
     tabLabel[k][7].Caption := 'PLAYER: '+EditSurname.Text;

  jumpbal := 7;
  jumpbar := 45;
  longbarre := 100;
  tabBarre[k].Width := longbarre;
  tabBarre[k].Left := tabPanel[k].Left + (tabPanel[k].width div 2) - (tabBarre[k].width div 2);


  ChooseNewBonusBricks();
  TopMoveGamePanelTo(0); //depend on k
  PanelMenu.top := 1000;

end;


procedure TForm1.LabelEasyClick(Sender: TObject);
begin
  EditSurname.Enabled := False; //For preventing him to catch the FormKeyressEvent
  zKeyBlocked := False;
  Timer9.Enabled := True; //Check limit for the bar

  PickNewPanelIndex(); //Choose a new k index

  if (Trim(EditSurname.Text).Length = 0)
  then
     tabLabel[k][7].Caption := 'PLAYER: Unknown'
  else
     tabLabel[k][7].Caption := 'PLAYER: '+EditSurname.Text;

  jumpbal := 5;
  jumpbar := 30;
  longbarre := 193;
  tabBarre[k].Width := longbarre;
  tabBarre[k].Left := tabPanel[k].Left + (tabPanel[k].width div 2) - (tabBarre[k].width div 2);

  ChooseNewBonusBricks();
  TopMoveGamePanelTo(0); //depend on k
  PanelMenu.top := 1000;
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

procedure TForm1.Timer1StartTimer(Sender: TObject);
begin
  BarTopTouched := False;
  BarTouchSoundPlayed := False;
end;

procedure TForm1.Timer1StopTimer(Sender: TObject);
begin
  BarTopTouched := False;
  BarTouchSoundPlayed := False;
end;

procedure TForm1.Timer1Timer(Sender: TObject); //on fait tourner la balle sans considérer les briques
begin
  BarTopTouched := False;
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
         BarTopTouched := True;
         BarTouched := True;
    end
    else
    if ((tabBall[k].Left + tabBall[k].Width > tabBarre[k].Left) and
      (tabBall[k].Left < tabBarre[k].Left)) or
      ((tabBall[k].Left < tabBarre[k].Left + tabBarre[k].Width) and
      (tabBall[k].Left + tabBall[k].Width > tabBarre[k].Left + tabBarre[k].Width)) then //shapeBar top corner contact
    begin
         up := True;
         BarTopTouched := True;
         BarTouched := True;
    end;
  end
  else
  if (ball.Left + ball.Width >= bar.Left) and (ball.Left < bar.Left) and (ball.Top >= bar.Top) AND (ball.Top < bar.Top + bar.Height) then  //shapeBar right side contact
  begin
       right := FALSE;
       BarTouched := True;
  end
  else
  if (ball.Left <= bar.Left + bar.Width) and (ball.Left + ball.Width > bar.Left + bar.Width) and (ball.Top >= bar.Top) AND (ball.Top < bar.Top + bar.Height) then   //shapeBar left side contact
  begin
       right := TRUE;
       BarTouched := True;
  end;




  //conditions de changement de direction de la balle sur l'axe horizontal
  if tabBall[k].left <= tabpanel[k].Left then
    right := True
  else
  if tabBall[k].Left + tabBall[k].Width >= tabpanel[k].Left + tabpanel[k].Width then
    right := False;

  if(BarTopTouched AND not(BarTouchSoundPlayed)) then //for playing sound
  begin
     BarTouchSoundPlayed := True;
     PlaySound(DIRECTORY_SOUND + '/' +SOUND_BAR_TOUCH, psAsync);
     BarTouchSoundPlayed := False;
  end;

  if(BarTouched) then //for reinitializing parameters for Comment Sound
  begin
     numberOfBricksConsecutivelyBroken := 0;
     commentHeard := False;
     BarTouched := False;
  end;
end;


procedure TForm1.Timer2StartTimer(Sender: TObject);
begin
     FallingBallSoundPlayed := False;
     FallingBallEventOccured := False;
     GameOverOccured := False;
end;

procedure TForm1.Timer2StopTimer(Sender: TObject);
begin
     FallingBallSoundPlayed := False;
     FallingBallEventOccured := False;
     GameOverOccured := False;
end;

procedure TForm1.Timer2Timer(Sender: TObject); //Gère tout ce qui est relatif à la chute du ball au sol
begin
     //Falling Ball Sound Management
     if (FallingBallSoundPlayed = FALSE) then
     //la balle dépasse la barre
     if (tabBall[k].Top > tabBarre[k].Top + tabBarre[k].Height) then
     begin
       FallingBallSoundPlayed := TRUE;
       //Allumer le son falling Ball
       PlaySound(DIRECTORY_SOUND + '/' + SOUND_FALLING_BALL, psAsync);
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
            GameOverOccured := TRUE;

            //Allumer un son Game Over
            PlayRandomedSound(DIRECTORY_NAME_LOSE, NUMBER_OF_SOUND_LOSE, psAsync);

            //Déplacer le label 'Game Over' et le centrer
            tabLabel[k][6].Caption:= 'Game Over';
            LTGameOverLabelIndex := LeftTranslation(tabLabel[k][6], MAX_LEFT, tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][6].Width div 2), 2000);

            //faire-pause-3-secondes ET afficher-Score
            WaitAndDo(3, @ShowScore);

            //Attendre l'affichage du score POUR réinitialiser
            WaitAndDo(3, @FullReinitializing);
       end
       else
       //(comptvie > 0) recentrer ball and bar positions
       begin
           PartialReinitializing();
       end;
     end;

     //Désactivation du Timer
     if (FallingBallEventOccured AND not(GameOverOccured)) then
     begin
        zKeyBlocked := FALSE;
        Timer2.Enabled := FALSE;
        Timer1.Enabled := FALSE;
        Timer3.Enabled := FALSE;
     end
     else
     if (FallingBallEventOccured AND GameOverOccured) then
     begin
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
        Comment();
        if BonusThorEvent = False then
          up := False;
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
        Comment();
        if BonusThorEvent = False then
          up := True;
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
        Comment();
        if BonusThorEvent = False then
          right := False;
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
        Comment();
        if BonusThorEvent = False then
          right := True;
      end;

    end;

  end;
end;

procedure TForm1.Timer4StartTimer(Sender: TObject); //A chaque fois que ce timer est enabled alors qu'il était disabled
begin
  VictoryEvent := False;
end;

procedure TForm1.Timer4StopTimer(Sender: TObject);
begin
   VictoryEvent := False;
end;

procedure TForm1.Timer4Timer(Sender: TObject); //Gère l'événement VICTOIRE
begin
  if(VictoryEvent = False)
  then
  begin
    AllBricksBroken := True;
    for i:= 1 to Length(tabShape[k]) do
    begin
      if (tabShape[k][i].Top < tabpanel[k].Top + tabpanel[k].Height)
      then
      begin
        AllBricksBroken := False;
      end;
    end;

    if (AllBricksBroken)
    then
    begin
      VictoryEvent := True;

      //Allumer un son Victory
      PlayRandomedSound(DIRECTORY_NAME_WIN, NUMBER_OF_SOUND_WIN, psAsync);

      //Déplacer le label 'Congratulations' et le centrer
      tabLabel[k][6].Caption:= 'Congratulations !';
      LTVictoryLabelIndex := LeftTranslation(tabLabel[k][6], MAX_LEFT, tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][6].Width div 2), 2000);

      //faire-pause-3-secondes ET afficher-Score
      WaitAndDo(3, @ShowScore);

      //Attendre l'affichage du score POUR réinitialiser
      WaitAndDo(3, @FullReinitializing);

      Timer11.Enabled := False; //On arrête de tourner la balle
      zKeyBlocked := True; //On bloque les touches
      Timer4.Enabled := False; //On arrête de gérer l'évènement victoire
    end;
  end;
end;

procedure TForm1.Timer5Timer(Sender: TObject); //Check Bonus Events
begin

  for i:=1 to Length(tabShape[k]) do
  begin
    if ((i = numeroBrickBonusThor) AND (tabShape[k][i].Top > tabpanel[k].Top + tabpanel[k].Height) AND (not(BonusThorTaken))) then
    begin
       BonusThorEvent := True;
       BonusThorTaken := True;
       //Allumer le son bonus Thor
       PlaySound(DIRECTORY_SOUND + '/' + SOUND_THOR_BONUS, psAsync);

       //Déplacer le label Bonus Message et le centrer
       tabLabel[k][1].Caption:= 'Bonus Thor activated for '+TIME_BONUS_THOR.ToString+'s!';
       LeftTranslation(tabLabel[k][1], MAX_LEFT, tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][1].Width div 2), 1000);

       //faire-pause-3-secondes ET hideBonusMessage
       WaitAndDo(3, @HideBonusMessage);
    end
    else if ((i = numeroBrickBonusBarre) AND (tabShape[k][i].Top > tabpanel[k].Top + tabpanel[k].Height) AND (not(BonusBarreTaken))) then
    begin
       BonusBarreEvent := True;
       BonusBarreTaken := True;
       //Allumer le son bonus Barre
       PlaySound(DIRECTORY_SOUND + '/' + SOUND_BARRE_BONUS, psAsync);

       //Déplacer le label Bonus Message et le centrer
       tabLabel[k][1].Caption:= 'Bonus Bar activated for '+TIME_BONUS_BARRE.ToString+'s!';
       LeftTranslation(tabLabel[k][1], MAX_LEFT, tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][1].Width div 2), 1000);

       //faire-pause-3-secondes ET hideBonusMessage
       WaitAndDo(3, @HideBonusMessage);
    end
    else if ((i = numeroBrickBonusLife) AND (tabShape[k][i].Top > tabpanel[k].Top + tabpanel[k].Height) AND (not(BonusLifeTaken))) then
    begin
       BonusLifeEvent := True;
       IncreaseLife();
       BonusLifeTaken := True;
       //Allumer le son bonus Life
       PlaySound(DIRECTORY_SOUND + '/' + SOUND_LIFE_BONUS, psAsync);

       //Déplacer le label Bonus Message et le centrer
       tabLabel[k][1].Caption:= '+1 Life Got!';
       LeftTranslation(tabLabel[k][1], MAX_LEFT, tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][1].Width div 2), 1000);

       //faire-pause-3-secondes ET hideBonusMessage
       WaitAndDo(3, @HideBonusMessage);
    end;

  end;

end;


procedure TForm1.Timer6Timer(Sender: TObject); //Prendre un chrono pour tous les bonus
begin
   if(BonusThorEvent)
   then
   begin
       timeAllowedToBonusThor := timeAllowedToBonusThor -1;
       if (timeAllowedToBonusThor = 0) then
       begin
            BonusThorEvent := False;
       end;
   end;

   if(BonusBarreEvent)
   then
   begin
       if(tabBarre[k].Width <> bonusBarreLong) then
       begin
           tabBarre[k].Width := bonusBarreLong;
       end;
       timeAllowedToBonusBarre := timeAllowedToBonusBarre -1;
       if (timeAllowedToBonusBarre = 0) then
       begin
            BonusBarreEvent := False;
            tabBarre[k].Width := longbarre;
       end;
   end;
end;

procedure TForm1.Timer7StartTimer(Sender: TObject);
begin
  iT7 := 0
end;

procedure TForm1.Timer7StopTimer(Sender: TObject);
begin
  iT7:= 0;
  tabBall[k].Brush.Color := initialBallColor;
  tabBarre[k].Brush.Color := initialBarreColor;
  tabBarre[k].Width := longbarre;
end;

procedure TForm1.Timer7Timer(Sender: TObject); //Switch color ball and barre on Bonus Event
begin
  if (BonusThorEvent) then
  begin
    case iT7 of
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
    iT7 := iT7 + 1;
    if (iT7 = 10) then
       iT7 := 0;
  end;

  if not(BonusThorEvent) AND (tabBall[k].Brush.Color <> initialBallColor) then
  begin
     tabBall[k].Brush.Color := initialBallColor;
  end;

  if (BonusBarreEvent) then
  begin
    case iT7 of
        9: tabBarre[k].brush.color := clgreen;
        8: tabBarre[k].brush.color := clblue;
        7: tabBarre[k].brush.color := clyellow;
        6: tabBarre[k].brush.color := clred;
        5: tabBarre[k].brush.color := clgreen;
        4: tabBarre[k].brush.color := clred;
        3: tabBarre[k].brush.color := clblue;
        2: tabBarre[k].brush.color := clred;
        1: tabBarre[k].brush.color := clolive;
        0: tabBarre[k].brush.color := clred;
    end;
    iT7 := iT7 + 1;
    if (iT7 = 10) then
       iT7 := 0;
  end;

  if not(BonusBarreEvent) AND (tabBarre[k].Brush.Color <> initialBarreColor)  then
  begin
     tabBarre[k].Brush.Color := initialBarreColor;
     tabBarre[k].Width := longbarre;
  end;

end;

procedure TForm1.Timer8StartTimer(Sender: TObject);
begin
  iT8 := 0;
end;

procedure TForm1.Timer8StopTimer(Sender: TObject);
begin
     tabShape[k][1].brush.color := initialBrickColor;
end;


procedure TForm1.Timer8Timer(Sender: TObject); //handle changing color of the specialOneBrick
begin
    case iT8 of
        9: tabShape[k][1].brush.color := clgreen;
        8: tabShape[k][1].brush.color := clblue;
        7: tabShape[k][1].brush.color := clyellow;
        6: tabShape[k][1].brush.color := clred;
        5: tabShape[k][1].brush.color := clgreen;
        4: tabShape[k][1].brush.color := clred;
        3: tabShape[k][1].brush.color := clblue;
        2: tabShape[k][1].brush.color := clred;
        1: tabShape[k][1].brush.color := clolive;
        0: tabShape[k][1].brush.color := clred;
    end;
    iT8 := iT8 + 1;
    if (iT8 = 10) then
       iT8 := 0;
end;

procedure TForm1.Timer9Timer(Sender: TObject);   //check the limit of the bar move.
begin
  if (tabBarre[k].Left <= tabPanel[k].Left) then
  begin
    if (not(limit_left)) then
    begin
        limit_left := True;
        tabBarre[k].Left := tabPanel[k].Left;
    end;

  end;

  if ((tabBarre[k].Left + tabBarre[k].Width) >= (tabPanel[k].Left + tabPanel[k].Width)) then
  begin
      if(not(limit_right)) then
      begin
          limit_right := True;
          tabBarre[k].Left := tabPanel[k].Left + tabPanel[k].Width - tabBarre[k].Width;
      end;

  end;


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
      //ShowMessage(szSoundFilepath);
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
    Randomize;
    choosenSound := random(NUMBER_OF_SOUND) + 1;
    filePath := DIRECTORY_SOUND + '/' + DIRECTORY_NAME + '/' +
    IntToStr(choosenSound) + '.wav';
    PlaySound(filePath, fPlayStyle);
  end;
end;

procedure TForm1.HideBonusMessage();
begin
  tabLabel[k][1].Caption := '';
  tabLabel[k][1].Left := MAX_LEFT;
end;

procedure TForm1.IncreaseScore();
begin
  score := score + 1;
  tabLabel[k][3].Caption := 'SCORE: ' + IntToStr(score);
end;

procedure TForm1.IncreaseLife();
begin
  comptvie := comptvie + 1;
  tabLabel[k][4].Caption := 'LIFE: ' + IntToStr(comptvie);
end;


procedure TForm1.TakeOneLife();
begin
  if(comptvie > 0) then
  begin
      comptvie := comptvie - 1;
      tabLabel[k][4].Caption := 'LIFE: ' + IntToStr(comptvie);
  end;
end;

procedure TForm1.ShowScore();
begin
     TopMoveGamePanelTo(MAX_TOP);
     PanelScore.AutoSize := TRUE;
     LabelHeader.AutoSize := TRUE;
     LabelHeader.Caption := 'Final Score';
     LabelFinalScore.AutoSize:= TRUE;
     if (Length(EditSurname.Text) > 0) then
        LabelFinalScore.Caption := ' ' + EditSurname.Text + ', you scored ' + IntToStr(score) + '/' + IntToStr(Length(tabShape[k])) + '. '
     else
        LabelFinalScore.Caption := ' You scored ' + IntToStr(score) + '/' + IntToStr(Length(tabShape[k])) + '. ';

     if (VictoryEvent) then
        LabelFinalScore.Caption := LabelFinalScore.Caption + 'Winner Winner Chicken!';

     if(PanelScore.Width < 600) then
     begin
       PanelScore.AutoSize := False;
       PanelScore.Width := 600;
     end;

     PanelScore.Left := (Form1.width div 2) - (PanelScore.Width div 2);
     PanelScore.Top := (Form1.Height div 2) - (PanelScore.Height div 2);
     LabelHeader.left :=  (PanelScore.Width div 2) - (LabelHeader.Width div 2);
     LabelHeader.Top := MARGIN_TOP;
     LabelFinalScore.Top := LabelHeader.Top + LabelHeader.Height + (2*MARGIN_TOP);
     LabelFinalScore.Left := MARGIN;
     LabelMenu.Top := LabelFinalScore.Top + LabelFinalScore.Height + (3*MARGIN_TOP);
     LabelMenu.Left:= 2 * MARGIN;
     LabelRestart.Top := LabelMenu.Top;
     LabelRestart.Left := (PanelScore.Width div 2) - (LabelRestart.Width div 2);
     LabelQuit.Top := LabelMenu.Top;
     LabelQuit.Left := PanelScore.Width - LabelQuit.Width - (2*MARGIN);
     if(PanelScore.AutoSize = FALSE) then
         PanelScore.Height := LabelRestart.Top + LabelRestart.Height + MARGIN_TOP;
     zKeyBlocked:= True; //On bloque le démarrage d'une partie

end;


//faire_pause_N_secondes et executer une chose
procedure TForm1.WaitAndDo(delay: integer; procPtr: TProcedurePointer);
var
  iterator : integer;
begin

     iterator := 0;
     while((iterator < 10) AND (array10ProcedurePointers[iterator] <> nil)) do
         iterator := iterator + 1;
     if(iterator > 9) then //nil posiion not found else found
         iterator := 0;
     array10ProcedurePointers[iterator] := procPtr;
     array10Chrono[iterator] := -1;
     array10DelayNSeconds[iterator] := delay;

     if(not(Timer13.Enabled)) then
         Timer13.Enabled := True;

end;


//Reinit some touched object and variables after the player started a part (pressing Z);
Procedure TForm1.PartialReinitializing();
begin
  //timers
  Timer1.Enabled := FALSE;
  Timer3.Enabled := FALSE;
  Timer4.Enabled := FALSE;
  Timer5.Enabled := FALSE;
  Timer6.Enabled := FALSE;
  Timer7.Enabled := FALSE;
  Timer11.Enabled := FALSE;
  Timer12.Enabled := FALSE;
  Timer13.Enabled := FALSE;
  Timer9.Enabled := TRUE;

  //k bar & ball initial positions
  tabBarre[k].Left := tabPanel[k].Left + (tabPanel[k].width div 2) - (tabBarre[k].width div 2);
  tabBall[k].Left := tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabBall[k].width div 2);
  tabBarre[k].Top := tabPanel[k].Top + (tabPanel[k].Height) - tabBarre[k].Height - BARRE_ALTITUDE;

  //Depending of the barre's Top
  tabBall[k].Top := tabBarre[k].Top - tabBall[k].Height;

  //change label Start content
  tabLabel[k][5].Caption := 'Press Z to continue';
  tabLabel[k][5].Left := tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][5].Width div 2);

  //some variables touched

  //Bonuses managment
  BonusThorEvent := False;
  timeAllowedToBonusThor := TIME_BONUS_THOR;
  BonusBarreEvent := False;
  timeAllowedToBonusBarre := TIME_BONUS_BARRE;
  BonusLifeEvent := False;
  tabLabel[k][1].Caption := ''; //label for bonus message
  //Commenting
  BarTouched := FALSE;
  commentHeard := FALSE;
  numberOfBricksConsecutivelyBroken := 0;
  //Other
  limit_right := FALSE;
  limit_left := FALSE;
end;

//Reinit all touched object and variables after the player started a part (pressing Z);
Procedure TForm1.FullReinitializing();
begin

  PartialReinitializing();

  //Timers
  Timer2.Enabled := FALSE;
  if(k = 7) then
  begin
    Timer8.Enabled := FALSE;
  end;

  //k Labels contents
  tabLabel[k][1].Caption := ''; tabLabel[k][2].Caption := ''; tabLabel[k][6].Caption := '';
  tabLabel[k][3].Caption := 'SCORE: 0';
  tabLabel[k][4].Caption := 'LIFE: 2';

  //k Labels moved repositionning
  tabLabel[k][5].Left := tabPanel[k].Left + (tabPanel[k].Width div 2) - (tabLabel[k][5].Width div 2);

  //Panel k bricks's Top must be reorganized to their initial position
  for iterator := 1 to Length(tabSave[k]) do
  begin
    tabShape[k][iterator].Top := tabSave[k][iterator];
  end;

  //Reinit all Array10 Object's Arrays
  for iterator := 0 to 9 do
  begin
    array10Labels[iterator]:= nil;
    array10ProcedurePointers[iterator] := nil;
  end;

  //variables changing after Z key pressed
  score := 0;
  comptvie := 2;
  BonusThorEvent := False;
  BonusThorTaken := False;
  timeAllowedToBonusThor := TIME_BONUS_THOR;
  tabShape[k][numeroBrickBonusThor].Brush.Color := initialBrickColor;//cleaning special bonus brick color
  BonusBarreEvent := False;
  BonusBarreTaken := False;
  timeAllowedToBonusBarre := TIME_BONUS_BARRE;
  tabShape[k][numeroBrickBonusBarre].Brush.Color := initialBrickColor;//cleaning special bonus brick color
  BonusLifeEvent := False;
  BonusLifeTaken := False;
  tabShape[k][numeroBrickBonusLife].Brush.Color := initialBrickColor;//cleaning special bonus brick color
  //Another variables to add?
  VictoryEvent:=False;
end;


//Moving GamePanel with some of his objects
procedure TForm1.TopMoveGamePanelTo(t: integer);
begin
  tabPanel[k].Top := t;

  tabBarre[k].Top := tabPanel[k].Top + (tabPanel[k].Height) - tabBarre[k].Height - BARRE_ALTITUDE;
  //Depending of the barre's Top
  tabBall[k].Top := tabBarre[k].Top - tabBall[k].Height;

  //DEPENDANT TOP ORDER
  tabLabel[k][3].Top := tabPanel[k].Top + MARGIN_TOP;
  tabLabel[k][4].Top := tabLabel[k][3].Top + tabLabel[k][3].Height + MARGIN_TOP;

  tabLimit[k].Top := tabLabel[k][4].Top + tabLabel[k][4].Height + (2*MARGIN_TOP);

  tabLabel[k][1].Top := (tabLimit[k].Top div 2) - (tabLabel[k][1].Height div 2);
  tabLabel[k][5].Top := (tabLimit[k].Top div 2) - (tabLabel[k][5].Height div 2);// - MAX_TOP;
  tabLabel[k][6].Top := ((tabPanel[k].Top + tabPanel[k].Height) div 2) - (tabLabel[k][6].Height div 2);// - MAX_TOP;
  tabLabel[k][7].Top := (tabLimit[k].Top div 2) - (tabLabel[k][7].Height div 2);// - MAX_TOP;


  //Cas spécial du panel à une seule brique: on la place au hazard
  if(k = 7) then
  begin
      ReplaceTheSpecialOneBrick();
      Timer8.Enabled := True;
  end;
end;


Procedure TForm1.ReplaceTheSpecialOneBrick(); //only for panel 8
var bottomPoint, topPoint, leftPoint, rightPoint, numberOfPart: integer;
begin
     if(k = 7) then
     begin
         //defining placable area
         topPoint := tabLimit[k].Top + tabLimit[k].Height + (2 * MARGIN);
         bottomPoint := tabBarre[k].Top - (2 * MARGIN);
         leftPoint := tabPanel[k].Left + (2 * MARGIN);
         rightPoint := tabPanel[k].Left + (tabPanel[k].Width) - (2 * MARGIN);

         //dividing the area
         numberOfPart := 10;

         //choosing a point of the area randomly
         Randomize;
         tabShape[k][1].Top := topPoint + (((bottomPoint - topPoint) div numberOfPart) * (Random(numberOfPart -1) +1));
         Randomize;
         tabShape[k][1].Left := leftPoint + (((rightPoint - leftPoint) div numberOfPart) * (Random(numberOfPart -1) +1));
     end;
end;




//Handle commenting sound
Procedure TForm1.Comment();
begin
  numberOfBricksConsecutivelyBroken := numberOfBricksConsecutivelyBroken + 1;
  if((numberOfBricksConsecutivelyBroken >= MIN_REQUIRED_FOR_COMMENT) AND not(commentHeard)) then
  begin
    commentHeard := True;
    //Play Comment Sound
    PlayRandomedSound(DIRECTORY_NAME_GComment, NUMBER_OF_SOUND_GComment, psAsync);
  end;
end;

//Choisis un nouveau Panel de jeu
Procedure TForm1.PickNewPanelIndex();
begin
  while(k = lastChoosenPanelIndex) do
  begin
       Randomize;
       k := Random(NUMBER_OF_GAME_PANELS) + 1;
  end;
  lastChoosenPanelIndex := k;
  //save initial colors of some shapes
  initialBallColor := tabBall[k].Brush.Color;
  initialBrickColor := tabShape[k][1].Brush.Color;
  initialBarreColor := tabBarre[k].Brush.Color;
end;

//Change les briques bonus
Procedure TForm1.ChooseNewBonusBricks();
begin
  //defining bonus bricks
  //pick a random number among Panel Bricks sauf pour le panel 8 où il y'a une seule brique
  if(k <> 7) then
  begin
      //Bonus Thor
      Randomize;
      numeroBrickBonusThor := random(Length(tabShape[k])-1) + 1;
      if (tabPanel[k].Color <> BONUS_BRICK_THOR_COLOR_1) then
         tabShape[k][numeroBrickBonusThor].Brush.Color := BONUS_BRICK_THOR_COLOR_1
      else
         tabShape[k][numeroBrickBonusThor].Brush.Color := BONUS_BRICK_THOR_COLOR_2;
      //Bonus Barre
      numeroBrickBonusBarre := numeroBrickBonusThor;
      while(numeroBrickBonusBarre = numeroBrickBonusThor) do
      begin
           Randomize;
           numeroBrickBonusBarre := random(Length(tabShape[k])-1) + 1;
      end;
      if (tabPanel[k].Color <> BONUS_BRICK_BARRE_COLOR_1) then
           tabShape[k][numeroBrickBonusBarre].Brush.Color := BONUS_BRICK_BARRE_COLOR_1
      else
           tabShape[k][numeroBrickBonusBarre].Brush.Color := BONUS_BRICK_BARRE_COLOR_2;
      //Bonus Life
      numeroBrickBonusLife := numeroBrickBonusThor;
      while((numeroBrickBonusLife = numeroBrickBonusThor) OR (numeroBrickBonusLife = numeroBrickBonusBarre)) do
      begin
           Randomize;
           numeroBrickBonusLife := random(Length(tabShape[k])-1) + 1;
      end;
      if (tabPanel[k].Color <> BONUS_BRICK_LIFE_COLOR_1) then
           tabShape[k][numeroBrickBonusLife].Brush.Color := BONUS_BRICK_LIFE_COLOR_1
      else
           tabShape[k][numeroBrickBonusLife].Brush.Color := BONUS_BRICK_LIFE_COLOR_2;
  end
  else  // le panel 8 ne contient qu'une seule brique
  begin
    numeroBrickBonusThor := 1;
    numeroBrickBonusBarre := 1;
    numeroBrickBonusLife := 1;
  end;


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
