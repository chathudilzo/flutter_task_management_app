import 'package:flutter_task_management_app/db/db_helper.dart';
import 'package:get/get.dart';

import '../models/task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady gets caaled during initi
    super.onReady();
  }

  var taskList = <Task>[].obs;

  Future<int>? addTask({Task? task}) async {
    print(taskList);
    return await DbHelper.insert(task);
  }

//get data from table
  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DbHelper.query();

    taskList.assignAll(tasks.map((data) => new Task.fromJson(data)).toList());
  }

  void delete(Task task) {
    var val = DbHelper.delete(task);
    getTasks();
    print(val);
  }

  void markTaskCompleted(int id) async {
    await DbHelper.update(id);
    getTasks();
  }
}
