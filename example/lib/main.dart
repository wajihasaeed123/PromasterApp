import 'package:bluetooth_obd_example/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:provider/provider.dart';

import 'home.dart';
import 'model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ObdReader()),
      ],
      child: MaterialApp(
        home: welcomescreen(),
      ),
    ),
  );
}
