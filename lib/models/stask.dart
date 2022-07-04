import 'package:get/get.dart';

import '../pages/all_stask_page.dart';

class Stask {
  final String name, detail;
  static final List<Stask> myStasks = [];

  Stask({required this.name, required this.detail});

  @override
  String toString() {
    return 'Stask {name: $name, detail: $detail}';
  }

  static List<Stask> addStaskToList({name, detail}) {
    if (!name.isEmpty && !detail.isEmpty) {
      myStasks.add(Stask(name: name, detail: detail));

      Get.snackbar(
        'Thông báo',
        'Thêm công việc thành công',
        duration: Duration(seconds: 3),
        onTap:(GetSnackBar){
          Get.off(AllStaskPage(), duration: Duration(milliseconds: 500), transition: Transition.leftToRight);
        },
      );
    }
    return myStasks;
  }

  static GetList() {
    return myStasks;
  }
}
