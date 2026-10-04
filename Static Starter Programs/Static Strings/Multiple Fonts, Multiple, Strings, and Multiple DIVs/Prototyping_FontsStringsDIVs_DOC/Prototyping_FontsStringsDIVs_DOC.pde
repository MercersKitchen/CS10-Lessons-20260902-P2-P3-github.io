/* Mutliple Fonts & Multiple Strings in Mutliple DIVs
 Data Structure is index counts one-to-one based on DIV
 
 Uses Aspect Ratios from
 - Harrington: Prototyping_OneFont.pde
 - Arial, specifically Arial Italics: Prototyping_SecondFont.pde
 - Bauhaus: Prototyping_ThirdFont.pde
 
 CAUTION: appHeight is not passed as initialization, thus no error with textAlign() or font size
 
 Based on Previous Programs
 - Prototyping_StringOneDocu.pde
 - Prototyping_StringOneDIVs_DOC.pde
 - Prototyping_StringsDIVs_DOC.pde
 
 */
//
//Display
fullScreen(); //Landscape
//size(500, 100); //Portrait, testing smaller DIVs ONLY
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("CHOICES", "\tFull Screen:", displayWidth, displayHeight, "\tCurrent CANVAS:", width, height); //Comma Concatenation with Character Escape
//println("\nDisplay VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight); //Comma, Plus Concatenation with Character Escape
//
//Population
int numberOfDIVs = 3; //Note difference between human and comptuer counting
float[] stringDivX = new float[numberOfDIVs];
float[] stringDivY = new float[numberOfDIVs];
float[] stringDivWidth = new float[numberOfDIVs];
float[] stringDivHeight = new float[numberOfDIVs];
stringDivX[0] = appWidth*70/279; // 1/4   //Akward DIV, must rename all Mr. Mercer's Variables
stringDivY[0] = appHeight*22/216;  //1/10
stringDivWidth[0] = appWidth*140/279; //1/2
stringDivHeight[0] = appHeight*1/10; // ** Make smaller to test height
stringDivX[1] = stringDivX[0]; //Cascading VARs
stringDivY[1] = appHeight*65/216; //22*3 with rounding decimal error
stringDivWidth[1] = appWidth*54/216;
stringDivHeight[1] = stringDivHeight[0]; //Cascading VARs
stringDivX[2] = stringDivX[0]; //Cascading VARs, best practice
stringDivY[2] = appHeight*5/10;
stringDivWidth[2] = appWidth*137/216;
stringDivHeight[2] = stringDivHeight[0]; //Cascading VARs, best practice
//
//Strings, Text, Literal
String[] text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
text[0] = "wahoo ... whipsered";
text[1] = "This DIV-String is the Problem Child ... Child DIV is an alogorithm joke, see wrap-around algorithm.";
text[2] = "I wish to be SEEN ... DIV is too big!";
// Students enter all text from Case Study
//
//Font Loading, see previous snapshots for documentation
float[] fontSize = new float[numberOfDIVs]; //Initiating Array below in FOR
String[] font = new String[numberOfDIVs];
font[0] = "Harrington";
font[1] = "Arial Italic";
font[2] = "Bauhaus 93";
PFont[] drawFont = new PFont[numberOfDIVs]; //Reminder that Processing.Java draws fonts
//Initiating Array below in FOR
//CAUTION: casting error
float[] aspectRatio = new float[numberOfDIVs];
/* Font Data Structure Legend
 0: harrington
 1: arial
 2: bauhaus
 */
int denominator = 120; //best practice, experimental divHeight from prototyping programs
int[] testedSize = new int[numberOfDIVs];
testedSize[0] = 129; //From Aspect Ratio Prototyping, note 83 if appHeight initialized first
testedSize[1] = 131; //From Aspect Ratio Prototyping, note 87 if appHeight initialized first
testedSize[2] = 141; //From Aspect Ratio Prototyping, note 89 if appHeight initialized first
for (int i=0; i<numberOfDIVs; i++) {
  aspectRatio[i] = float(testedSize[i]) / float(denominator);
  fontSize[i] = aspectRatio[i]*10; //mutliplier makes font very small but not near 1, although a "1" font size will work
  drawFont[i] = createFont(font[i], fontSize[i]);
} //End Reading drawFont[]
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
} //End FOR DIVs
//
//Drawing Text
color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(purpleInk); //Ink, hexidecimal copied from Color Selector
//Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
/* WHILE Error Check fontSize, decreasing the text when wrapped or not shown
 Not Shown or wrap-around text: pixelDifference is negative, single dimension measure
 Caution: must ensure all Aspect Ratios are <1 or >1 to choose * or /
 */
float constantDecrease = 0.99;  //99% of origonal or 1% decrease
int iWhile=0; //Counting iterations of WHILE, adjust with optimization and pixel decrease adjustment algorithm
for ( int i=0; i<3; i++ ) {
  textFont(drawFont[i], fontSize[i]); //textSize() required before text() or textWidth()
  //Required * / Choice for Aspect Ratio, similar to Ternary Operator
  if ( textWidth( text[i] ) > stringDivWidth[i] ) {
    //Decrease text by *
    while ( textWidth( text[i] ) > stringDivWidth[i] ) {
      iWhile++;
      //ERROR: infinite loop, requires exit() & println()
      fontSize[i] *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
      textFont(drawFont[i], fontSize[i]);
    } //End WHILE Error Check Text-wrap
  } else {
    //Increase text by /
    while ( textWidth( text[i] ) < stringDivWidth[i] ) {
      iWhile++;
      //ERROR: infinite loop, requires exit() & println()
      fontSize[i] /= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
      textFont(drawFont[i], fontSize[i]);
    } //End WHILE Error Check Text-wrap
  }
  float pixelDifference = stringDivWidth[i] - textWidth( text[i] );
  //println("\nFirst Var Check for:"+i, "\tIterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", pixelDifference, "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
  while ( pixelDifference < 1 ) {
    iWhile++;
    fontSize[i]--; //not percent change, single pixel decrease
    textFont(drawFont[i], fontSize[i]);
    pixelDifference = stringDivWidth[i]-textWidth( text[i] );
  }
  //println("Second Print Check for:"+i, "\tIterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", pixelDifference, "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
  // Unfinished Algorithm: Advanced Wrap-Around
} //End FOR Loop, Font Size Check in DIVs
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  textFont(drawFont[i], fontSize[i]);
  text( text[i], stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End MAIN Program
