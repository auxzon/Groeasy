import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/view/LoginScreen/ui.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController
{
  loadscreen()async{
    await Future.delayed(const Duration(seconds: 3),() {
      Navi.to(const LoginScreen());
    },);
  }
  @override
  void onInit() {
    loadscreen();
    // TODO: implement onInit
    super.onInit();
  }
}