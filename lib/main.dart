import 'package:flutter/material.dart';
import 'package:test_app1/next_page.dart';
import 'package:test_app1/details.dart';

void main() {
  runApp(todoApp());
}

class todoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('リスト一覧'),
          actions: [
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TodoDetails()));
                })
          ],
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(todoList[index]),
            ));
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final newListText = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TodoAddPage()),
            );
            print("newListText");
            print(newListText);
            if (newListText != null) {
              setState(() {
                todoList.add(newListText);
              });
            }
          },
          child: Icon(Icons.add),
        ));
  }
}
