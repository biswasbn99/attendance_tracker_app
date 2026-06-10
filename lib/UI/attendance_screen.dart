import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  String currentDate = DateFormat('MMMM d').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily Attendance - $currentDate')),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, Index) {
            return Card(
              child: CheckboxListTile(
                title: Text('Student-1'),
                value: false,
                onChanged: (value) {
                  
                },
               
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          child: ElevatedButton(onPressed: () {}, child: Text('Submit')),
        ),
      ),
    );
  }
}
