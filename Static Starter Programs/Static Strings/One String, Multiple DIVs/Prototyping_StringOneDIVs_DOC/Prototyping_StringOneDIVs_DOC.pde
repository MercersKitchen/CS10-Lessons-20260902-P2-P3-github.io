/* Strings in Mutliple DIVs
 Purpose: prints smallest DIV font creating constant font size
 - create rect() objects, then add FOR Loop demonstrating decreaseing to one line
 - create text() objects, then add FOR Loop, as above
 - create DIV Arrays based on alphaNumeric of primitive variables
 
  Based on Previous Program: Prototyping_StringOneDocu.pde
 
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
String title = "Wahoo! I changed 2-dimension Size."; //2D
// Students enter all text from Case Study
//
float fontSize = appHeight; //Entire Program, Algorithm to have smallest font size
PFont titleFont; //Font Varaible Name, able to have more than one Font
String harrington = "Harrington"; //Spelling of the Font Matters, see PFont.list() v Create Font above
titleFont = createFont(harrington, fontSize);
//println("Font Size:", fontSize, "\tFont Spelling:", harrington, "\tFont Variable Confirmation:", titleFont); //Inspect PFont-type Varaible for Harddrive Address v value
float fontSizeHarrington = 83.0;
float divHeightHarrington = stringDivHeight[0];
//println("Font Size:", fontSize );
//Aspect Ratio Calculation
float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington;
fontSize = stringDivHeight[0]*harringtonAspectRatio; // Font fits in first DIV only
//println("Harrington Aspect Ratio:", harringtonAspectRatio, "@ Font Size:", fontSize);
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
} //End FOR DIVs
//

//Drawing Text
//Minimum Lines of code to format, draw text with colour, and become aware of other functions
//Must be before text()
color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(purpleInk); //Ink, hexidecimal copied from Color Selector
//Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//WHILE Error Check fontSize, decreasing the text when wrapped or not shown
textFont(titleFont, fontSize); 
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
float constantDecrease = 0.99;  //99% of origonal or 1% decrease
//FOR Loop Error, Copy * Paste three times
int iWhile=0; //Counting iterations of WHILE, adjust with optimization and pixel decrease adjustment algorithm
for ( int i=0; i<3; i++ ) {
  while ( textWidth( title ) > stringDivWidth[i] ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
    textFont(titleFont, fontSize); //see variable note
  } //End WHILE Error Check Text-wrap
  println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth[i]-textWidth( title ), "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
} //End FOR Loop, Font Size Check in DIVs
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( title, stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End MAIN Program
