import 'package:flutter_golang_yt/models/stask.dart';

class AddStask {
  final List<Stask> myStasks;
  final String name;
  final String detail;

  AddStask({required this.name, required this.detail, required this.myStasks});

  List<Stask> addStaskToList() {
    myStasks.add(Stask(name: this.name, detail: this.detail));
    return myStasks;
  }
}
