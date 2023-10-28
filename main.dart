import 'package:flutter/material.dart';
import 'package:task/student_detail.dart';
import 'package:task/student_list.dart';

import 'add_Student.dart';

void main() {
  runApp(const StudentManagementApp());
}
class StudentManagementApp extends StatelessWidget {
  const StudentManagementApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/addStudent',
      routes: {
        '/addStudent': (context) => const AddStudentScreen(),
        '/studentList': (context) => StudentListScreen(),
        '/studentDetails': (context) => StudentDetailsScreen(),
      },
    );
  }
}





