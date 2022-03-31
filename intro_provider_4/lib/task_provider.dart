import 'package:flutter/cupertino.dart';
import 'package:intro_provider_4/task_model.dart';
class TaskProvider extends ChangeNotifier{
  List<TaskModel> taskList = []; //contians all the task

  addTaskInList(){
    TaskModel taskModel = TaskModel("title ${taskList.length}", "this is the task no detail ${taskList.length}");
    taskList.add(taskModel);

    notifyListeners();
    //code to do
  }

}