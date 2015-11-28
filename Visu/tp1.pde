//globally //declare the min and max variables that you need in parseInfo
float minX, maxX; 
float minY, maxY; 
city cities[];
int totalCount; // total number of places 
float minPopulation, maxPopulation; 
float minSurface, maxSurface; 
float minAltitude, maxAltitude;
//globally
//declare the variables corresponding to the column ids for x and y 
float X = 1;
float Y = 2; 
// and the tables in which the city coordinates will be stored
float x[]; 
float y[];
float minPopulationToDisplay = 1000;
city selectedCity;
city clickedCity;
void setup() 
{
  size(800,800); 
  readData();
} 

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if (minPopulationToDisplay == 0){
        minPopulationToDisplay = 1;
      } 
      else {
        minPopulationToDisplay*=5;
      }
    } else if (keyCode == DOWN) {
        minPopulationToDisplay/=5;
    }
  }
  redraw();
}

void mousePressed() {
  city c;
  c = pick(mouseX, mouseY);
  if (c != null && c != clickedCity) {
      if (clickedCity != null) {
      clickedCity.IsClicked = false; 
      }
 clickedCity = c;
  c.IsClicked = true;  
}
    redraw();

}

void mouseMoved() {
  city c;
  c = pick(mouseX, mouseY);
    if (c != null && c != selectedCity) {
      if (selectedCity != null) {
      selectedCity.isSelected = false; 
      }
    println(c.name);
   //println(" Coordonnees en x: " + mouseX + " Coordonnees en y: " + mouseY + selectedCity.name );
    selectedCity = c;  
    c.isSelected = true;
  }
  redraw();
}
city pick(int px, int py) {
  for (int i = 2; i < totalCount-2; i++) {
    if(cities[i].contains(px, py)){
      return cities[i]; 
    }
  }
  return null;
}

void draw(){ background(255); 
//in your draw method 
textSize(12);
 String s = "Afficher les populations supérieures à : " + minPopulationToDisplay;
   text(s, 10, 10, 500, 80); 
color black = color(0);
for (int i = 0 ; i < totalCount-2 ; i++) {
//set((int) mapX(cities[i].x), (int) mapY(cities[i].y), black);
if (cities[i].population > minPopulationToDisplay) {
cities[i].draw((int)mapX(cities[i].x), (int) mapY(cities[i].y), (int) cities[i].altitude);
}
}
}

void readData() 
{ 
//in your readData method 
String[] lines = loadStrings("http://www.cs.toronto.edu/~fchevali/fanny/masterIVI/villes.tsv"); 
//String[] lines = loadStrings("/home/ziad/Téléchargements/villes.tsv"); 
parseInfo(lines[0]); // read the header line 
//in your readData method
x = new float[totalCount]; 
y = new float[totalCount];
cities = new city[totalCount];
for (int i = 2 ; i < totalCount ; ++i) {
String[] columns = split(lines[i], TAB);
city c = new city();
c.x = float (columns[1]);
c.y = float (columns[2]);
c.population = float (columns[5]);
c.altitude = float (columns[7]);
c.name =  (columns[4]);
c.surface =float (columns[6]);
cities[i-2]=c;
}
}

float mapX(float x) { 
return map(x, minX, maxX, 0, 800); }

float mapY(float y) { return map(y, minY, maxY, 800, 0); }

void parseInfo(String line) { 
String infoString = line.substring(2); // remove the # 
String[] infoPieces = split(infoString, ','); 
totalCount = int(infoPieces[0]); 
minX = float(infoPieces[1]); 
maxX = float(infoPieces[2]); 
minY = float(infoPieces[3]); 
maxY = float(infoPieces[4]); 
minPopulation = float(infoPieces[5]); 
maxPopulation = float(infoPieces[6]); 
minSurface = float(infoPieces[7]); 
maxSurface = float(infoPieces[8]); 
minAltitude = float(infoPieces[9]); 
maxAltitude = float(infoPieces[10]); } 