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

  for (int i = 1; i <= numPeople; i++) {
    People.add(i);
  }

  while (People.size() != 0) {
    pos += stepSize - 1;
    pos = pos % People.size();
    Console.writeLine(People.get(pos));
    People.remove(pos);
  }
}
