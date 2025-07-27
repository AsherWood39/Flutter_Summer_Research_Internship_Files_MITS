// ignore_for_file: must_be_immutable

import 'package:employee_payroll_app/Presentation/payslip_screen.dart';
import 'package:flutter/material.dart';

class EmployeeScreen extends StatelessWidget {
  EmployeeScreen({super.key});

  final nameController = TextEditingController();
  final idController = TextEditingController();
  final salaryController = TextEditingController();

  final List<String> departments = [
    'HR',
    'Finance',
    'IT',
    'Sales',
    'Marketing'
  ];
  String? selectedDepartment;

  final List<String> roles = [
    'Worker',
    'Manager',
    'Head',
    'Director',
  ];
  String? selectedRole;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Employee Details',
            style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout_rounded,
                color: Colors.white,
              ))
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Employee name is required';
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                      hintText: 'Employee Name'),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Employee ID is Required';
                    }
                    return null;
                  },
                  controller: idController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                      hintText: 'Employee ID'),
                ),
                const SizedBox(height: 25.0),
                DropdownButtonFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Department is Required';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ), // Bottom border color and thickness
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        )),
                    value: selectedDepartment,
                    hint: const Text('Select a Department'),
                    onChanged: (value) {
                      selectedDepartment = value!;
                    },
                    items: departments.map((dept) {
                      return DropdownMenuItem(value: dept, child: Text(dept));
                    }).toList()),
                const SizedBox(
                  height: 25.0,
                ),
                DropdownButtonFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Role is Required';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                        ))),
                    items: roles.map((r) {
                      return DropdownMenuItem(value: r, child: Text(r));
                    }).toList(),
                    value: selectedRole,
                    hint: const Text('Select your Role'),
                    onChanged: (role) {
                      selectedRole = role!;
                    }),
                const SizedBox(
                  height: 25.0,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Basic Salary is Required';
                    }
                    return null;
                  },
                  controller: salaryController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                      hintText: 'Basic Salary'),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        String name = nameController.text;
                        int id = int.parse(idController.text);
                        double salary = double.parse(salaryController.text);
                        String dept = selectedDepartment ?? 'Not Selected';
                        String role = selectedRole ?? 'Not Selected';

                        double hra = salary * 0.3;
                        double da = salary * 0.5;
                        double ta = salary * 0.15;
                        double netSalary = hra + da + ta + salary;

                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => PayslipScreen(
                                  employeeName: name,
                                  employeeId: id.toString(),
                                  basicSalary: salary.toString(),
                                  department: dept.toString(),
                                  role: role,
                                  hra: hra.toString(),
                                  da: da.toString(),
                                  ta: ta.toString(),
                                  net: netSalary.toString())),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      fixedSize: const Size(300, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(50), // Makes it rounded
                      ),
                    ),
                    child: const Text(
                      'Process',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
