import 'package:bug_final_abstract_class/class.dart';
import 'package:flutter/material.dart';

class ParentClass extends AbstractClass {
  @override
  final ChangeNotifier abstractNotifier = ChangeNotifier();

  ParentClass();

  @override
  set abstractNotifier(ChangeNotifier value) {
    print('abstractNotifier parent changed');
    throw Exception('abstractNotifier is final');
  }
}
