
import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  Console.write("Geben Sie ein Jahr ein: ");
  String yearAsString = Console.readLine();
  int year = Integer.valueOf(yearAsString);

  if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
    Console.writeLine("true");
  } else {
    Console.writeLine("false");
  }
}