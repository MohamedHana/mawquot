// Packages
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:intl/intl.dart';

// Widgets

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class Cover extends StatefulWidget {
  const Cover({Key? key}) : super(key: key);

  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> {
  DateTime _value = DateTime(2021, 01, 01, 08, 00, 00);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Workday',
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.hourglass_bottom,
                  size: 16,
                ),
                const SizedBox(width: 5),
                Text(
                  '375/1440 Minutes',
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              '23%',
                              style: TextStyle(
                                fontSize: 80,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.menu_book,
                                      size: 16,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '3/5 Books',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.label_outlined,
                                      size: 16,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '11/18 Chapters',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: FittedBox(
                          child: Icon(Icons.directions_run),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SfSliderTheme(
                    data: SfSliderThemeData(
                      thumbRadius: 8,
                      tickOffset: const Offset(0.0, 5.0),
                    ),
                    child: SfSlider(
                      min: DateTime(2021, 01, 01, 04, 00, 00),
                      max: DateTime(2021, 01, 02, 04, 00, 00),
                      value: _value,
                      interval: 6,
                      showLabels: true,
                      showTicks: true,
                      minorTicksPerInterval: 2,
                      dateFormat: DateFormat('h a'),
                      dateIntervalType: DateIntervalType.hours,
                      onChanged: (dynamic newValue) {
                        setState(() {
                          _value = newValue;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}