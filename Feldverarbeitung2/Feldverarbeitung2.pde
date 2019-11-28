/*

 second highest number in array
 
 */


import de.itd.inandout.*; 

void settings() {
  Console.init(this);
  //size(600, 600);
}

IntList numbers;
int count = 0;
int num;
int result;
String numAsString;

void setup() {
  numbers = new IntList();
  
  // get Size of Array
  Console.write("Wieviele Elemente soll das Array beinhalten: ");
  numAsString = Console.readLine();
  count = Integer.valueOf(numAsString);

  
  while ( count <= 1 ) {
    Console.write("Bitte geben Sie eine Zahl größer 1 ein!");
    Console.writeLine();
    Console.write("Wieviele Elemente soll das Array beinhalten: ");
    numAsString = Console.readLine();
    count = Integer.valueOf(numAsString);
    
  }

  
  Console.write("Geben Sie nun die Elemente der Reihenfolge nach ein:");
  Console.writeLine("");
  
  for (int i = 1; i <= count; i++) {
    num = int(Console.readLine());
    numbers.append(num);
    print(num);
  }
  // Sort List
  numbers.sortReverse();
  result = numbers.get(1);
  // Print Result
  Console.writeLine();
  Console.writeLine("Ergebnis:");
  Console.write(result);
}
