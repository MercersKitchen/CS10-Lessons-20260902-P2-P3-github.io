/* String - using a font
 
 Text will display if
 - font size is < divHeight
 
 Text will wrap if textWidth() < divWidth
 
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
float stringDivX = appWidth*70/279; // 1/4   //Akward DIV, must rename all Mr. Mercer's Variables
float stringDivY = appHeight*22/216;  //1/10
float stringDivWidth = appWidth*140/279; //1/2
float stringDivHeight = appHeight*22/216; //1/10   // ** Make smaller to test height
//
//Strings, Text, Literal
String title = "Wahoo!"; //Full String longer than Rectangle, see below
//Wahoo! I changed 2-dimension Size.
// Students enter all text from Case Study
//
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
 */
//Teacher ONLY: Starts as an int but converted to a float later
//Note: pass appHeight into fontSize and resize, passing a smallest number does not make this error
//CAUTION: strange things happen with font sizes, should have WHILE Check and Percentage Decrease Check
float fontSize = appHeight; //Entire Program, Algorithm to have smallest font size
PFont titleFont; //Font Varaible Name, able to have more than one Font
String harrington = "Harrington"; //Spelling of the Font Matters, see PFont.list() v Create Font above
//Reminder: only letters ending with numbers, underscore means camelCase or snake_case
//Mispelling will cuase a very odd error
titleFont = createFont(harrington, fontSize);
//
/*Measuring Aspect Ratio for Specific Font
 - Use only one DIV
 - Apply to other DIVs
 */
//println("Font Size:", fontSize, "\tFont Spelling:", harrington, "\tFont Variable Confirmation:", titleFont); //Inspect PFont-type Varaible for Harddrive Address v value
/* Aspect Ratio Calculation
 - choose Aspect Ratio that must be mutliplied (<1): fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
float fontSizeHarrington = 83.0; //Change the number until it fits, largest font size
float divHeightHarrington = stringDivHeight;
float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington;
fontSize = stringDivHeight*harringtonAspectRatio;
//println("Harrington Aspect Ratio:", harringtonAspectRatio, "@ Font Size:", fontSize);
//
//Note: DIV to "see" variables
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
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
float constantDecrease = 0.99;  //99% of origonal or 1% decrease, change to optimize and count up with pixels
int iWhile=0; //Counting iterations of WHILE, adjust with optimization and pixel decrease adjustment algorithm
while ( textWidth( title ) > stringDivWidth ) {
  iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
  textFont(titleFont, fontSize); //see variable note
} //End WHILE Error Check Text-wrap
println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( title ), "\tUsing", constantDecrease*100+"%" );
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
//
//End MAIN Program
