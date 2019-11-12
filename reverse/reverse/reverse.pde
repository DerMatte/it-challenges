import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {

  Console.write("Zahl: ");
  String digitastring = Console.readLine();
  int digit = Integer.valueOf(digitastring);

  String rev = new StringBuilder(digitastring).reverse().toString();
  Console.write(rev);
}
