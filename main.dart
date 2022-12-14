import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget {
  MyGridScreen({super.key});

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  bool _lightIsOn = false;
  bool _fanIsOn = false;
  bool _tvIsOn = false;
  bool _wifiIsOn = false;
  bool _alarmIsOn = false;
  bool _lockIsOn = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Smart Home"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 200.0,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                // Toggle light when tapped.
                _lightIsOn = !_lightIsOn;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      color: _lightIsOn ? Colors.yellow : Colors.grey,
                      size: 60,
                    ),
                    Text(_lightIsOn ? 'light on' : 'light off')
                  ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                // Toggle light when tapped.
                _fanIsOn = !_fanIsOn;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: _fanIsOn ? Colors.blue : Colors.grey,
                      size: 60,
                    ),
                    Text(_fanIsOn ? 'AC on' : 'AC off')
                  ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                // Toggle light when tapped.
                _tvIsOn = !_tvIsOn;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.tv,
                      color: _tvIsOn ? Colors.blue : Colors.grey,
                      size: 60,
                    ),
                    Text(_tvIsOn ? 'TV on' : 'TV off')
                  ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                // Toggle light when tapped.
                _wifiIsOn = !_wifiIsOn;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wifi,
                      color: _wifiIsOn ? Colors.blue : Colors.grey,
                      size: 60,
                    ),
                    Text(_wifiIsOn ? 'wifi on' : 'wifi off')
                  ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                // Toggle light when tapped.
                _alarmIsOn = !_alarmIsOn;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.alarm,
                      color: _alarmIsOn ? Colors.orange : Colors.grey,
                      size: 60,
                    ),
                    Text(_alarmIsOn ? 'Alarm on' : 'Alarm off')
                  ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                // Toggle light when tapped.
                _lockIsOn = !_lockIsOn;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      color: _lockIsOn ? Colors.blue : Colors.grey,
                      size: 60,
                    ),
                    Text(_lockIsOn ? 'Locked' : 'Unlocked')
                  ]),
            ),
          ),
        ],
      )),
    );
  }
}
