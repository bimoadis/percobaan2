import 'package:flutter/material.dart';
import 'package:percobaan2/detail_screen.dart';
import 'package:percobaan2/main_screen.dart';
import 'package:percobaan2/model/tourism_place.dart';
import 'package:percobaan2/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
