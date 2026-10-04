/* Purpose: match paperfolding paper puzzle activities to 
 - primitive-variable initiation and declaration
 - paper puzzle activity to develop a pattern to how 2D Shapes are organized to draw any symbols (specifically an abstracted view of the students' chosen symbol-feature connection
 
 - rect() change to square() by dimesion-variable
 - do not repeat variable parameter in rect()
 */
//Display
fullScreen();
//size(700, 500); //key varaibles: width & height
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population
//rect(DIV) is a square to start, by design
int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
int buttonY = appHeight*3/5;
//
float randomStartDIV_X = 0;
float randomStartDIV_Y = 0;
float randomStartDIV_Dimesion = appHeight*1/20; //Changed to SQUARE
//
float musicButtonDivDimension = widthOfButton;
float musicButtonDivY = buttonY;
//
//Pattern with X-parameters of rect()
float[] musicButtonDivX = new float[numberOfButtons-2];
//-2 for button padding
//
for (int i=0; i<numberOfButtons-2; i++) { // Note: < is same as <= -1 //logics of human counting v. computer counting
 musicButtonDivX[i] = beginningButtonSpace + musicButtonDivDimension*i;
 }
//
//DIVs: rect(X, Y Width, Height);
//DIVs
//rect(X, Y, Width, Height)
// Note: easier to use square() than rect(), specific to Processing-Java
for (int i=0; i<numberOfButtons-2; i++) { //Repeat of previous FOR-Conditional
  square(musicButtonDivX[i], musicButtonDivY, musicButtonDivDimension);
}
//
square(randomStartDIV_X, randomStartDIV_Y, randomStartDIV_Dimesion);
//
//RANDOM Button, symbol placeholder
float randomStartButtonX = randomStartDIV_X + randomStartDIV_Dimesion*1/4;
float randomStartButtonY = randomStartDIV_Y + randomStartDIV_Dimesion*1/4;
float randomStartButtonDimension = randomStartDIV_Dimesion*1/2;
//
//STOP BUTTON, #0
float stopButtonX = musicButtonDivX[0] + musicButtonDivDimension*1/4; //Every button will start here or in node#2 of inscribed square, node#1+musicButtonDivDimension*1/2
float stopButtonY = musicButtonDivY + musicButtonDivDimension*1/4; //"Y" Formulae are repeated to assess fluency of reading for repetition
float stopButtonDimension = widthOfButton*1/2; //Duplicated Variables only to emphasize "local" variables to build other variables
//
//MUTE BUTTON, #1
float muteButtonX = musicButtonDivX[1] + musicButtonDivDimension*1/4;
float muteButtonY = musicButtonDivY + musicButtonDivDimension*1/4;
float muteButtonDimension = widthOfButton*1/2;
float muteButtonCross1X1 = muteButtonX; //Cascading Concept OR Repeating Local-Creation Variable Practice //Pattern with cascading here
float muteButtonCross1Y1 = muteButtonY;
//Attend to numbers of alpha-numeric, see line() below too
float muteButtonCross1X2 = muteButtonCross1X1 + musicButtonDivDimension*1/2;
float muteButtonCross1Y2 = muteButtonCross1Y1 + musicButtonDivDimension*1/2;
float muteButtonCross2X1 = muteButtonCross1X2;
float muteButtonCross2Y1 = muteButtonCross1Y1;
float muteButtonCross2X2 = muteButtonCross1X1;
float muteButtonCross2Y2 = muteButtonCross1Y2;
//
// Previous Button, #2 (Recursive or cascade building, oppsite of NEXT)
float prevX = musicButtonDivX[2] + musicButtonDivDimension*1/2 - musicButtonDivDimension*1/8;
float prevY = musicButtonDivY + musicButtonDivDimension*1/4;
float prevWidth = musicButtonDivDimension*1/8; //Cascading should put this variable before prevX
float prevHeight = musicButtonDivDimension*1/2;
//Attend to how this cascades, the rect()-symbol is unique to this shape and NEXT
float prevX1 = musicButtonDivX[2] + musicButtonDivDimension*3/4;
float prevY1 = musicButtonDivY + musicButtonDivDimension*1/4;
float prevX2 = prevX1 - musicButtonDivDimension*1/4;
float prevY2 = prevY1 + musicButtonDivDimension*1/4;
float prevX3 = prevX1 ;
float prevY3 = prevY2 + musicButtonDivDimension*1/4;
//
//fast rewind button, #3 (Non-recursive or local-variable building, opposite of fast forward)
float fastRewindX1 = musicButtonDivX[3] + musicButtonDivDimension*3/4 ;
float fastRewindY1 = musicButtonDivY + musicButtonDivDimension*1/4 ;
float fastRewindX2 = musicButtonDivX[3] + musicButtonDivDimension*1/2 ;
float fastRewindY2 = musicButtonDivY + musicButtonDivDimension*1/2 ;
float fastRewindX3 = musicButtonDivX[3] + musicButtonDivDimension*3/4 ;
float fastRewindY3 = musicButtonDivY + musicButtonDivDimension*3/4;
float fastRewindX4 = musicButtonDivX[3] + musicButtonDivDimension*1/2 ;
float fastRewindY4 = musicButtonDivY + musicButtonDivDimension*1/4;
float fastRewindX5 = musicButtonDivX[3] + musicButtonDivDimension*1/4 ;
float fastRewindY5 = musicButtonDivY + musicButtonDivDimension*1/2 ;
float fastRewindX6 = musicButtonDivX[3] + musicButtonDivDimension*1/2 ;
float fastRewindY6 = musicButtonDivY + musicButtonDivDimension*3/4 ;
//
//Pause Button, #4
float pauseX1 = musicButtonDivX[4] + musicButtonDivDimension*1/4;
float pauseY1 = musicButtonDivY + musicButtonDivDimension*1/4;
float pauseWidth1 = musicButtonDivDimension*1/8;
float pauseHeight1 = musicButtonDivDimension*1/2;
float pauseX2 = musicButtonDivX[4] + musicButtonDivDimension*5/8;
float pauseY2 = musicButtonDivY + musicButtonDivDimension*1/4;
float pauseWidth2 = musicButtonDivDimension*1/8;
float pauseHeight2 = musicButtonDivDimension*1/2;
//
//Play Button, #5
float playX1 = musicButtonDivX[5] + musicButtonDivDimension*1/4;
float playY1 = musicButtonDivY + musicButtonDivDimension*1/4;
float playX2 = musicButtonDivX[5] + musicButtonDivDimension*3/4;
float playY2 = musicButtonDivY + musicButtonDivDimension*1/2;
float playX3 = musicButtonDivX[5] + musicButtonDivDimension*1/4;
float playY3 = musicButtonDivY + musicButtonDivDimension*3/4;
//
//Loop Once Button, #6
//Note, this is a stop botton with a "one inside" & a triangle
//CAUTION: this needs text
float loopOnceX = musicButtonDivX[6] + musicButtonDivDimension*1/4;
float loopOnceY = musicButtonDivY + musicButtonDivDimension*1/4;
float loopOnceDimension = musicButtonDivDimension*1/2;
float loopOnceX1 = musicButtonDivX[6] + musicButtonDivDimension*3/4 - musicButtonDivDimension*1/16;
float loopOnceY1 = musicButtonDivY + musicButtonDivDimension*1/4 - musicButtonDivDimension*1/16;
float loopOnceX2 = musicButtonDivX[6] + musicButtonDivDimension*3/4 + musicButtonDivDimension*1/16;
float loopOnceY2 = musicButtonDivY + musicButtonDivDimension*1/4;
float loopOnceX3 = loopOnceX1;
float loopOnceY3 = musicButtonDivY + musicButtonDivDimension*1/4 + musicButtonDivDimension*1/16;
float loopOnceStrNumX = musicButtonDivX[6] + musicButtonDivDimension*3/8 ;
float loopOnceStrNumY = musicButtonDivY + musicButtonDivDimension*3/8;
float loopOnceStrNumDimension = musicButtonDivDimension*1/4;
//
//Loop Infinite Button, #7
//Note: Loop infinite button is same as loop once, without text "1"
float loopInfiniteX = musicButtonDivX[7] + musicButtonDivDimension*1/4;
float loopInfiniteY = musicButtonDivY + musicButtonDivDimension*1/4;
float loopInfiniteDimension = musicButtonDivDimension*1/2;
float loopInfiniteX1 = musicButtonDivX[7] + musicButtonDivDimension*3/4 - musicButtonDivDimension*1/16;
float loopInfiniteY1 = musicButtonDivY + musicButtonDivDimension*1/4 - musicButtonDivDimension*1/16;
float loopInfiniteX2 = musicButtonDivX[7] + musicButtonDivDimension*3/4 + musicButtonDivDimension*1/16;
float loopInfiniteY2 = musicButtonDivY + musicButtonDivDimension*1/4;
float loopInfiniteX3 = loopInfiniteX1;
float loopInfiniteY3 = musicButtonDivY + musicButtonDivDimension*1/4 + musicButtonDivDimension*1/16;
float loopInfiniteStrNumX = musicButtonDivX[7] + musicButtonDivDimension*3/8;
float loopnfiniteStrNumY = musicButtonDivY + musicButtonDivDimension*3/8;
float loopnfiniteStrNumDimension = musicButtonDivDimension*1/4;
//
//Fast Forward Button, #8 (Non-recursive or local-variable building)
float fastForwardX1 = musicButtonDivX[8] + musicButtonDivDimension*1/4;
float fastForwardY1 = musicButtonDivY + musicButtonDivDimension*1/4;
float fastForwardX2 = musicButtonDivX[8] + musicButtonDivDimension*1/2;
float fastForwardY2 = musicButtonDivY + musicButtonDivDimension*1/2;
float fastForwardX3 = musicButtonDivX[8] + musicButtonDivDimension*1/4;
float fastForwardY3 = musicButtonDivY + musicButtonDivDimension*3/4;
float fastForwardX4 = musicButtonDivX[8] + musicButtonDivDimension*1/2;
float fastForwardY4 = musicButtonDivY + musicButtonDivDimension*1/4;
float fastForwardX5 = musicButtonDivX[8] + musicButtonDivDimension*3/4;
float fastForwardY5 = musicButtonDivY + musicButtonDivDimension*1/2;
float fastForwardX6 = musicButtonDivX[8] + musicButtonDivDimension*1/2;
float fastForwardY6 = musicButtonDivY + musicButtonDivDimension*3/4;
//
//Next Button, #9 (Recursive or cascade building)
float nextX1 = musicButtonDivX[9] + musicButtonDivDimension*1/4;
float nextY1 = musicButtonDivY + musicButtonDivDimension*1/4;
float nextX2 = nextX1 + musicButtonDivDimension*1/4;
float nextY2 = nextY1 + musicButtonDivDimension*1/4;
float nextX3 = nextX1;
float nextY3 = nextY2 + musicButtonDivDimension*1/4;
float nextX = nextX2;
float nextY = nextY1;
float nextWidth = musicButtonDivDimension*1/8;
float nextHeight = musicButtonDivDimension*1/2;
//
//Shuffle Button, #10 (mix of local-buiding and cascading)
float shuffleCross1X1 = musicButtonDivX[10] + musicButtonDivDimension*1/4;
float shuffleCross1Y1 = musicButtonDivY + musicButtonDivDimension*1/4;
float shuffleCross1X2 = musicButtonDivX[10] + musicButtonDivDimension*3/4;
float shuffleCross1Y2 = musicButtonDivY + musicButtonDivDimension*3/4;
float shuffleCross2X1 = musicButtonDivX[10] + musicButtonDivDimension*1/4;
float shuffleCross2Y1 = musicButtonDivY + musicButtonDivDimension*3/4;
float shuffleCross2X2 = musicButtonDivX[10] + musicButtonDivDimension*3/4;
float shuffleCross2Y2 = musicButtonDivY + musicButtonDivDimension*1/4;
float shuffleTriX1 = shuffleCross2X2;
float shuffleTriY1 = shuffleCross2Y2 - musicButtonDivDimension*1/16;
float shuffleTriX2 = shuffleCross2X2;
float shuffleTriY2 = shuffleCross2Y2 + musicButtonDivDimension*1/16;
float shuffleTriX3 = shuffleCross2X2 + musicButtonDivDimension*1/16;
float shuffleTriY3 = shuffleCross2Y2;
float shuffleTriX4 = shuffleCross1X2;
float shuffleTriY4 = shuffleCross1Y2 - musicButtonDivDimension*1/16;
float shuffleTriX5 = shuffleCross1X2;
float shuffleTriY5 = shuffleCross1Y2 + musicButtonDivDimension*1/16;
float shuffleTriX6 = shuffleCross1X2 + + musicButtonDivDimension*1/16;
float shuffleTriY6 = shuffleCross1Y2;
//
square(randomStartButtonX, randomStartButtonY, randomStartButtonDimension);
square(stopButtonX, stopButtonY, stopButtonDimension);
square(muteButtonX, muteButtonY, muteButtonDimension);
line(muteButtonCross1X1, muteButtonCross1Y1, muteButtonCross1X2, muteButtonCross1Y2);
line(muteButtonCross2X1, muteButtonCross2Y1, muteButtonCross2X2, muteButtonCross2Y2);
rect(prevX, prevY, prevWidth, prevHeight);
triangle(prevX1, prevY1, prevX2, prevY2, prevX3, prevY3); //Triangle is pointed the opposite of PLAY & 1/2 of DIV
triangle(fastRewindX1, fastRewindY1, fastRewindX2, fastRewindY2, fastRewindX3, fastRewindY3);  //Triangle is pointed the opposite of PLAY & 1/2 of DIV
triangle(fastRewindX4, fastRewindY4, fastRewindX5, fastRewindY5, fastRewindX6, fastRewindY6);
rect(pauseX1, pauseY1, pauseWidth1, pauseHeight1);
rect(pauseX2, pauseY2, pauseWidth2, pauseHeight2);
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
square(loopOnceX, loopOnceY, loopOnceDimension);
triangle(loopOnceX1, loopOnceY1, loopOnceX2, loopOnceY2, loopOnceX3, loopOnceY3);
//Note: Loop Once button has "1"
square(loopOnceStrNumX, loopOnceStrNumY, loopOnceStrNumDimension);
square(loopInfiniteX, loopInfiniteY, loopInfiniteDimension);
triangle(loopInfiniteX1, loopInfiniteY1, loopInfiniteX2, loopInfiniteY2, loopInfiniteX3, loopInfiniteY3);
//Note: Loop infinite button same as loop once, without text "1"
square(loopInfiniteStrNumX, loopnfiniteStrNumY, loopnfiniteStrNumDimension);
triangle(fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3);
triangle(fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6);
triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
rect(nextX, nextY, nextWidth, nextHeight);
line(shuffleCross1X1, shuffleCross1Y1, shuffleCross1X2, shuffleCross1Y2);
line(shuffleCross2X1, shuffleCross2Y1, shuffleCross2X2, shuffleCross2Y2);
triangle(shuffleTriX1, shuffleTriY1, shuffleTriX2, shuffleTriY2, shuffleTriX3, shuffleTriY3);
triangle(shuffleTriX4, shuffleTriY4, shuffleTriX5, shuffleTriY5, shuffleTriX6, shuffleTriY6);
//
