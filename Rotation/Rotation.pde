import de.itd.inandout.*; //<>//

void settings() {
  Console.init(this);
  size(400, 500);
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
  rotNumbers = new IntList();

  for (int i = 1; i <= countnum; i++) {
    Console.write(i + ": ");
    num = int(Console.readLine());
    numbers.append(num);
    print(num);
  }

  // Get number of rotations
  Console.write("Um wieviele Zahlen rotieren: ");
  String rotationAsString = Console.readLine();
  int rotation = Integer.valueOf(rotationAsString);

  // rotate that shit
  println("");
  for (r = 0; r <= countnum; r++) {
    if (r >= numbers.size()) {
      //pos = 
    }
    zwischenablageEins = numbers.get(r);
    print(zwischenablageEins); //<>//
    rotNumbers.set(r+rotation, zwischenablageEins);
  }


  Console.writeLine("");
  Console.writeLine("");


  for (int i = 0; i <= numbers.size(); i++) {
    Console.writeLine(rotNumbers.get(i));
  }
}
