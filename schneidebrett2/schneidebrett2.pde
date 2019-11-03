import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  boolean fits = false;
  
  // Breite
  Console.write("Schubladenbreite: ");
  String breite = Console.readLine();
  int schubladenbreite = Integer.valueOf(breite);
  
  // Tiefe
  Console.write("Schubladentiefe: ");
  String tiefe = Console.readLine();
  int schubladentiefe = Integer.valueOf(tiefe);

  Console.writeLine("");
  // println(schubladenbreite, schubladentiefe);
  // keyCode != 70 || keyCode != 17
  
  while (fits != true) {
    Console.write("Länge des Schneidebretts: ");
    String brettlaenge = Console.readLine();
    int SchneidebrettLaenge = Integer.valueOf(brettlaenge);
    
    //Console.writeLine("");
    
    Console.write("Breite des Schneidebretts: ");
    String brettbreite = Console.readLine();
    int SchneidebrettBreite = Integer.valueOf(brettbreite);
    
    if (schubladenbreite >= SchneidebrettLaenge && schubladentiefe >= SchneidebrettBreite) {
      Console.write("Das Schneidebrett %sx%d passt", SchneidebrettLaenge, SchneidebrettBreite);
      fits = true;
    } else if (schubladenbreite >= SchneidebrettBreite && schubladentiefe >= SchneidebrettLaenge) {
      Console.write("Das Schneidebrett %sx%d passt", SchneidebrettLaenge, SchneidebrettBreite);
      fits = true;
    } else {
      Console.write("Das Schneidebrett passt leider nicht");
      Console.writeLine("");
      fits = false;
    }
    Console.writeLine("");
    //Console.writeLine("");
  }
  //exit();
}
