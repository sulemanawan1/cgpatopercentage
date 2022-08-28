import 'package:cgpacal/Constants/constants.dart';
import 'package:flutter/material.dart';

class HexFormula extends StatefulWidget {
  const HexFormula({Key? key}) : super(key: key);

  @override
  State<HexFormula> createState() => _HexFormulaState();
}

class _HexFormulaState extends State<HexFormula> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(appBar: AppBar(title: Text('Conversion Formula'),
        backgroundColor: primaryColor,
    ),
    
    body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 10,),
        Text("Conversion of Percentage into CGPA (According to HEC Policy).",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),

        //
        SizedBox(height: 10,),
        Image.asset('images/formula.PNG'),

        
      ],),
    ),
    );
  }
}
