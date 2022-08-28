import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Constants/constants.dart';
import '../../Routes/set_routes.dart';
import 'calculator_controller.dart';

class Calculator extends StatelessWidget {
   Calculator({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    // final CalculatorController controller=CalculatorController();
    return Scaffold(
      appBar: AppBar( backgroundColor: primaryColor,
        title: const Text('CGPA to Percentage'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color:primaryColor,
              ),
              child: const Text(
                'CGPA to Percentage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(onTap: (){
              Get.toNamed(hecFormulaScreen);

            },
              leading: const Icon(Icons.info),
              title: const Text('Converion Formula'),
            ),
            const ListTile(
              leading: Icon(Icons.developer_mode),
              title: Text('Developer Contact'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: GetBuilder<CalculatorController>(
        init: CalculatorController(),
        builder: (controller) {
          return Form(key: controller.formKey,
            child: ListView(
              children: [
                Padding(padding: const EdgeInsets.all(8),
                  child: Center(
                    child: SvgPicture.asset('images/cal.svg',width: 200,),),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: const Center(
                      child: Text(
                        "CGPA CALCULATOR",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2),
                      )),
                ),
                Container(

                  child: const Center(
                      child: Text(
                        "Easily covert your CGPA to Percentage",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:15,

                            letterSpacing: 2),
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(padding: const EdgeInsets.all(8),
                  child: Container(

                    width: 300,
                    child: TextFormField(
                      validator: (v){

                     return   controller.validateString(v);
                      },

                      controller: controller.cgpaController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter your CGPA',

                          labelText: 'CGPA',
                          labelStyle: TextStyle(color: Colors.black)),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(padding: const EdgeInsets.all(8),
                  child: Container(width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                      onPressed:(){

                        if(controller.formKey.currentState!.validate())
                          {controller.Calculate();

                          }
                      },
                      child: const Text(
                        "Calculate",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                Container(
                  child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      const Text("Result" ,style: TextStyle(color: Colors.black,fontSize: 20),),
                      const SizedBox(width: 40,),
        Obx(() =>    Text(
                        '${controller. myresult.value}',
                        style: TextStyle(
                            color:controller. check.value == true ? Colors.red   : primaryColor,
                            fontSize: 20),
                      ))


                    ],
                  ),

                ),

              ],
            ),
          );
        }
      ),
    );
  }
  }

