import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List todolist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    todolist.addAll(['Buy milk', 'Wash dishes', 'Buy coffee']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('todo list'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todolist.length,
          itemBuilder: (BuildContext context, int index) {
            //try {
              return Dismissible(
                  key: Key('$todolist[index]-$index'),
                  child: Card(
                    child: ListTile(
                        title: Text(todolist[index]),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete_sweep,
                          color: Colors.deepOrangeAccent
                        ),
                        onPressed: () {
                          setState(() {
                            todolist.removeAt(index);
                          });
                        },
                      ),
                    ),
                  ),
                  onDismissed: (direction) {
                    //if (direction == DismissDirection.endToStart)
                    setState(() {
                      todolist.removeAt(index);
                    });
                  },
            //  } catch (e, s) {
            //   print(s);
            // }
            );
          }
      )
    );
  }
}


