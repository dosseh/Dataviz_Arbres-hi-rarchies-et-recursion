import treemap.*;

Repertoire racine;
PFont font;
Fichier courant;
void setup() {
  size(1024, 768);
  rectMode(CORNERS);
  font = createFont("SansSerif", 13);
  changerRacine(new File("/home/dosseh/Bureau/TP5/Exercice5_3/data"));
  noStroke();
}

void changerRacine(File rep) {
  Repertoire r = new Repertoire(null, rep, 0, 0);
  r.setBounds(0, 0, width-1, height-1);
  r.contenuVisible = true;
  racine = r;
  r.majCouleurs();
}

void draw() {
  cursor(CROSS);
  background(255);
  textFont(font);
  courant = null;
  if (racine != null) {
    racine.draw();
  }
  if (courant != null) {
    courant.dessineTitre();
    courant.whereAmi();
  }
}

void mousePressed() {
  if (racine != null) {
    racine.mousePressed();
  }
}
