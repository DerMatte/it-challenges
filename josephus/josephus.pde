// Josephus Problem
//
// (C) Matthias

import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  
  Console.write("Anzahl der Personen: ");
  String StringPeople = Console.readLine();
  int numPeople = Integer.valueOf(StringPeople);
  
  Console.write("Schrittgröße: ");
  String StringStepSize = Console.readLine();
  int stepSize = Integer.valueOf(StringStepSize);
}
