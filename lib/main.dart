import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import './home/home.dart';

List<CameraDescription> cameras;
void logError(String code, String message) =>
    print('Error: $code\nError Message: $message');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData(
          primaryColor: Color(0xff075e94),
          accentColor: Color(0xff25d966), //FBA background color
          indicatorColor: Colors.white, // selected tab bottom border
          primaryColorDark: Color(0xFF128C7E), // CircleAvatar background color
          primaryIconTheme: IconThemeData(
            color: Colors.white,
          ),
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          accentIconTheme: IconThemeData(
            color: Colors.white, // FAB icon color
          )),
      home: Home(),
    );
  }
}
