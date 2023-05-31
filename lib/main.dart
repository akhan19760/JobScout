import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_search_app/screens/bottom_navbar.dart';
import 'package:job_search_app/screens/home_screen.dart';
import 'package:job_search_app/screens/job_detail_screen.dart';
import 'package:job_search_app/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: JobDetailScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
