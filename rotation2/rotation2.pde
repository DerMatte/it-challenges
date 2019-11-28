import de.itd.inandout.*; //<>// //<>// //<>//

void settings() {
  Console.init(this);
  size(400, 500);
}

IntList numbers;

int num;
int r;
int zwischenablage;
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
  Console.write("Um wieviele Zahlen rotieren: ");
  String rotationAsString = Console.readLine();
  int rotation = Integer.valueOf(rotationAsString);

  println("");
  // add Zeros
  for (int i = 0; i <= (countnum)-1; i++) {
    numbers.append(0);
  }
  printArray(numbers);

  // rotate that shit
  for (r=0; r <= countnum; r++) {
    if (r >= countnum-1 ) {
      pos = int(numbers.size()) - r;
      print(pos);
    } else {
      zwischenablage = numbers.get(r);
      print(zwischenablage);
      numbers.set(r+rotation-countnum-1, zwischenablage);
      printArray(numbers);
    }
  }
}
