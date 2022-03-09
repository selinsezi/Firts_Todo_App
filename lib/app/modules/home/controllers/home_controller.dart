import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../todo_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  var todo = List<Todo>.empty().obs;

  final count = 0.obs;
  @override
  void onInit() {
    List? storedTodos = GetStorage().read<List>('todo');
    if (storedTodos != null) {
      todo = storedTodos.map((e) => Todo.fromJson(e)).toList().obs;
    }

    ever(todo) {
      GetStorage().write('todo', todo.toList());
    }

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
