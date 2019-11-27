import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  // get Number
  Console.write("Geben Sie eine Zahl ein: ");
  String valueAsString = Console.readLine();
  int value = Integer.valueOf(valueAsString);
  // Get number of Iterations
  Console.write("Anzahl Iterationen: ");
  String iterationsAsString = Console.readLine();
  int iteration = Integer.valueOf(iterationsAsString);

  int nr = value;
  int xn;

  // calc

  for (int i = iteration; i >= 0; i--) {
    xn = (xn + nr / xn) / 2;
    xn++;
    Console.write(xn);
  }
}