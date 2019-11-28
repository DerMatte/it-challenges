import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  // get Number
  Console.write("Geben Sie eine Zahl ein: ");
  String numAsString = Console.readLine();
  int num = Integer.valueOf(numAsString);
  // Get number of Iterations
  Console.write("Anzahl Iterationen: ");
  String iterationsAsString = Console.readLine();
  int iteration = Integer.valueOf(iterationsAsString);

  int nr = num;
  int xn;

  // calc
  xn = (xn + nr / xn) / 2;

  Console.write(xn);
    
    
  //for (int i = 0; i >= iteration; i--) {
    
  //}
}
