import 'dart:ui';

import 'package:bluetooth_obd_example/widget_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/services.dart';
// import 'package:bluetooth_obd/bluetooth_obd.dart';

import 'model.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text('PROMASTERS READER',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),

              actions: [
                IconButton(
                  tooltip: 'connect OBD',
                  icon: const Icon(
                    Icons.bluetooth,
                    color: Colors.white,
                  ),
                  onPressed: () => context.read<ObdReader>().startOBD(),
                ),
                IconButton(
                  tooltip: 'Refresh OBD Data',
                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ),
                  onPressed: () => context.read<ObdReader>().increment(),
                ),
                IconButton(
                  tooltip: 'starterAppTooltipSearch',
                  icon: const Icon(
                    Icons.bluetooth_disabled,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          body: Padding(
            padding: EdgeInsets.only(top: 70), // Apply top padding here
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                return buildCard(
                  context.watch<ObdReader>().obdData['$index'][0],
                  context.watch<ObdReader>().obdData['$index'][1],
                );
              }),
            ),
          ),
        )
    );
  }
}
