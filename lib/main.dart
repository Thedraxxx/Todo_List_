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
              color: Colors.black54, borderRadius: BorderRadius.circular(50)),
          child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ))),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        leading: DrawerButton(
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: InteractiveViewer(
                      boundaryMargin: EdgeInsets.all(20.0),
                      minScale: 0.1,
                      maxScale: 2.0,
                      child: Image.asset('assets/images/roshan.jpg'),
                    ),
                  );
                },
              );
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/roshan.jpg'),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey.shade300,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      )),
                  hintText: "search",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text(
              "ALL ToDos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Expanded(
            child: Center(
              child: Text(
                "No Task in list \nClick '+' to add a new task.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 23,),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.task_rounded,
                  color: Colors.white,
                  size: 35,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.person_2,
                  color: Colors.white,
                  size: 35,
                )),
          ],
        ),
      ),
    );
  }
}
