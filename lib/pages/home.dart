import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List todo_list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('todo list'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todo_list.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todo_list[index]),
                child: Card(
                  child: ListTile(title: Text(todo_list[index])),
                )
            );
          }
      )
    );
  }
}


