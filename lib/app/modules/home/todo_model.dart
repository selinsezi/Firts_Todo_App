class Todo {
  String? title;
  String? content;
  bool? done;

  Todo({this.title, this.content, this.done});

  Todo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    done = json['done'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    data['done'] = done;
    return data;
  }
}
