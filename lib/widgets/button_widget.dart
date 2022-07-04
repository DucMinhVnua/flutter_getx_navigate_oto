import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';

class ButtonWidget extends StatelessWidget {

  final String title;
  final Color backgroundColor, titleColor;

  const ButtonWidget({Key? key, required this.title, required this.backgroundColor, required this.titleColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height/14,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(40)
      ),
      child: Center(child: Text(title, style: TextStyle(
          color: titleColor,
          fontSize: 18
      ))),
    );
  }
}
