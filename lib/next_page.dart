import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ゆで卵専用タイマー'),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share)
        ],
      ),
      body: Center(
        child: Container(
          // color: Colors.red,
          child: RaisedButton(
            child: Text(name),
            onPressed: () {
              Navigator.pop(
                context, 'へいへい'
              );
            },
          )
        ),
      )
    );
  }
}