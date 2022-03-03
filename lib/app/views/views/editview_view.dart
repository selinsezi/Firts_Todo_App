import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/app/modules/home/controllers/home_controller.dart';

class EditviewView extends GetView {
  final int? index;
  EditviewView({Key? key, @required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "To-Do",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                style:const TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 20,
                autofocus: true,
                controller: TextEditingController,
              ),
            )
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text('cancel'),
                  onPressed: (){
                    Get.back();
                  },
                )
                ElevatedButton(
                  child: const Text('edit'),
                  onPressed: (){
                    
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
