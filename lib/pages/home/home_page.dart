import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _task = [];
  final TextEditingController _taskController = TextEditingController();

  void _addTask() {
    if (_taskController.text.isNotEmpty) {
      setState(() {
        _task.add({'task': _taskController.text, 'completed': false});
        _taskController.clear();
      });
    }
  }

  void _toggleTask(int index) {
    setState(() {
      _task[index]['completed'] = !_task[index]['completed'];
    });
  }

  void _deleteTask(int index) {
    setState(() {
      _task.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do Application",style: TextStyle(fontSize: 38,fontFamily: 'rushfordclean')),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 183, 183),
        titleTextStyle: TextStyle(color: const Color.fromARGB(149, 0, 0, 0)),
      ),

      backgroundColor: const Color.fromARGB(255, 248, 248, 248),

      body: Column(
        children: [





          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(


              children: [


                Expanded(
                  child: TextField(
                    controller: _taskController,
                    
                  ),
                ),
                
                
                IconButton(
                  icon: Icon(Icons.add, color: const Color.fromARGB(255, 8, 1, 1)),
                  onPressed: _addTask,
                ),
              
              
              ],
            ),
          ),




          Expanded(
            child: ListView.builder(
              itemCount: _task.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromARGB(255, 254, 184, 221),
                  child: ListTile(



                    leading: Checkbox(
                      value: _task[index]['completed'],
                      onChanged: (value) => _toggleTask(index),
                    ),

                    
                    
                    title: Center(
                      child: Text(
                        _task[index]['task'],
                        style: TextStyle(fontSize: 24,
                          color: const Color.fromARGB(255, 65, 0, 49),
                          decoration:
                              _task[index]['completed']
                                  ? TextDecoration.lineThrough
                                  : null,
                        ),
                      ),
                    ),

                    
                    
                    
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: const Color.fromARGB(154, 0, 0, 0)),
                      onPressed: () => _deleteTask(index),
                    ),

                    
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
