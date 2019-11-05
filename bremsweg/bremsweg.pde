import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  // Geschwindigkeit
  Console.write("Geschwindigkeit des Fahrzeuges (km/h): ");
  String speedAsString = Console.readLine();
  float speedinKMH = Integer.valueOf(speedAsString);
  float speed = speedinKMH / 3.6;
  
  // Trocken / Nass
  Console.write("Fahrbahn trocken/nass [t/n]: ");
  String wetordry = Console.readLine();
  int bremsbeschleunigung = 0;
  boolean nass;
  
  switch(wetordry.charAt(0)) {
    case 'n':
      nass = true;
      bremsbeschleunigung = 4;
      break;
    case 't':
      nass = false;
      bremsbeschleunigung = 7;
      break;
  }
  float reaktionsweg = speed * 1.44;
  float bremsweg = pow(speed, 2) / (2 * bremsbeschleunigung);
  float anhaltestrecke = reaktionsweg + bremsweg;
  
  Console.write("Anhaltestrecke: %s m", nf(anhaltestrecke,0,2));
}