import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_widget.dart';

class Sheet extends StatelessWidget {
  const Sheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWidget(
              title: "View",
              backgroundColor:
              AppColors.mainColor,
              titleColor: Colors.white),
          SizedBox(
            height: 10,
          ),
          ButtonWidget(
              title: "Edit",
              backgroundColor:
              AppColors.mainColor,
              titleColor: Colors.white),
        ],
      ),
    );;
  }
}
