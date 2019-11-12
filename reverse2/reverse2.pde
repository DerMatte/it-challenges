import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {

  Console.write("Zahl: ");
  String digitastring = Console.readLine();
  int digit = Integer.valueOf(digitastring); //<>//
  //int newNumber = digit;
  //println(newNumber);
  digitastring = str(digit);
  
  String revString = new StringBuilder(digitastring).reverse().toString();
  println(revString);
  
  int number = Integer.parseInt(revString);
  //if (number.contains == '0') {}
  
  Console.write(number);


}
