import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_golang_yt/pages/add_task_page.dart';
import 'package:flutter_golang_yt/pages/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}