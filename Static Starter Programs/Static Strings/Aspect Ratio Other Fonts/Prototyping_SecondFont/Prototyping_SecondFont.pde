/* String - Calculating Arial Aspect Ratio
 Using Arial Italics since Arial is default when font cannot be found
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
String title = "Wahoo!"; //Smaller than divWidth
/* Full String longer than Rectangle, "Wahoo! I changed 2D Size."
 - divHeight must fit the font size or text is not shown (Advanced, error check includes %-decrease)
 - Fonts includes the in WHITE SPACE around the foreground "coloured ink"
 - divWidth must include the font size
 - if font is too big, wrap around happens
 - OR full string is not drawn
 */
// Students enter all text from Case Study
//
/* Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
 */
//Teacher ONLY: Starts as an int but converted to a float later
//Note: pass appHeight into fontSize will change how text is drawn, passing a float does not make this error
//CAUTION: strange things happen with font sizes, should have WHILE Check and Percentage Decrease Check
float fontSize = appHeight; //Entire Program, Algorithm to have smallest font size
//Note: although int changes to float in assignment and intialization, difficult for lower math-levels due to memorization
PFont titleFont; //Font Varaible Name, able to have more than one Font
String arial = "Arial Italic"; //Spelling of the Font Matters, see PFont.list() v Create Font above
//Arial is default when fonts do not work, using italics here to demonstrate difference
//Reminder: only letters ending with numbers, underscore means camelCase or snake_case
//Mispelling will cuase a very odd error
titleFont = createFont(arial, fontSize);
//
//println("Font Size:", fontSize, "\tFont Spelling:", arial, "\tFont Variable Confirmation:", titleFont); //Inspect PFont-type Varaible for Harddrive Address v value
//
/*Aspect Ratio for Harrington
 - choose Aspect Ratio that must be mutliplied (<1): fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
//** Aspect Ratio records manual changes of declaration-initiation
float fontSizeArial = 87.0; //fontSize=131 when not initiating with appHeight first
float divHeightArial = stringDivHeight;
println("Reference DIV Height for Aspect Ratio:", stringDivHeight);
float arialAspectRatio = fontSizeArial / divHeightArial;
fontSize = stringDivHeight*arialAspectRatio; //when testing, use fontSizeHarrington, then calculation
//println("Arial Italics Aspect Ratio:", arialAspectRatio, "@ Font Size:", fontSize);
//
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight ); //We see shape, computer sees variables
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
//
textFont(titleFont, fontSize); //must include textSize() before text() & textWidth()
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
//
//End MAIN Program
