import processing.data.StringList;
import de.itd.inandout.*;

void settings() {
  Console.init(this);
}

void setup() {
  StringList list = new StringList();
  int blank1;
  int listsize = 1;
  String substring;
  String command;
  String item;

  while (true) {
    command = Console.readLine();
    if (command.equals("")) {
      break;
    } else if (command.contains("enqueue ")) {
      //println("Enqueue");
      blank1 = command.indexOf(" ") + 1;
      listsize++;
      //println(listsize);
      substring = command.substring(blank1);
      list.append(substring);
      //println(substring);
    } else if (command.charAt(0) == 'd') {
      //println("Dequeue");
      listsize--;
      //println(listsize);
      item = list.get(0);
      //String[] listArray = list.array();
      Console.writeLine(item);
      list.remove(0);
      if (listsize >= 1) {
      } else { 
        break;
      }
    } else {
      break;
    }
    exit();
  }
}