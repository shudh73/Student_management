import 'package:flutter/material.dart';
import 'package:task/student_model.dart';

class StudentDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final student = ModalRoute.of(context)?.settings.arguments as Student;
    if (student == null) {
      return const Scaffold(
        body: Center(
          child: Text('Student data not found.'),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Student Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${student.name}'),
            Text('Email: ${student.email}'),
            Text('Mobile: ${student.mobile}'),
            Text('Class: ${student.className}'),
            Text('DOB: ${student.dob.toString()}'),
            Text('Gender: ${student.gender}'),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
