import 'package:flutter/material.dart';

class PayslipScreen extends StatelessWidget {
  final String employeeName;
  final String employeeId;
  final String basicSalary;
  final String department;
  final String role;
  final String hra;
  final String da;
  final String ta;
  final String net;

  const PayslipScreen({
    super.key,
    required this.employeeName,
    required this.employeeId,
    required this.basicSalary,
    required this.department,
    required this.role,
    required this.hra,
    required this.da,
    required this.ta,
    required this.net,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Pay Slip', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: '\nEmployee Name ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$employeeName\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Employee ID ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$employeeId\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Employee Department ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$department\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Employee Role ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$role\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Basic Salary ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$basicSalary\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'HRA ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$hra\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'DA ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$da\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'TA ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$ta\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Net Salary ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$net\n',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
