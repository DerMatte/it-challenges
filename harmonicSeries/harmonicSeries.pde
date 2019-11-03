import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {

    Console.write("Zahl: ");
    String numberAsString = Console.readLine();
    int n = Integer.valueOf(numberAsString);
    
    //float res = 0;
    //float a = 0.0000;
    
    for (int i = n; i == 0; i--) {
      
      float res = 1 / i;
      Console.writeLine(i);
    }

    //Console.writeLine(res);
    //Console.writeLine(n);
    
}