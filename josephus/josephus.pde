// Josephus Problem
//
// (C) Matthias

import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  ArrayList<Integer> People;
  int pos = 0;

  Console.write("Anzahl der Personen: ");
  String StringPeople = Console.readLine();
  int numPeople = Integer.valueOf(StringPeople);

  Console.write("Schrittgröße: ");
  String StringStepSize = Console.readLine();
  int stepSize = Integer.valueOf(StringStepSize);

  People = new ArrayList<Integer>();

  for (int x = 1; x <= numPeople; x++) {
    People.add(x);
  }

  while (People.size()!=0) {
    pos += stepSize - 1;
    pos = pos%People.size();
    Console.writeLine(People.get(pos));
    People.remove(pos);
  }
}
