import 'package:flutter/material.dart';

class FavoriteList extends StatefulWidget {
  @override
  _FavoriteListPageState createState() => _FavoriteListPageState();
}

class _FavoriteListPageState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お気に入りリスト'),
      ),
    );
  }
}
