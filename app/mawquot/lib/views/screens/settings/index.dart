// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Constants
import 'package:mawquot/constants/app.dart';
// App widgets
import 'package:mawquot/views/screens/settings/widgets/setting_section.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _dayStartMethod = AppConstants.dayStartMethod;
  var _dayStartTime = AppConstants.dayStartTime;
  var _appThemeMode = AppConstants.themeMode;

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _dayStartTime,
    );

    if (newTime != null) {
      setState(() {
        _dayStartTime = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SettingSection(
              question: 'How do you want to start everyday?',
              replySection: Column(
                children: <Widget>[
                  RadioListTile<DayStartMethods>(
                    dense: true,
                    title: const Text('Blank day'),
                    value: DayStartMethods.blank,
                    groupValue: _dayStartMethod,
                    onChanged: (value) {
                      setState(() {
                        _dayStartMethod = value!;
                      });
                    },
                  ),
                  RadioListTile<DayStartMethods>(
                    dense: true,
                    title: const Text('Previous day plan'),
                    value: DayStartMethods.previousDay,
                    groupValue: _dayStartMethod,
                    onChanged: (value) {
                      setState(() {
                        _dayStartMethod = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 16,
              endIndent: 16,
            ),
            SettingSection(
              question: 'When do you regularly start your day?',
              replySection: Column(
                children: <Widget>[
                  const SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.green,
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      ),
                      onPressed: _selectTime,
                      child: Text(_dayStartTime.format(context)),
                    ),
                  ),
                ],
              )
            ),
            const Divider(
              indent: 16,
              endIndent: 16,
            ),
            SettingSection(
              question: 'Which mode do you prefer?',
              replySection: Column(
                children: <Widget>[
                  RadioListTile<AppThemeMode>(
                    dense: true,
                    title: const Text('Light'),
                    value: AppThemeMode.light,
                    groupValue: _appThemeMode,
                    onChanged: (value) {
                      setState(() {
                        _appThemeMode = value!;
                      });
                    },
                  ),
                  RadioListTile<AppThemeMode>(
                    dense: true,
                    title: const Text('Dark'),
                    value: AppThemeMode.dark,
                    groupValue: _appThemeMode,
                    onChanged: (value) {
                      setState(() {
                        _appThemeMode = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 16,
              endIndent: 16,
            ),
            SettingSection(
              question: 'Do you want to start a new life?',
              replySection: Column(
                children: <Widget>[
                  const SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.green,
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      ),
                      onPressed: (){
                        // reset
                      },
                      child: const Text('WRITE A NEW LIFE BOOKS'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
