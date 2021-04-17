import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_app1/todo_add.dart';
import 'package:test_app1/favorite_list.dart';

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
  bool isFavorite = false;

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
                      CupertinoPageRoute(builder: (context) => FavoriteList()));
                })
          ],
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              title: Text(todoList[index]),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    if (isFavorite) {
                      isFavorite = false;
                    } else {
                      isFavorite = true;
                    }
                  });
                },
                icon: Icon(isFavorite == true
                    ? Icons.favorite
                    : Icons.favorite_border),
                color: isFavorite == true ? Colors.red : Colors.grey,
              ),
            ));
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final newListText = await Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => TodoAddPage()),
            );
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
