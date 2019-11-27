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
    } else if (command.contains("push ")) {
      blank1 = command.indexOf(" ") + 1;
      listsize++;
      //println(listsize);
      substring = command.substring(blank1);
      list.append(substring);
    } else if (command.contains("pop")) {
      listsize--;
      //println(listsize);
      item = list.get(listsize - 1);
      //String[] listArray = list.array();
      Console.writeLine(item);
      list.remove(listsize - 1);
      if (listsize >= 1) {
      } else { 
        //exit(); 
        break;
      }
    } else {
      break;
    }
    exit();
  }
}