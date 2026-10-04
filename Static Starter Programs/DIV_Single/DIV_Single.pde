/* Static Program: DIVs 2D Rectangles
 
 Papper and Pencil Required Activities
 - Case Study of Music Player or basic GUI
 - Drawing Rectangles around main, non-overlapping compnents
 - Using mm ruler to create unitless ratios
 
 Concepts
 - Writing a computer program backwards from an object
 - Naming rectangles by referencing the variables
 - Using variables in formulae
 - Using formulae as parameters
 
 Variable Developement
 - int & long: no decimals
 - float & double: decimals
 - ERROR: truncation
 
 Bottom Up Development to learn language and simple algorithms
 - Display: two basic types and three geometries
 - Functions, blue
 - Parameters: how to think about the code behind the function
 - What is returned
 
 - Algorithm: Display & CANVAS, a rectangle like a case study
 - Abstracting a case study illustrates human bias, very useful in HS
 
 - Variables as memories of key-variables, ease of changing CANVAS for debugging (leads to "turning device" from landscape to portrait)
 - Variables to manipulate
 
 - Possible activity: how do you draw a rectangle in the middle of the page (start, length of 1-D lines, overall 2-D look or angles)
 
 - Variable Declaration in strongly formatted language
 - Variable initialization
 - Combining ints into floats (awareness of long and double)
 - Awareness of 5 operators
 
 - Input of display can influence rect() output
 - Output: 2-D Shapes
 
 - typing practice: start with function, then populate variables, create Runtime Errors as reminders to return to code
 
 - Assersion is a rectangle looking replicating the case study
 - Case Study: referent measures, paperfolding
 - What does the rectangle teach use about the overall
 
 - Coding Awareness experiements: execution of fillScreen() and size() do not populate key variables afterwards but before setup()
 - Note: see boilerplate_settings.pde for details (requires more coding expereince for understanding)
 
 */
//
//Display CANVAS
println(displayWidth, displayHeight); //Inspection of Variables, setup happens before fullScreen() or size()
//size(); //width //height
fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
/* Exploring Display Properties, students with experience
 //Display: interaction of Display and CANVAS
 //See boilerplate_settings for exemplar of basic procedure-based
 fullScreen(); //displayWidth //displayHeight
 int shorterSide = (displayWidth >= displayHeight) ? displayHeight : displayWidth; //note: shorterSide includes square geometry
 println(displayWidth, displayHeight, shorterSide, width, height); //illstrates width & height are populated before size() line, not sequential
 int appWidth = displayWidth; //width //best practice: mutabled variable copied into non-mutable form
 int appHeight = displayHeight; //height
 //size(shorterSide, shorterSide); //Locked unless placed in void setting() {} before void setup() {}
 //IllegalStateException, Compiler Error
 // See: https://processing.org/reference/settings_.html
 size(700, 500); //key varaibles: width & height
 //Even though executed after initialization, CANVAS key variables are populated first
 */
//
//rect(X, Y, Width, Height); //From debugger and online documentation
//Note: the debugger expects rectangles to have float or double type variables
//Using Ratios measured by ruler
int paperWidth = 279; //Best Practice: local variables use to make DIV Variables
int paperHeight = 216; //MrM #'s, students must use their own
//
int divX = 70;
int divY = 54;
int divWidth = 140;
int divHeight = 108;
//
/* Introduces Combination of Varaibles and Formulae
 Anticiaptes Procedural Voice
 Introduces how integers and decimals can combine without error
 */
float testDivX = appWidth * divX/paperWidth; //Awkward DIV, must rename all Mr. Mercer's Variables
float testDivY = appHeight * divY/paperHeight;
float testDivWidth = appWidth * divWidth/paperWidth;
float testDivHeight = appHeight * divHeight/paperHeight;
//
//DIVs: dividing out the CANVAS in non-overlapping sections
rect(testDivX, testDivY, testDivWidth, testDivHeight);
//
/* Student Scafolding
 Name DIVs from Case Study
 Copy and Paste rect(nameX, nameY, nameWidth, nameHeight) into Mutli-line comments
 CUT rect(parameters) one line at a time
 Develop varaibles for formulae
 */
//
//End MAIN Program
