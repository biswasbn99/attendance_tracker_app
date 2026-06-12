import 'package:attendance_tracker_app/model/student_model.dart';
import 'package:flutter/material.dart';

class AttendanceProvider extends ChangeNotifier {
  final List<Student> _students = List.generate(
    10,
    (index) => Student(id: index + 1),
  );
  List<Student> get students => List.unmodifiable(_students);

  //Computed getters
  int get totalStudents => _students.length;
  int get presentCount => _students.where((s) => s.isPresent).length;
  int get absentCount => totalStudents - presentCount;
  double get presentPercent => presentCount / totalStudents;
  double get absentPercent => absentCount / totalStudents;

  List<Student> get presentStudents =>
      _students.where((s) => s.isPresent).toList();
  List<Student> get absentStudents =>
      _students.where((s) => !s.isPresent).toList();

  //Actions
  void toggleAttendance(int id, bool? value) {
    final student = _students.firstWhere((s) => s.id == id);
    student.isPresent = value ?? false;
    notifyListeners();
  }

  void resetAll() {
    for (final student in _students) {
      student.isPresent = false;
    }
    notifyListeners();
  }
}
