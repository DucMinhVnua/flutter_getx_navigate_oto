import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/models/stask.dart';
import 'package:flutter_golang_yt/widgets/sheet.dart';
import 'package:get/get.dart';

import '../values/app_path.dart';
import '../widgets/button_widget.dart';

class AllStaskPage extends StatefulWidget {
  const AllStaskPage({Key? key}) : super(key: key);

  @override
  State<AllStaskPage> createState() => _AllStaskPageState();
}

class _AllStaskPageState extends State<AllStaskPage> {
  late List myData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    myData = Stask.GetList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppPath.header), fit: BoxFit.cover),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 45),
                child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back, color: AppColors.secondaryColor))),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(children: [
                      Icon(Icons.home, color: AppColors.secondaryColor),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(3),
                          child: Icon(Icons.add, color: Colors.white, size: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black,
                          )),
                    ]),
                    Row(children: [
                      Icon(Icons.calendar_month,
                          color: AppColors.secondaryColor),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(3),
                          child: Text(myData.length.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.secondaryColor))),
                    ]),
                  ],
                )),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: myData.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        background: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin:
                                EdgeInsets.only(top: 10, bottom: 10, right: 10),
                            color: AppColors.mainColor,
                            alignment: Alignment.centerLeft,
                            child: Icon(Icons.edit, color: Colors.white)),
                        secondaryBackground: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin:
                                EdgeInsets.only(top: 10, bottom: 10, left: 10),
                            color: Colors.red,
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.delete, color: Colors.white)),
                        onDismissed: (DismissDirection direction) {},
                        confirmDismiss: (DismissDirection direction) async {
                          if (direction == DismissDirection.startToEnd) {
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Sheet();
                                });
                          } else
                            return Future.delayed(Duration(seconds: 1),
                                () => direction == DismissDirection.endToStart);
                        },
                        key: ObjectKey(index),
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Center(
                                child: Text(myData[index].name,
                                    style: TextStyle(
                                        color: AppColors.textGrey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                            decoration:
                                BoxDecoration(color: AppColors.textHolder)),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
