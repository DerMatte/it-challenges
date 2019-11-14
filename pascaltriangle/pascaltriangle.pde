import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  Console.write("Welche größe soll das Dreieck haben? ");
  String readout = Console.readLine();
  int n = Integer.valueOf(readout);
  int[] intarray = new int[n];

  for (int i = 0; i < n; i++) {
    Console.writeLine();
    for (int f = i; f >= 0; f--) {
      if (f == 0 || i == f) {
        // check index 0 // erster index = n
        intarray[f] = 1;
      } else {
        intarray[f] += intarray[f - 1];
      }
      Console.write(intarray[f]);
      if (i > 0) {
        Console.write(" ");
      }
    }
  }

}
