import 'package:bug_final_abstract_class/class.dart';
import 'package:flutter/material.dart';

class ChildClass extends AbstractClass {
  @override
  final ChangeNotifier abstractNotifier;

  ChildClass({required this.abstractNotifier}) {
    abstractNotifier.addListener(() {
      print('abstractNotifier changed');
    });
  }

  void test() {
    print(abstractNotifier.toString());
  }

  @override
  set abstractNotifier(ChangeNotifier value) {
    print('abstractNotifier child changed');
    throw Exception('abstractNotifier is final');
  }
}
