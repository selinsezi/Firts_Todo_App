import 'package:flutter/material.dart';
import 'package:/to_do/app/modules/home/todo_model.dart';
import 'package:to_do/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:to_do/app/modules/home/controllers/home_controller.dart';

class TodoveiwView extends GetView {
  static const id = 'todoview';
  final HomeController homeController = Get.find<HomeController>();
  final TextEditingController textEditingController = TextEditingController();
  TodoveiwView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                  hintText: 'Add your To-Do',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none),
              style: const TextStyle(
                fontSize: 24.0,
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 20,
              autofocus: true,
              controller: textEditingController,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text('cancel'),
                onPressed: () {
                  Get.back();
                },
              ),
              ElevatedButton(
                child: const Text('Add To-Do'),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          )
        ]),
      ),
    );
  }
}
