import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:to_do/app/modules/home/views/home_view.dart';
import 'package:to_do/app/views/views/todoveiw_view.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  static const String title = 'Todo List';
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
