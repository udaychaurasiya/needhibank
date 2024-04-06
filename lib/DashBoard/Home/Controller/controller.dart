import 'package:get/get.dart';
class HomeController extends GetxController {
  RxInt SelectIndex=0.obs;
  RxString urlValue = "".obs;
  DateTime? currentBackPressTime;

  // Future<bool> onWillPop() {
  //   DateTime now = DateTime.now();
  //   if (currentBackPressTime == null ||
  //       now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
  //     Navigator.of(context).popUntil((route) => route.isFirst);
  //     urlValue.value = "";
  //     currentBackPressTime = now;
  //     CustomAnimation().showCustomToast('Press again to exit NidhiBank', isError: false);
  //     return Future.value(false);
  //   }
  //   return Future.value(true);
  // }
}