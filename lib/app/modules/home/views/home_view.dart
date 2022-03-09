import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:to_do/app/views/views/editview_view.dart';
import 'package:to_do/app/views/views/todoveiw_view.dart';
import 'package:to_do/main.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  static const id = '/home_view';
  final HomeController homeController = Get.put(HomeController());
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TodoApp.title),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(TodoveiwView.id);
        },
      ),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (context, index) => Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.deepOrange,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            onDismissed: (_) {
              homeController.todo.removeAt(index);
              Get.snackbar('Remove!', "Task was succesfully Delete",
                  snackPosition: SnackPosition.BOTTOM);
            },
            child: ListTile(
              title: Text(
                homeController.todo[index].content!,
              ),
              trailing: IconButton(
                onPressed: () => Get.to(() => EditviewView(index: index)),
                icon: const Icon(Icons.edit),
              ),
              leading: Checkbox(
                value: homeController.todo[index].done,
                onChanged: (neWvalue) {
                  var todo = homeController.todo[index];
                  todo.done = neWvalue!;
                  homeController.todo[index] = todo;
                },
              ),
            ),
          ),
          itemCount: homeController.todo.length,
        ),
      ),
    );
  }
}
