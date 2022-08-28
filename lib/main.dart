import 'package:cgpacal/Calculator/View/calculator.dart';
import 'package:cgpacal/Routes/my_routes.dart';
import 'package:cgpacal/Routes/set_routes.dart';
import 'package:cgpacal/hec_formula.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final TextEditingController cgpaController =
      new TextEditingController();
  double cgpa = 0.0;
  double result = 0.0;
  String errormsg = "";
  bool check = false;
  String myresult = "";
  void Calculate() {
    setState(() {
      cgpa = double.parse(cgpaController.text);
      if (cgpa < 0) {
        check = true;
        myresult = "Invalid INPUT";
      } else if (cgpa > 0 && cgpa <= 1) {
        result = (cgpa / 0.0248);
        check = false;
        myresult = result.toString();
      } else if (cgpa >= 1 && cgpa < 1.8) {
        result = (cgpa + 2.16) / 0.079;
        check = false;
        myresult = result.toString();
      } else if (cgpa >= 1.8 && cgpa <= 2.5) {
        result = (cgpa + 1.65) / 0.069;
        check = false;
        myresult = result.toString();
      } else if (cgpa >= 2.5 && cgpa < 2.88) {
        result = (cgpa - 0.28) / 0.037;
        check = false;
        myresult = result.toString();
      } else if (cgpa >= 2.88 && cgpa < 3.25) {
        result = (cgpa - 0.36) / 0.036;
        check = false;
        myresult = result.toString();
      } else if (cgpa >= 3.25 && cgpa < 3.63) {
        result = (cgpa - 0.29) / 0.037;
        check = false;
        myresult = result.toString();
      } else if (cgpa >= 3.63 && cgpa <= 4.0) {
        result = (cgpa - 0.3) / 0.037;
        check = false;
        myresult = result.toString();
      } else {
        check = true;
        myresult = "Invalid INPUT";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(initialRoute: calculator,
      getPages: MyPages().Screens(),
debugShowCheckedModeBanner: false,
      title: "Cgpa Calculator",
      theme: ThemeData(primaryColor: Colors.black),

    );
  }
}
