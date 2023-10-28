import 'package:flutter/material.dart';

import 'add_Student.dart';

class StudentListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student List')),
      body: InkWell(
        onTap: (){},
        child: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            final student = students[index];
            return ListTile(
              title: Text(student.name),
              subtitle: Text(student.email),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/studentDetails',
                  arguments: student,
                );
              },
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  students.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Student deleted'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          students.insert(index, student);
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
