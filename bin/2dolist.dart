import 'dart:io';

class Task {
  String name;
  bool isCompleted;

  Task(this.name) : isCompleted = false;

  void toggleComplete() {
    isCompleted = !isCompleted;
  }

  @override
  String toString() {
    return '${isCompleted ? "[x]" : "[ ]"} $name';
  }
}

void main() {
  List<Task> tasks = [];
  while (true) {
    print('\n1. ADD\n2. VIEW \n3. EXIT');
    stdout.write('Enter choice: ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('ENTER : ');
      String? taskName = stdin.readLineSync();
      if (taskName != null && taskName.isNotEmpty) tasks.add(Task(taskName));
    } else if (choice == '2') {
      print('\nLIST :');
      for (int i = 0; i < tasks.length; i++) {
        print('${i + 1}. ${tasks[i]}');
      }
    } else if (choice == '3') {
      break;
    }
  }
}
