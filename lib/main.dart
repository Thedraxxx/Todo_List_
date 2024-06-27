import 'package:flutter/material.dart';

void main() {
  runApp(const ToDo_List());
}

class ToDo_List extends StatelessWidget {
  const ToDo_List({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
          decoration: BoxDecoration(
              color: Colors.red.shade200,
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ))),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        leading: null,
        flexibleSpace: Container(
          width: 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            // ignore: prefer_const_constructors
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "ALL",
                          style: TextStyle(color: Colors.white),
                        ))),
                SizedBox(
                  width: 30,
                  height: 100,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Work",
                          style: TextStyle(color: Colors.white),
                        ))),
                SizedBox(
                  width: 30,
                  height: 100,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Personal",
                          style: TextStyle(color: Colors.white),
                        ))),
                SizedBox(
                  width: 30,
                  height: 100,
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: null, icon: Icon(Icons.menu,color: Colors.white,size: 35,)),
            IconButton(onPressed: null, icon: Icon(Icons.task_rounded,color: Colors.white,size: 35,)),
            IconButton(onPressed: null, icon: Icon(Icons.person_2,color: Colors.white,size: 35,)),
          ],
        ),
      ),
    );
  }
}
