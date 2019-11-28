import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

IntList numbers;
IntList rotNumbers;

int num;
int r;
int zwischenablageEins;
int zwischenablageZwei;
int pos;

void setup() {
  
  // get Number
  Console.write("Anzahl der Zahlen: ");
  String numAsString = Console.readLine();
  int countnum = Integer.valueOf(numAsString);
  
  
  numbers = new IntList();
  
  for (int i = 1; i <= countnum; i++) {
    Console.write(i + ": ");
    num = int(Console.readLine());
    numbers.append(num);
    print(num);
  }
  
  // Get number of rotations
  //Console.write("Um wieviele Zahlen rotieren: ");
  //String rotationAsString = Console.readLine();
  //int rotation = Integer.valueOf(rotationAsString);
  
  // rotate that shit
  
  for (r = 0; r <= countnum-2; r++) {
    zwischenablageEins = numbers.get(r);
    zwischenablageZwei = numbers.get(r+1);
    println(zwischenablageEins); //<>//
    println(zwischenablageZwei); //<>//
    //if (r <= r+2) {
      
    //} 
    numbers.set(zwischenablageEins, r+1);
  }
  Console.writeLine("");
  Console.writeLine("");
  for (int i = 0; i <= numbers.size(); i++) {
    Console.writeLine(numbers.get(i));
  }
}
