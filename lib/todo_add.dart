import 'package:flutter/material.dart';

class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('リスト追加'),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_text),
              Container(
                  width: double.infinity,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'タスクを入力してください'),
                    onChanged: (String value) {
                      setState(() {
                        _text = value;
                      });
                    },
                  )),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.pop(context, _text);
                  },
                  child: Text('リスト追加'),
                ),
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('キャンセル'),
                ),
              )
            ],
          ),
        ));
  }
}
