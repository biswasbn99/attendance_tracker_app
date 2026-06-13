import 'package:flutter/material.dart';
import 'package:attendance_tracker_app/model/summary_model.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AttendanceCircle extends StatelessWidget {
  final SummaryModel data;
  const AttendanceCircle({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [Text(data.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      CircularPercentIndicator(
        radius: 70.0,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 20.0,
                  percent: data.percent,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${data.count}/${data.total}",
                        style:
                             TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Text('${(data.percent*100).toInt()}%',style:
                             TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,)),
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Colors.yellow,
                  progressColor: data.color,
      ),
      
      ]),
    );
  }
}
