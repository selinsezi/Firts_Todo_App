import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/app/modules/home/controllers/home_controller.dart';

class EditviewView extends GetView {
  final int? index;
  EditviewView({Key? key, @required this.index}) : super(key: key);
  final HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController =
        TextEditingController(text: homeController.todo[index!].content);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "todo",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                style: const TextStyle(fontSize: 24.0),
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
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('cancel')),
                ElevatedButton(
                    onPressed: () {
                      var edit = homeController.todo[index!];
                      edit.content = textEditingController.text;
                      homeController.todo[index!] = edit;
                      Get.back();
                    },
                    child: const Text('edit')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
