import 'package:get/get.dart';

class LoninScreenController extends GetxController
{
  var showoptfield = false.obs;

  showotpfieldfun(){
    showoptfield.value = !showoptfield.value;
  }
}