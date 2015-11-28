class city 
{ 
int postalcode = 0; 
String name = ""; 
float x = 0; 
float y =0; 
float population=0; 
float density=0; 
float altitude = 0;
float rayon;
float surface=0;
boolean isSelected = false;
boolean IsClicked = false;
color black = color(0);
color blue = color(0,0,255);
color red = color(255,0,0);
color green = color(0,255,0);
// put a drawing function in here and call from main drawing loop } 

void draw(int a,int b, int c) {
   color couleur;
   float pop = (population/maxPopulation);
   density = population/surface;
    rayon = pop * 100;
    couleur = lerpColor(blue, red, (density/20119) * 2);
    if (isSelected) {
    couleur = color(161,217,155);
    }
    if (IsClicked) {
    couleur = green;
    }
      fill(couleur);
           if (!isSelected) {
    ellipse((int)mapX(x), (int) mapY(y), rayon, rayon); 
           }
     if (isSelected) {
      ellipse((int)mapX(x), (int) mapY(y), rayon, rayon); 
      fill(0,0,0);
      rect((int)mapX(x),(int) mapY(y),textWidth(name)+30,20);
      fill(255,255,255);
      textSize(16);     
      text(name,(int)mapX(x),(int)mapY(y)+15);  
  }
}
 boolean contains(int px, int py) {
    return dist((int) mapX(x), (int) mapY(y), px, py) <= rayon/2;
  }
}