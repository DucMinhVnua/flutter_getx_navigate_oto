import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/values/app_path.dart';
import 'package:get/get.dart';

import '../widgets/button_widget.dart';
import 'add_task_page.dart';
import 'all_stask_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppPath.welcome), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(
                  text: "Hello",
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: "\nstart your beautiful day",
                    style: TextStyle(
                      color: AppColors.smallTextColor,
                      fontSize: 14,
                    ))
              ])),
          SizedBox(height: size.height / 2),
          InkWell(
              onTap: () {
                Get.to(() => AddTaskPage(), duration: Duration(milliseconds: 500), transition: Transition.fade);
              },
              child: ButtonWidget(
                title: 'Add Stask',
                backgroundColor: AppColors.mainColor, titleColor: Colors.white,
              )),
          SizedBox(height: 20),
          InkWell(
              onTap: () {
                Get.to(AllStaskPage(), duration: Duration(milliseconds: 500), transition: Transition.fadeIn);
              },
              child: ButtonWidget(
                title: 'View All',
                backgroundColor: AppColors.textHolder,
                titleColor: AppColors.smallTextColor,
              )),
          SizedBox(height: 20),
        ],
      ),
    ));
  }
}
