import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  Console.write("Uhrzeit: ");
  String valueAsString = Console.readLine();
  int value = Integer.valueOf(valueAsString);

  int min;
  int waitmin;

  int slength = valueAsString.length();

  if (slength == 4 || slength == 3) {
    min = value % 100;
    if (min <= 30) {
      waitmin = 30 - min;
      Console.write("Der nächste Bus fährt in %s Minuten.", waitmin);
    } else if (min <= 60 && min >= 31 ) {
      waitmin = 60 - min;
      Console.write("Der nächste Bus fährt in %s Minuten.", waitmin);
    }
  } else if (value <= 60) {
    min = value;
    if (min <= 30) {
      waitmin = 30 - min;
      Console.write("Der nächste Bus fährt in %s Minuten.", waitmin);
    } else if (min <= 60 && min >= 31 ) {
      waitmin = 60 - min;
      Console.write("Der nächste Bus fährt in %s Minuten.", waitmin);
    }
  }
}