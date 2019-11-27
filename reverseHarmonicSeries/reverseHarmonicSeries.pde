import de.itd.inandout.*;

void settings() {
  Console.init(this);
}
//boolean revBoolean(boolean b) {
//  if (b == true)
//    return false;
//  else if (b == false)
//    return true;
//}

void setup() {
  Console.write("Zahl: ");
  String valueAsString = Console.readLine();
  int value = Integer.valueOf(valueAsString);
  float sum = 0;

  boolean isSum = false;

  if (value >= 0) {
    for (float i = 1; i <= value; i++) {

      if (isSum == false) {
        sum = sum + pow(i, -1);
        //isSum = false;
        //print(" added");
      } else if (isSum == true) {
        sum = sum - pow(i, -1);
        //isSum = true;
        //print(" subtracted");
      }
      isSum = !isSum;
    }
  }

  Console.writeLine(nf(sum, 0, 4));
}