import 'package:flutter/material.dart';

class TodoDetails extends StatefulWidget {
  @override
  _TodoDetailsPageState createState() => _TodoDetailsPageState();
}

class _TodoDetailsPageState extends State<TodoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お気に入りリスト'),
      ),
    );
  }
}
