//String[] fontList = PFont.list(); //Lists OS Fonts
PFont font; //Font name is Batang-48

color purple = #D003FF, yellow = #FAFF03, boarder = purple, inside = yellow; //quitButton

String focusPrompt = "Remember: Click in the text field to type.";
String instructionPrompt = "Type your name";
String typeingPrompt = "Typing should appear below";
String memoryItemsPrompt = "Memory Items: ";
String quitPrompt = "Quit";

Boolean useCalc; //Activiating our calcultor
float fontFit = width + height; //Needed for fontF
boolean useCal = false;

boolean inputField1=false, inputField2=false;
char nameChar;
String nameString = "";
String printArrayText;

String[] name = new String[0];
String[] name2 = new String[0];

//void name() {name = append(name, nameString); }
//void name2() {name2 = append(name, nameString); }