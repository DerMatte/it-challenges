/*
  Rotation w/ arrays
 */

import de.itd.inandout.*;

void settings() {
  Console.init(this);
  size(400, 500);
}

int[] numbers;

int num;
int pos;
int clipboard1;
int clipboard2;

void setup() {  
  // get Number
  Console.write("Anzahl der Zahlen: ");
  String numAsString = Console.readLine();
  int countnum = Integer.valueOf(numAsString);

  numbers = new int[countnum];

  for (int i = 1; i <= countnum; i++) {
    Console.write(i + ": ");
    num = int(Console.readLine());
    numbers[i-1] = num;
  }
  //printArray(numbers);
  
  // Get number of rotations
  Console.write("Um wieviele Zahlen rotieren: ");
  String rotationAsString = Console.readLine();
  int rotation = Integer.valueOf(rotationAsString);

  //println("");
  num = 0;

  pos = countnum - (rotation % countnum);

  for (int i = 0; i < countnum; i++)
  {
    
    Console.writeLine(numbers[pos]);

    if ( ++pos >= countnum ) {
      pos = 0;
    }
  }
}
