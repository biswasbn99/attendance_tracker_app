import 'package:attendance_tracker_app/model/summary_model.dart';
import 'package:attendance_tracker_app/provider/attendance_provider.dart';
import 'package:attendance_tracker_app/widget/attendance_circle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<AttendanceProvider>();

    final presentData = SummaryModel(
      title: 'Present',
      count: provider.presentCount,
      total: provider.totalStudents,
      percent: provider.presentPercent,
      color: Colors.greenAccent.shade400,
    );

    final absentData = SummaryModel(
      title: 'Absent',
      count: provider.absentCount,
      total: provider.totalStudents,
      percent: provider.absentPercent,
      color: Colors.blue.shade400,
    );

    return Scaffold(
      appBar: AppBar(title: Text('Attendance Summary')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AttendanceCircle(data: presentData),
                  SizedBox(width: 20),
                  AttendanceCircle(data: absentData),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'List of Present Students',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ...provider.presentStudents.map(
                (s) => ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.green),
                  title: Text('Student-${s.id}'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'List of Absents Students',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ...provider.absentStudents.map(
                (s) => ListTile(
                  leading: Icon(Icons.cancel, color: Colors.red),
                  title: Text('Student-${s.id}'),
                ),
              ),
              SizedBox(height: 24),

              //Reset Button
            ElevatedButton.icon(onPressed: (){
              context.read<AttendanceProvider>().resetAll();
              Navigator.pop(context);
            }, 
            icon: Icon(Icons.refresh),
            label:Text('Reset & Go BAck') ),
           
            ],
          ),
        ),
      ),
    );
  }
}
