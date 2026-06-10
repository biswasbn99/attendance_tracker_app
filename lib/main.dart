import 'package:attendance_tracker_app/UI/attendance_screen.dart';
import 'package:attendance_tracker_app/provider/attendance_provider.dart';
import 'theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AttendanceApp());
}

class AttendanceApp extends StatelessWidget {
  const AttendanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>AttendanceProvider(),
      )
    ],
    child: MaterialApp(
      title: 'Attendance Tracker App',
      theme: appTheme,
       home: AttendanceScreen(),
       debugShowCheckedModeBanner: false,
    ),
    );
  }
}
