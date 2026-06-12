import 'package:attendance_tracker_app/model/summary_model.dart';
import 'package:attendance_tracker_app/widget/attendance_circle.dart';
import 'package:flutter/material.dart';
import 'package:attendance_tracker_app/UI/attendance_screen.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int totalStudents = 10;
    int presentStudents = 5;
    int absentStudents = 5;

    final double presentPercent = presentStudents / totalStudents;
    final double absentPercent = absentStudents / totalStudents;

    final presentData = SummaryModel(
      title: 'Present',
      count: presentStudents,
      total: totalStudents,
      percent: presentPercent,
      color: Colors.greenAccent.shade400,
    );

     final absentData = SummaryModel(
      title: 'Absent',
      count: absentStudents,
      total: totalStudents,
      percent: absentPercent,
      color: Colors.blue.shade400,
    );
    
    return Scaffold(
      appBar: AppBar(title: Text('Attendance Summary')),

      body: Column(
       //everything all element will be in center
        
        

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AttendanceCircle(
                data: presentData,
              ),


              SizedBox(width: 20,),
              AttendanceCircle(data: absentData),
            
            ],
          ),

           SizedBox(height: 20,),
  Text(
                'List of Present Students',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),


              //all list of present student is viewwd here as list
              
               
              SizedBox(height: 20,),
              
              Text(
                'List of Absents Students',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
               //all list of absent student is viewwd here as list
        ],
      ),
    );
  }
}
