import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  Console.writeLine("Geben Sie den Namen ein:");
  String name = Console.readLine();
  Console.writeLine();
  Console.writeLine("Hallo, %s !", name);
}