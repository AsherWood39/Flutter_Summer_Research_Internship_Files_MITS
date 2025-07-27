import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  final String id;
  final String title;
  final String status;

  const SummaryScreen(
      {super.key, required this.id, required this.title, required this.status});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF1A1D2C),
              title: const Text(
                'Summary',
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
            body: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 50.0),
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF2A2E42).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Table(
                  //border: TableBorder,
                  children: [
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'ID ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 11.0),
                          child: Icon(
                            Icons.more_vert_outlined,
                            color: Color(0xFF5BB0F0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Text(
                            id,
                            style: const TextStyle(
                                color: Color(0xFFB0BEC5),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Title ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 11.0),
                          child: Icon(
                            Icons.more_vert_outlined,
                            color: Color(0xFF5BB0F0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Text(
                            title,
                            style: const TextStyle(
                                color: Color(0xFFB0BEC5),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            'Status ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Icon(
                            Icons.more_vert_outlined,
                            color: Color(0xFF5BB0F0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            status,
                            style: TextStyle(
                                color: status == 'Status Not Completed'
                                    ? const Color(0xFFE57373)
                                    : const Color(0xFF81C784),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
