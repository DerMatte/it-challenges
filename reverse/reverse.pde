import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {

  Console.write("Zahl: ");
  String digitastring = Console.readLine();
  int digit = Integer.valueOf(digitastring);

  //int last_digit;
  //int revNumber;
  //String rev = new StringBuilder(digitastring).reverse().toString();

  //  while (digit != 0) {    
  //    last_digit = digit % 10;
  //    if (last_digit % 2 != 0) {     
  //        revNumber = revNumber * 10 + last_digit;

  //    }
  //    digit = digit / 10; 
  //}

  //for (int i = 0; i < digit.length / 2; i++)
  //{
  //  int temp = digit[i];
  //  digit[i] = digit[digit.length - i - 1];
  //  digit[digit.length - i - 1] = temp;
  //}


  digitastring = Integer.toString(digit);

  //print(digitastring);

  String temp = Integer.toString(digit);
  int[] stringNumber = new int[temp.length()];
  for (int i = 0; i < temp.length(); i++)
  {
    stringNumber[i] = temp.charAt(i) - '0';
  }

  printArray(stringNumber);

  StringBuilder strNum = new StringBuilder();
  for (int num : stringNumber) 
  {
    strNum.append(num);
  }
  int finalDigit = Integer.parseInt(strNum.toString());
  println(finalDigit);


  Console.write(finalDigit);
}
