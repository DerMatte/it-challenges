import de.itd.inandout.*;

void settings() {
  Console.init(this);
}
boolean isEven(int n) {
  return n % 2 == 0;
}
boolean isOdd(int n) {
  return n % 2 != 0;
}

void setup() {
  boolean hit;
  int res;
  
  Console.write("X: ");
  String xString = Console.readLine();
  int x = Integer.valueOf(xString);
  //print(x);
  Console.write("Y: ");
  String yString = Console.readLine();
  int y = Integer.valueOf(yString);
  //print(y);

  // Is number on this field?
  if (x == y || y == x + 2) {
    hit = true;
    //print("Hit!");
  } else if (isEven(x) && isEven(y) && x / y == 2) {
    hit = true;
    //print("HIIT!");
  } else {
    hit = false;
    Console.write("No Number");
  }
  // calc the result if number is a hit
  if (hit == true) {
    if (isEven(x) && isEven(y)) {
      res = x + y;
      Console.write(res);
    } else if (isOdd(x) && isOdd(y)) {
      res = x + y - 1;
      Console.write(res);
    }
    
  }
}
