/* Aspect Ratio: Bike Image Demonstration , Circles
 
 CAUTION: ERROR is built into Algorithm
 - see output
 - are wheels circles
 - how can this be fixed
 
 Introdction to Character Escapes
 
 ** Required: math of Aspect Ratio
 - Know dimenions of origonal shape
 - Know dimesnions of DIV
 - How does the image change to maintain aspect ratio
 - Find the logical errors of repeating an image in a DIV (display)
 
 ** CS Vacabulary
 - Resizing & Scaling: using a scale factor to enlarge or reduce an image without aspect ratio
 - Downsampling or upsampling to maintain aspect ratio
 - Aspect Ratio Adjustement: slight changes to image while maintaining human interpretation of aspect ratio
 
 Vocabulary
 - Loading Image Files, Concatenation
 - Drawing Images use the rect() parameters
 
 - Aspect Ratio:
 - Uses the dimensions of the origonal image
 - User determines whether to use an Scaled ratio greater than one or less than one
 - Determine the image geometry
 - Only the image geometry needs to be know for the algorithm below
 - When the Geometries change, big dimension to small dimension must happen or image will not fit
 - still need an ERROR-Check with oddly shaped landscape-landscape, protrait-portrait resampling
 - size-decreasing algorithms (resampling) discussed in Text
 
 - To use the ERROR Catch autommatically
 - Use nested IF (Intermeidate CS, not introductory)
 - Introduces noLoop()
 
 */
//Display
//fullScreen(); //Landscape
size(250, 500); //Portrait, testing smaller DIVs ONLY
int appWidth = width; // displayWidth
int appHeight = height; // displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float imageDivX = appWidth * 70/279; //Akward DIVs and Variables, must use formulae
float imageDivY = appHeight * 54/216;
float imageDivWidth = appWidth * 140/279;
float imageDivHeight = appHeight * 108/216;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Dependancies/Images/";
String bike = "bike";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + bike + fileExtensionJPG;
//println("Bike Pathway:", imagePathway1);
//
//Image Loading
PImage image1 = loadImage( imagePathway1 );
//println(image1.width, image1.height, image1.parent);
//
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( image1.width >= image1.height ) ? float(image1.width)/float(image1.height) : float(image1.height)/float(image1.width) ; //Ternary Operator
//ERROR, int populating float: truncating-adding zeros, casting
/* Line Notes
 - Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
 - 2D information from Image, Apsect Ratio Number
 - Answers how to make image bigger or smaller
 - Computer calculated DIV width & height
 - Computer needs to compare image to DIV size difference
 */
//println("Testing for Decimals, formula unsing ints:", image1.width/image1.height);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( image1.width >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: does it look good
//Must change Design of DIVs | Resize Image File
//Verification by println ... if imageHeightAdjusted1>imageDivHeight, then it will not fit even though adjusted width fits
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image (image1, 0, 0, appWidth, appHeight );
//image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
//End MAIN Program
