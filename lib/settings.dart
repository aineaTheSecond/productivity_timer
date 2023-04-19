import 'package:flutter/material.dart';
import 'package:productivity_timer/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body:const Settings()
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 24);

    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.vertical,
      childAspectRatio: 3,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        Text(
          "Work",
          style: textStyle,
        ),
        const Text(""),
        const Text(""),
        const SettingButton(Color(0xff455A6A), "-", -1),
        TextField(
          style: textStyle,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
        ),
        const SettingButton(Color(0xff009688), "+", 1),
        Text(
          "Short",
          style: textStyle,
        ),
        const Text(""),
        const Text(""),
        const SettingButton(Color(0xff455A64), "-", -1),
        TextField(
          style: textStyle,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
        ),
        const SettingButton(Color(0xff009688), "+", 1),
        Text(
          "Long",
          style: textStyle,
        ),
        const Text(""),
        const Text(""),
        const SettingButton(Color(0xff455A64), "-", -1),
        TextField(
          style: textStyle,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
        ),
        const SettingButton(Color(0xff009688), "+", 1),
      ],
    );
  }
}
