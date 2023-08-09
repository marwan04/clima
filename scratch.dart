import 'dart:io';

void main() {
  preformTasks();
}

void preformTasks() {
  task1();
  print(task2());
  // task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result = '';

  await Future.delayed(threeSeconds , () {
    result = 'task 2 data';
    print('task 2 complete');
  });

  return result;
}

void task3 (String task2Dtata) {
  String result = 'task 1 data';
  print('Task 1 complete $task2Dtata');
}