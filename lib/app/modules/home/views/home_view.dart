import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Get.toNamed(TodoveiwView.id);
        },
      ),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (context, index) => Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.green,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            onDismissed: (_){
              homeController.todo.removeAt(index);
              Get.snackbar('Remove', 'Task was succesfully delete')
            },
        ) 
      ),
    );
  }
}
