import de.itd.inandout.*;

void settings() {
  Console.init(this);
}
/* JAVASCRIPT
 function isPrime(num) {
 for(var i = 2; i < num; i++)
 if(num % i === 0) return false;
 return num > 1;
 }
 */

boolean isPrime( int number) {
  for ( int i = 2; i < number; i++)
    if (number % i == 0)
      return false;
  return number > 1;
}    


void setup() {
  boolean prime = true;
  int[] smallPrimes = {2, 3, 5, 7, 11, 13, 17, 19};

  Console.write("Welche Zahl prüfen? ");
  String numString = Console.readLine();
  int num = Integer.valueOf(numString);


  if (isPrime(num) == false) {
    Console.write(false);
  } else {
    Console.write(true);
  }
}



boolean isOdd(int n) {
  return n % 2 != 0;
}
