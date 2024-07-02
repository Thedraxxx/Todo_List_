import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> allTasks = [];
  final TextEditingController _taskController = TextEditingController();
  bool _isAddingTask = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(50)),
          child: IconButton(
              onPressed: () {
                setState(() {
                  _isAddingTask = !_isAddingTask;
                });
              },
              icon: Icon(
                _isAddingTask ? Icons.close : Icons.add,
                color: Colors.white,
                size: 40,
              )),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        leading: const BackButton(color: Colors.white),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: InteractiveViewer(
                      boundaryMargin: const EdgeInsets.all(20.0),
                      minScale: 0.1,
                      maxScale: 2.0,
                      child: Image.asset('assets/images/roshan.jpg'),
                    ),
                  );
                },
              );
            },
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/roshan.jpg'),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey.shade300,
      body: Column(
        children: [
          const SizedBox(height: 20),
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
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      )),
                  hintText: "search",
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 22),
                  suffixIcon: const Icon(
                    Icons.mic,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(right: 230),
            child: Text(
              "ALL ToDos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Center(
              child: allTasks.isEmpty
                  ? const Text(
                      "No Task in list \nClick '+' to add a new task.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 23),
                    )
                  : ListView.builder(
                      itemCount: allTasks.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, top: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    allTasks[index],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w100),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          allTasks.removeAt(index);
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
          Visibility(
            visible: _isAddingTask,
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 2),
                child: TextField(
                  controller: _taskController,
                  onSubmitted: (task) {
                    setState(() {
                      allTasks.add(task);
                      _taskController.clear();
                    });
                  },
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Task",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18)),
                ),
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
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: const Icon(
                  Icons.task_rounded,
                  color: Colors.white,
                  size: 35,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 35,
                )),
          ],
        ),
      ),
    );
  }
}
