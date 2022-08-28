import 'package:cgpacal/Calculator/View/calculator.dart';
import 'package:cgpacal/hec_formula.dart';
import 'package:get/get.dart';

class ScreenBinding extends Bindings{
  @override
  void dependencies() {

Get.lazyPut(() => HexFormula());
Get.lazyPut(() => Calculator());


    // TODO: implement dependencies





  }





}