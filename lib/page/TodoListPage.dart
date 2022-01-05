import 'package:flutter/material.dart';
import 'TodoAddPage.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

// リスト一覧画面用Widget
class _TodoListPageState extends State<TodoListPage> {
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'リスト一覧',
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
          child: todoList.isEmpty
              ? const Align(alignment: Alignment.center, child: Text('まだ何もない'))
              : ListView.builder(
                  itemCount: todoList.length,
                  itemBuilder: (context, index) {
                    return Card(child: ListTile(title: Text(todoList[index])));
                  })),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newListText = await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) {
            return TodoAddPage();
          }));
          if (newListText != null) {
            // キャンセルした場合は newListText が null となるので注意
            setState(() {
              todoList.add(newListText);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
