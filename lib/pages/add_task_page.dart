import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/models/stask.dart';
import 'package:get/get.dart';

import '../values/app_path.dart';
import '../widgets/button_widget.dart';
import '../widgets/textField_widget.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    Size size = MediaQuery.of(context).size;
    final nameController = TextEditingController();
    final detailController = TextEditingController();


    return Scaffold(
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppPath.addTask1), fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back,
                            color: AppColors.secondaryColor)),
                  ),
                  SizedBox(
                      child: Column(
                    children: [
                      TextFieldWidget(
                          hintText: "Task name",
                          nameController: nameController),
                      SizedBox(height: 20),
                      TextFieldWidget(
                          hintText: "Task detail",
                          nameController: detailController,
                          maxLines: 4),
                      SizedBox(height:50),
                      InkWell(
                        onTap: () {
                          Stask.addStaskToList(name: nameController.text,detail:detailController.text);
                        },
                        child: ButtonWidget(
                            title: "Add",
                            backgroundColor: AppColors.mainColor,
                            titleColor: Colors.white),
                      ),
                    ],
                  )),
                  SizedBox(height:8),
                ],
              ),
            )));
  }
}
