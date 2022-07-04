import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {

  final String hintText;
  final TextEditingController nameController;
  final int maxLines;

  const TextFieldWidget({Key? key, required this.hintText, required this.nameController, this.maxLines = 1}) : super(key: key);

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: nameController,
        maxLines: maxLines,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            hintText: hintText,
            filled: true,
            fillColor: AppColors.textHolder,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white,
                    width: 1
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    width: 1,
                    color: Colors.white
                )
            )
        ),
      ),
    );
  }
}
