import 'package:attendance_tracker_app/model/student_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AttendanceProvider extends ChangeNotifier {
  final List<Student> _students = [];
  List<Student>get students=> _students;



}
