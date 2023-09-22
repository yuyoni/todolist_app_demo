// lib/provider/todo_default.dart
import 'package:flutter_todolist_app/models/todo.dart';

class TodoDefault {
  List<Todo> dummyTodos = [
    Todo(id: 1, title: '플러터 공부하기', description: '플러터 책 40p까지 읽기'),
    Todo(id: 2, title: '서점가기', description: '플러터 책 사러가기'),
    Todo(id: 3, title: '공원에서 운동하기', description: '러닝 40분 이상하기'),
    Todo(id: 4, title: '6시 약속', description: '일광에서 친구들이랑 술약속!'),
  ];

  List<Todo> getTodos() {
    return dummyTodos;
  }

  Todo getTodo(int id) {
    return dummyTodos[id];
  }

  Todo addTodo(Todo todo) {
    Todo newTodo = Todo(
        id: dummyTodos.length + 1,
        title: todo.title,
        description: todo.description);
    dummyTodos.add(newTodo);
    return newTodo;
  }

  void deletetodo(int id) {
    for (int i = 0; i < dummyTodos.length; i++) {
      if (dummyTodos[i].id == id) {
        dummyTodos.removeAt(i);
      }
    }
  }

  void updateTodo(Todo todo) {
    for (int i = 0; i < dummyTodos.length; i++) {
      if (dummyTodos[i].id == todo.id) {
        dummyTodos[i] = todo;
      }
    }
  }
}
