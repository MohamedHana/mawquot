// Packages
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:collection/collection.dart';



class Interval {
  final String time;
  final String chapter;
  final String timeSpent;
  final IconData icon;

  Interval({required this.time, required this.chapter, required this.timeSpent, required this.icon});
}
















class TimelineDialog extends StatefulWidget {
  const TimelineDialog({Key? key}) : super(key: key);

  @override
  State<TimelineDialog> createState() => _TimelineDialogState();
}

class _TimelineDialogState extends State<TimelineDialog> {
  final List<Interval> listOfIntervals = [
    Interval(time: "12:00 pm", chapter: "Prayer Alzohr long text test", timeSpent: "00:15:20", icon: Icons.circle),
    Interval(time: "03:00 pm", chapter: "Shower foam", timeSpent: "00:40:55", icon: Icons.circle),
    Interval(time: "04:26 am", chapter: "Breakfast", timeSpent: "02:40:10", icon: Icons.circle_outlined),
    Interval(time: "09:20 pm", chapter: "Mawquot project - timeline", timeSpent: "07:15:05", icon: Icons.circle),
    Interval(time: "12:00 pm", chapter: "Prayer Alzohr", timeSpent: "00:15:20", icon: Icons.circle),
    Interval(time: "03:00 pm", chapter: "Shower", timeSpent: "00:40:55", icon: Icons.circle),
    Interval(time: "04:26 am", chapter: "Breakfast", timeSpent: "02:40:10", icon: Icons.circle),
    Interval(time: "09:20 pm", chapter: "Mawquot project", timeSpent: "07:15:05", icon: Icons.circle),
    Interval(time: "12:00 pm", chapter: "Prayer Alzohr", timeSpent: "00:15:20", icon: Icons.circle_outlined),
    Interval(time: "03:00 pm", chapter: "Shower", timeSpent: "00:40:55", icon: Icons.circle),
    Interval(time: "04:26 am", chapter: "Breakfast", timeSpent: "02:40:10", icon: Icons.circle),
    Interval(time: "09:20 pm", chapter: "Mawquot project", timeSpent: "07:15:05", icon: Icons.circle),
    Interval(time: "12:00 pm", chapter: "Prayer Alzohr", timeSpent: "00:15:20", icon: Icons.circle),
    Interval(time: "03:00 pm", chapter: "Shower", timeSpent: "00:40:55", icon: Icons.circle_outlined),
    Interval(time: "04:26 am", chapter: "Breakfast", timeSpent: "02:40:10", icon: Icons.circle),
    Interval(time: "00:20 pm", chapter: "Mawquot project", timeSpent: "07:15:05", icon: Icons.circle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timeline'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: Column(
            children: listOfIntervals.mapIndexed((index, Interval interval) {
              return _buildTimelineTile(
                isFirst: index == 0,
                isLast: index == listOfIntervals.length - 1,
                indicator: _IconIndicator(
                  iconData: interval.icon,
                  size: 30,
                ),
                interval: interval,
              );
            }).toList()
          ),
        ),
      ),
    );
  }
}









TimelineTile _buildTimelineTile({ 
  bool isFirst = false, 
  bool isLast = false,
  _IconIndicator? indicator, 
  Interval? interval, 
}) 
{
  return TimelineTile(
    alignment: TimelineAlign.manual,
    lineXY: 0.3,
    beforeLineStyle: const LineStyle(color: Colors.green),
    afterLineStyle: const LineStyle(color: Colors.green),
    indicatorStyle: IndicatorStyle(
      indicatorXY: 0.3,
      drawGap: true,
      width: 30,
      height: 30,
      indicator: indicator,
    ),
    isFirst: isFirst,
    isLast: isLast,
    startChild: Center(
      child: Container(
        alignment: const Alignment(0.0, -0.50),
        child: Text(interval!.time),
      ),
    ),
    endChild: Padding(
      padding: const EdgeInsets.only(left: 16, right: 10, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            interval.chapter,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          Text(
            interval.timeSpent,
          ),
        ],
      ),
    ),
  );
}















class _IconIndicator extends StatelessWidget {
  const _IconIndicator({
    Key? key,
    required this.iconData,
    required this.size,
  }) : super(key: key);

  final IconData iconData;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size,
      color: Colors.green,
    );
  }
}