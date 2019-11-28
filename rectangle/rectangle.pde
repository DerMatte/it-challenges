//  Rectangle //<>// //<>// //<>// //<>//
//
// (C) Matthias

import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  Console.write("Breite: ");
  String widthString = Console.readLine();
  int wid = Integer.valueOf(widthString);

  Console.write("Höhe: ");
  String heightString = Console.readLine();
  int hght = Integer.valueOf(heightString);


  if (wid <= 1) {
    for (int h = 1; h <= hght; h++) {
      Console.writeLine("");
      Console.write("*");
    }
  } else if (hght <= 1) {
    for (int w = 1; w <= wid; w++) {
      Console.write("*");
    }
  } else if (wid >= 2 && hght >= 2) {
    for (int w = 1; w <= wid; w++) {
      Console.write("*");
    }
    for (int h = 1; h <= hght-2; h++) {
      Console.writeLine("");
      Console.write("*");
      for (int i=1; i <= wid-2; i++) {
        Console.write(" ");
      }
      Console.write("*");
    }
    Console.writeLine("");
    for (int w = 1; w <= wid; w++) {
      Console.write("*");
    } //else if (wid >= 2 && hght >= 2)
  }
}
