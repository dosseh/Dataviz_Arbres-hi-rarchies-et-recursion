class Fichier extends SimpleMapItem {
  Repertoire parent;
  File fichier;
  String nom;
  int niveau;

  float sp;
  float gauche, haut, droite, bas;

  color c;
  float teinte;
  float valeur;

  Fichier(Repertoire parent, File fichier, int niveau, int ordre) {
    this.parent = parent;
    this.fichier = fichier;
    this.order = ordre;
    this.niveau = niveau;
    nom = fichier.getName();
    size = fichier.length();
  }

  void calcBoite() {
    gauche = x;
    haut = y;
    droite = x + w;
    bas = y + h;
  }

  void draw() {      

    calcBoite();
    fill(c);
    rect(gauche, haut, droite, bas);
    if (assezGrand()) {
      dessineTitre();
      whereAmi();
    } else if (contientSouris()) {
      courant = this;
    }
  }

  void dessineTitre() {
    fill(255, 200);
    textAlign(LEFT);
    text(nom, gauche + sp, bas + sp);
  }

  boolean assezGrand() {
    float largeur = textWidth(nom) + sp*2;
    float hauteur = textAscent() + textDescent() + sp*2;
    return ((droite - gauche) > largeur) && ((bas-haut) > hauteur);
  }

  boolean contientSouris() {
    return (mouseX > gauche && mouseX < droite && mouseY > haut && mouseY < bas);
  }

  boolean mousePressed() {

    if (contientSouris()) {

      if (mouseButton == RIGHT) {
        parent.cacheLeContenu();
        return true;
      }
    }
    return false;
  }

  void majCouleurs() {
    if (parent != null) {
      teinte = map(order, 0, parent.getItemCount(), 0, 360);
    }
    valeur = random(20, 80);

    colorMode(HSB, 360, 100, 100);
    if (parent == racine) {
      c = color(teinte, 80, 80);
    } else if (parent != null) {
      c = color(parent.teinte, 80, valeur);
    }
    colorMode(RGB, 255);
  }

  void whereAmi() {
    int i = 0 ;
    String recuva = fichier.getAbsolutePath();
    String[] getCharacter = recuva.split("/"); 
    if (contientSouris()) {
      println(recuva);
      for (char pathChar : recuva.toCharArray()) {
        if (pathChar == '/') {
          i++;
        }
      }
      textFont(font);
      println(getCharacter[i-1]);
      fill(#0BE35F);
      textAlign(RIGHT);
      text(getCharacter[i-1], mouseX, mouseY );
      surface.setTitle("PATH -> "+ recuva);

    }
  }
}
