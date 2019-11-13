import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  boolean men;
  Console.write("Geschlecht [m/w]:");
  String genderString = Console.readLine();
  char cha = genderString.charAt(0);
  if (cha == 'm') {
    men = true;
  } else {
    men = false;
  }
  // TODO: able to use Commas
  Console.write("Gewicht [kg]: ");
  String weightString = Console.readLine();
  String weight_String = weightString.replaceAll(",", ".");
  float weight = Float.parseFloat(weight_String);

  Console.write("Größe [m]: ");
  String heightString = Console.readLine();
  String height_String = heightString.replaceAll(",", ".");
  float heigh = Float.parseFloat(height_String);
  
  Console.writeLine();
  // Done: Runden!!!
  float bmifloat = Math.round(weight / pow(heigh, 2));
  int bmi = parseInt(bmifloat);
  Console.writeLine("BMI: " + bmi);

  // Untergewicht
  if (men == true && bmi <= 20 || men == false && bmi <= 19) {
    Console.writeLine("Untergewicht");
  } else if (men == true && bmi >= 20 && bmi <= 25 || men == false && bmi >= 19 && bmi <= 24) {
    Console.writeLine("Normalgewicht");
  } else if (men == true && bmi >= 25 || men == false && bmi >= 24) {
    Console.writeLine("Übergewicht");
  }
}