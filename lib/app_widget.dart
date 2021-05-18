import 'package:flutter/material.dart';
import 'package:notes/create_note_page.dart';
import 'package:notes/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      routes: {
        '/home': (context) => HomePage(),
        '/create-note': (context) => CreateNotePage(),
      },
      initialRoute: '/home',
    );
  }
}
