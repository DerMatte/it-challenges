import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  Console.write("Zahl: ");
  String digitext = Console.readLine();
  int digit = Integer.valueOf(digitext);
  //int i = 0;
  for (int i = 0; i < digit; i++) {
    Console.writeLine("Wiederholung");
  } 
  //while (i == digit) {
  //  Console.writeLine("Wiederholung");
  //  digit++;
  //}
}