/* Purpose: repeating DIVs (used to begin data strctures)
 OR more of a celebraiton card: a project that leads to value added
 - How a student can code something and then modify the code easily for a value added model of bartering or sale

 - Concrete Action of Copy and Paste, leading to repeating variables and code
 - Display Geometry: Landscape, Portrait, Square
 
 - Input: Dislay Geometry
 - Output: 2D Rectangles
 
 - Algorithym: Use displayWidth, count #Buttons including edge space
 
 - CAUTION: compares "cost" of line() and square()
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
float quitX = appWidth - appHeight*1/20;
float quitY = 0;
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;
float randomStartDIV_X = 0;
float randomStartDIV_Y = 0;
float randomStartDIV_Width = appHeight*1/20;
float randomStartDIV_Height = appHeight*1/20;
float songTitleDivX = beginningButtonSpace;
float songTitleDivY = appHeight*1.5/20;
float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float songTitleDivHeight = appHeight*1/10;
float imageDivX = beginningButtonSpace;
float imageDivY = appHeight*4.5/20;
float imageDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*1.5/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;
//
float stopDivX = beginningButtonSpace + widthOfButton*0;
float stopDivY = buttonY;
float stopDivWidth = widthOfButton;
float stopDivHeight = widthOfButton;
//
float muteDivX = beginningButtonSpace + widthOfButton*1;
float muteDivY = buttonY;
float muteDivWidth = widthOfButton;
float muteDivHeight = widthOfButton;
//
float previousDivX = beginningButtonSpace + widthOfButton*2;
float previousDivY = buttonY;
float previousDivWidth = widthOfButton;
float previousDivHeight = widthOfButton;
//
float fastRewindDivX = beginningButtonSpace + widthOfButton*3;
float fastRewindDivY = buttonY;
float fastRewindDivWidth = widthOfButton;
float fastRewindDivHeight = widthOfButton;
//
float pauseDivX = beginningButtonSpace + widthOfButton*4;
float pauseDivY = buttonY;
float pauseDivWidth = widthOfButton;
float pauseDivHeight = widthOfButton;
//
float playDivX = beginningButtonSpace + widthOfButton*5; //TEACHER Only" manipulate this number to draw simulate all buttons
float playDivY = buttonY;
float playDivWidth = widthOfButton;
float playDivHeight = widthOfButton;
//
float loopOnceDivX = beginningButtonSpace + widthOfButton*6;
float loopOnceDivY = buttonY;
float loopOnceDivWidth = widthOfButton;
float loopOnceDivHeight = widthOfButton;
//
float loopInfiniteDivX = beginningButtonSpace + widthOfButton*7;
float loopInfiniteDivY = buttonY;
float loopInfiniteDivWidth = widthOfButton;
float loopInfiniteDivHeight = widthOfButton;
//
float fastForwardDivX = beginningButtonSpace + widthOfButton*8;
float fastForwardDivY = buttonY;
float fastForwardDivWidth = widthOfButton;
float fastForwardDivHeight = widthOfButton;
//
float nextDivX = beginningButtonSpace + widthOfButton*9;
float nextDivY = buttonY;
float nextDivWidth = widthOfButton;
float nextDivHeight = widthOfButton;
//
float shuffleDivX = beginningButtonSpace + widthOfButton*10;
float shuffleDivY = buttonY;
float shuffleDivWidth = widthOfButton;
float shuffleDivHeight = widthOfButton;
//
float musicSongPaddingY = widthOfButton*1/4;
float musicSongSpaceX = stopDivX;
float musicSongSpaceY = stopDivY + widthOfButton + musicSongPaddingY;
float musicSongSpaceWidth = appWidth - widthOfButton*2;
float musicSongSpaceHeight = appHeight - musicSongPaddingY - musicSongSpaceY;
//rect(musicSongSpaceX, musicSongSpaceY, musicSongSpaceWidth, musicSongSpaceHeight); //testing only
float songPositionDivX = musicSongSpaceX;
float songPositionDivY = musicSongSpaceY;
float songPositionDivWidth = musicSongSpaceWidth*1/5;
float songPositionDivHeight = musicSongSpaceHeight*2/5;
float timeRemainingDivX = musicSongSpaceX + musicSongSpaceWidth*3/5;
float timeRemainingDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
float timeRemainingDivWidth = musicSongSpaceWidth*1/5;
float timeRemainingDivHeight = musicSongSpaceHeight*2/5;
float totalTimeDivX = musicSongSpaceX + musicSongSpaceWidth*4/5;
float totalTimeDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
float totalTimeDivWidth = musicSongSpaceWidth*1/5;
float totalTimeDivHeight = musicSongSpaceHeight*2/5;
float musicSongSpaceButtonHeight = musicSongSpaceHeight*1/5;
float timeBarDivX = musicSongSpaceX;
float timeBarDivY = musicSongSpaceY + musicSongSpaceHeight*2/5;
float timeBarDivWidth = musicSongSpaceWidth;
float timeBarDivHeight = musicSongSpaceHeight*1/5;
//
//DIVs: rect(X, Y Width, Height);
//DIVs
//rect(X, Y, Width, Height)
rect(randomStartDIV_X, randomStartDIV_Y, randomStartDIV_Width, randomStartDIV_Height);
rect(quitX, quitY, quitWidth, quitHeight);
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight);  //*0
rect(muteDivX, muteDivY, muteDivWidth, muteDivHeight); //*1
rect(previousDivX, previousDivY, previousDivWidth, previousDivHeight); //*2
rect(fastRewindDivX, fastRewindDivY, fastRewindDivWidth, fastRewindDivHeight); //*3
rect(pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight); //*4
rect(playDivX, playDivY, playDivWidth, playDivHeight); //*5
rect(loopOnceDivX, loopOnceDivY, loopOnceDivWidth, loopOnceDivHeight);
rect(loopInfiniteDivX, loopInfiniteDivY, loopInfiniteDivWidth, loopInfiniteDivHeight);
rect(fastForwardDivX, fastForwardDivY, fastForwardDivWidth, fastForwardDivHeight);
rect(nextDivX, nextDivY, nextDivWidth, nextDivHeight);
rect(shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight);
rect(songPositionDivX, songPositionDivY, songPositionDivWidth, songPositionDivHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(timeBarDivX, timeBarDivY, timeBarDivWidth, timeBarDivHeight);
rect(timeRemainingDivX, timeRemainingDivY, timeRemainingDivWidth, timeRemainingDivHeight);
rect(totalTimeDivX, totalTimeDivY, totalTimeDivWidth, totalTimeDivHeight);
//
