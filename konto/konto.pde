import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  int savings = 0;
  boolean auszahlen;

  while (true) {

    String command = Console.readLine();

    //String command = args[0];
    String splited[] = command.split(" ");

    int number = Integer.parseInt(splited[1]);
    
    if (number >= 0) {
      if (splited[0].contains("auszahlen")) {
        auszahlen = true;
        if (savings >= number) {
          savings -= number;
          Console.writeLine("Aktueller Kontostand: " + savings);
          break;
        } else {
          Console.writeLine("Ein Überziehen des Konto ist nicht erlaubt.");
        }
      } else if (command.contains("einzahlen")) {
        auszahlen = false;
        savings += number;
        Console.writeLine("Aktueller Kontostand: " + savings);
        break;
      }
    } else {
      Console.writeLine("Negative Beträge sind nicht erlaubt.");
    }


    
  }



  //while (readout != null) {}
}
