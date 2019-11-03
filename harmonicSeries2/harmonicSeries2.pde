import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  Console.write("Zahl: ");
  String valueAsString = Console.readLine();
  int value = Integer.valueOf(valueAsString);
  double sum = 1.0000;
  
  
  if (value >= 0) {
    for (int i = 1; i <= value; i++) {
      
      
      sum = sum + (1 / i);
    
    }
  } // else {Console.writeLine("Error!");}
  
  Console.writeLine(sum);
}

// double quickres = 1 / i;
