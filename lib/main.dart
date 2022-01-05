import 'package:flutter/material.dart';
import 'package:todoapp/page/TodoListPage.dart';

void main() {
  // 最初に表示するWidget
  runApp(const MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // アプリ名
      title: 'My Todo App',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.blue,
      ),
      // リスト一覧画面を表示
      home: const TodoListPage(),
    );
  }
}
