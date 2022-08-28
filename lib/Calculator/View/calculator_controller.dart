import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController
{

   final TextEditingController cgpaController =
  new TextEditingController();
   final formKey = GlobalKey<FormState>();
  final cgpa = 0.0.obs;
final result = 0.0.obs;
  final errormsg = "".obs;
final check = false.obs;
  final myresult = "".obs;
  void Calculate() {
    //name.replaceAll(RegExp(r"\s+"), ""))
      cgpa.value = double.parse(cgpaController.text.replaceAll(RegExp(r"\s+"), ""));
      // print(cgpa.value.toString());
      if (cgpa.value < 0) {
        check.value = true;

        myresult.value = "Invalid INPUT";
      } else if (cgpa.value > 0 && cgpa.value <= 1) {
        result.value = (cgpa.value / 0.0248);
        check.value= false;
        myresult.value = result.toString();
      } else if (cgpa.value >= 1 && cgpa.value < 1.8) {
        result.value = (cgpa.value + 2.16) / 0.079;
        check.value = false;
        myresult .value= result.toString();
      } else if (cgpa.value >= 1.8 && cgpa.value <= 2.5) {

        result.value = (cgpa.value + 1.65) / 0.069;
        check.value = false;
        myresult .value= result.toString();}
        else if(cgpa.value >= 2.5 && cgpa.value <= 2.88){
        result .value= (cgpa.value - 0.28) / 0.037;
        check.value = false;
        myresult .value= result.toString();
      } else if (cgpa.value >= 2.88 && cgpa.value < 3.25) {
        result .value= (cgpa.value - 0.36) / 0.036;
        check.value = false;
        myresult.value = result.toString();
      } else if (cgpa.value >= 3.25 && cgpa.value < 3.63) {
        result.value = (cgpa.value - 0.29) / 0.037;
        check.value = false;
        myresult.value = result.toString();
      } else if (cgpa.value >= 3.63 && cgpa.value <= 4.0) {
        result.value = (cgpa.value - 0.3) / 0.037;
        check.value = false;
        myresult.value = result.toString();
      } else {
        check.value = true;
        myresult.value = "Invalid INPUT";
      }

  }

validateString(String? value) {
  if (value!.isEmpty) {
    return "Please enter CGPA ( 0.1 to 4.0)";
  } else
    return null;
}}