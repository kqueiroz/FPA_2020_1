import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProjectScreen extends StatefulWidget {
  var items = new List<Item>();

  ProjectScreen() {
    items = [];
    items.add(Item(title: 'Trabalho 1', done: true));
    items.add(Item(title: 'Trabalho 2', done: true));
    items.add(Item(title: 'Trabalho 3', done: true));
    items.add(Item(title: 'Trabalho 4', done: true));
    items.add(Item(title: 'Trabalho 5', done: true));
    items.add(Item(title: 'Trabalho 6', done: true));
    items.add(Item(title: 'Trabalho 7', done: true));
  }

  @override
  _ProjectScreen createState() => _ProjectScreen();
}

class _ProjectScreen extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return Text(widget.items[index].title);
        });
  }
}

class Item {
  String title;
  bool done;

  Item({this.title, this.done});
}