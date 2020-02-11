import 'dart:io';

/*
void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

void task2() {
  Duration three = Duration(seconds: 3);

  // sync way
//  sleep(three);
  /*
    This class is used as an example.

   To ask about multiline comments.
   */
  // async way
  Future.delayed(three, () {
    String result = 'task 2 data';
    print('Task 2 complete');
  });
//  String result = 'task 2 data';
//  print('Task 2 complete');
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete');
}

 */

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String tast2data = await task2();
  task2();
  task3(tast2data);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration three = Duration(seconds: 3);

  String result;
  // async way
  await Future.delayed(three, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(tast2data) {
  String result = 'task 3 data';
  print('Task 3 complete $tast2data');
}
