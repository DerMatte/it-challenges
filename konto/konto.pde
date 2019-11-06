import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  int savings = 0;
  boolean auszahlen;
  
  while (true) {
    Console.write("Command: ");
    String command = Console.readLine();
    
    //String command = args[0];
    
    Console.write("Number: ");
    String numberasString = Console.readLine();
    int number = Integer.valueOf(numberasString);
    
    
    switch(command.charAt(0)) {
      case 'a':
        auszahlen = true;
        if (savings >= number) {
          savings -= number;
        } else {Console.writeLine("Ein Überziehen des Konto ist nicht erlaubt.");}
        break;
      case 'e':
        auszahlen = false;
        savings += number;
        break;
    }
    
    Console.writeLine("Aktueller Kontostand: " + savings);
  }
  


  //while (readout != null) {}
  
  
}
