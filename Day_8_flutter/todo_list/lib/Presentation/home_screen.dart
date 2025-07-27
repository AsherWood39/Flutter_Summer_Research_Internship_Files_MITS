import 'package:flutter/material.dart';
import 'package:todo_list/Model/todo_model.dart';
import 'package:todo_list/Presentation/summary_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex;
  String? editFlag = '0';
  int? i;

  List<TodoModel> myList = [
    // TodoModel(id: '1', titleText: 'A', status: '0'),
    // TodoModel(id: '2', titleText: 'B', status: '1'),
    // TodoModel(id: '3', titleText: 'C', status: '0'),
    // TodoModel(id: '4', titleText: 'D', status: '0'),
    // TodoModel(id: '5', titleText: 'E', status: '0'),
    // TodoModel(id: '6', titleText: 'F', status: '1'),
    // TodoModel(id: '7', titleText: 'G', status: '0'),
    // TodoModel(id: '8', titleText: 'H', status: '1'),
    // TodoModel(id: '9', titleText: 'I', status: '1'),
    // TodoModel(id: '10', titleText: 'J', status: '0'),
    // TodoModel(id: '11', titleText: 'K', status: '0'),
    // TodoModel(id: '12', titleText: 'L', status: '0'),
    // TodoModel(id: '13', titleText: 'M', status: '1'),
    // TodoModel(id: '14', titleText: 'N', status: '0'),
    // TodoModel(id: '15', titleText: 'O', status: '1'),
  ];

  final taskController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xFF1A1D2C),
                title: const Text(
                  'ToDo App',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.blueGrey,
                      ))
                ],
              ),
              body: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: ListView(children: [
                  Form(
                    key: _formKey,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * .14,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: TextFormField(
                                  controller: taskController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Add a task';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14.0, vertical: 10.0),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6)),
                                    hintText: ('Enter your task here'),
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF8E8E8E),
                                      fontSize: 20.0,
                                    ),
                                  )),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    String task = taskController.text;

                                    setState(() {
                                      if (editFlag == '0') {
                                        addTodo(TodoModel(
                                          id: (myList.length + 1).toString(),
                                          titleText: task,
                                          status: '0',
                                        ));
                                      } else {
                                        editTodo(i, task);
                                      }
                                      taskController.clear();
                                    });

                                    FocusScope.of(context).unfocus();
                                  }
                                },
                                icon: Icon(
                                  editFlag == '0' ? Icons.add : Icons.save,
                                  size: 30.0,
                                  color: const Color(0xFF1A1D2C),
                                ),
                              ),
                              Visibility(
                                  visible: editFlag == '0' ? false : true,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 0),
                                    child: IconButton(
                                      onPressed: () {
                                        FocusScope.of(context).unfocus();
                                        setState(() {
                                          editFlag = '0';
                                          taskController.clear();
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.cancel,
                                        size: 30.0,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .75,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        bool isCompleted = myList[index].status == '1';

                        return ListTile(
                          onTap: () {
                            setState(
                              () {
                                myList[index].status = isCompleted ? '0' : '1';
                              },
                            );
                          },
                          contentPadding: const EdgeInsets.only(left: 13.0),
                          leading: Text(
                            '${index + 1} .',
                            style: const TextStyle(
                              color: Color(0xFF1A1D2C),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: Text(
                            myList[index].titleText,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                  myList[index].status == '1'
                                      ? 'Status Completed'
                                      : 'Status Not Completed',
                                  style: TextStyle(
                                    color: myList[index].status == '1'
                                        ? Colors.green
                                        : Colors.red,
                                    fontSize: 14.0,
                                  )),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    editFlag = '1';
                                    taskController.text =
                                        myList[index].titleText;
                                    i = index;
                                  });
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  size: 20.0,
                                ),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                              ),
                              IconButton(
                                onPressed: () {
                                  removeTodo(myList[index].id);
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  size: 20.0,
                                ),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(0),
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SummaryScreen(
                                        id: myList[index].id,
                                        title: myList[index].titleText,
                                        status: myList[index].status == '0'
                                            ? 'Status Not Completed'
                                            : 'Status Completed')));
                              },
                              icon: const Icon(
                                Icons.arrow_right_rounded,
                                size: 40.0,
                              ),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          height: 0,
                        );
                      },
                      itemCount: myList.length,
                    ),
                  ),
                ]),
              ))),
    );
  }

  void addTodo(TodoModel t) {
    myList.add(t);
  }

  void editTodo(int? index, String? task) {
    myList[index!].titleText = task!;
    myList[index].status = '0';
  }

  void removeTodo(String id) {
    setState(() {
      myList.removeWhere((todo) => todo.id == id);

      for (int i = 0; i < myList.length; i++) {
        myList[i].id = (i + 1).toString();
      }
    });
  }
}
