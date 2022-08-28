import 'package:cgpacal/Calculator/View/calculator.dart';
import 'package:cgpacal/Routes/bindings.dart';
import 'package:cgpacal/Routes/set_routes.dart';
import 'package:cgpacal/hec_formula.dart';
import 'package:get/get.dart';

class MyPages {
  List<GetPage> Screens() {
    return [
      GetPage(
          name: calculator, page: () => Calculator(), binding: ScreenBinding()),
      GetPage(
          name: hecFormulaScreen,
          page: () => HexFormula(),
          binding: ScreenBinding())
    ];
  }
}
