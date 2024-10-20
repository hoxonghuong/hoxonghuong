import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Counter.dart';
import 'MainScreen.dart';
import 'HistoryScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ứng dụng đếm số',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/history': (context) => HistoryScreen(),
      },
    );
  }
}
