import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:get/get.dart';

class TaskCompleteScreenController extends GetxController{
  Returnbackfun()async{
  await Future.delayed(Duration(seconds: 3,),() {
      Navi.to(BottomNavigator(index: 0));
    },);
  }
  @override
  void onInit() {
    // TODO: implement onInit
    Returnbackfun();
    super.onInit();
  }
}