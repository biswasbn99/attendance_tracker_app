import 'package:attendance_tracker_app/UI/summary_screen.dart';
import 'package:attendance_tracker_app/model/student_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:attendance_tracker_app/provider/attendance_provider.dart';

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
        child: Consumer<AttendanceProvider>(
          builder: (context, provider, _) {
            
            return ListView.builder(
              itemCount: provider.totalStudents,
              itemBuilder: (context, index) {
                final Student student = provider.students[index];
                return Card(
                  child: CheckboxListTile(
                    title: Text('Student-${student.id}'),
                    subtitle: Text(student.isPresent ? 'Present' : 'Absent'),
                    value: student.isPresent,
                    onChanged: (value) {
                      provider.toggleAttendance(student.id, value);
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          child: ElevatedButton(
            onPressed: () {
              //navigate to summary screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SummaryScreen()),
              );
            },
            child: Text('Submit'),
          ),
        ),
      ),
    );
  }
}
