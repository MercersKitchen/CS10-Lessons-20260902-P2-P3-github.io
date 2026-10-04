/* Library Notes
 - File / Sketch / Import Library / Manage Libraries
 - We use Minim for Sound and Sound Effects
 - Able to Google-search libraries to make your project easier
 - Documentation: https://code.compartmental.net/minim/
 - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 
 ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
 - Processing-Java Libraries must be installed into the IDE
 - Java Libraries simply require the 'import' declaration
 
 - Note: Hard Drive Registery or address
 
 - Library will not execute since not using full compiler
 
 */
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
//Display
size(700, 500); //width //height
//fullScreen(); //displayWidth //displayHeight
int appWidth = width;
int appHeight = height;
//
//Music Loading - STRUCTURED Review
minim = new Minim(this);
String upArrow = "../../";
String lessonDependanciesFolder = "Dependancies/";
String soundEffectsFolder = "Sound Effects/";
String musicPathway = "Music Pong/";
String musicPong = "Music Pong/";
String musicAll = "Music All/";
//Note: Download music and sound effects, then design your player with images, text, and 2D shapes
//See Google Search: Atari pong logo free image download
String carDoor = "Car_Door_Closing";
String pongWorld = "Pong World";

//Add all files, CS20 Review is special OS Java Library
//Including the reading of the number of files in the array
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + lessonDependanciesFolder + musicPathway;
String file = musicDirectory + pongWorld + fileExtension_mp3; //relative pathway or directory
println( file );
playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
//
String soundEffectsDirectory = upArrow + lessonDependanciesFolder + soundEffectsFolder;
file = soundEffectsDirectory + carDoor + fileExtension_mp3; //relative pathway or directory
println( file );
soundEffects[ numberOfSoundEffects-1 ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
//One way to iterate through all Sound Effects
//
//Music Testing
printArray(soundEffects); //Note registry Address on Hard Drive
//soundEffects[0].play(); //Must fully use Comiler: Folder Name / File Name / void setup() / void draw()
printArray(playList); //Note registry Address on Hard Drive
playList[currentSong].play(); //Must fully use Comiler: Folder Name / File Name / void setup() / void draw()
