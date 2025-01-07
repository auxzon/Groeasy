import 'dart:developer';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreenController extends GetxController{

  @override
  void onInit() {
    fetchCurrentLocation();
    // TODO: implement onInit
    super.onInit();
  }
  // map
  var result = ''.obs;
  var error = ''.obs;
  var currentLocation = ''.obs;
  Future<void> fetchCurrentLocation() async {
    try {
      PermissionStatus permissionStatus = await Permission.location.request();
      if (permissionStatus.isGranted) {
        currentLocation.value = "";
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
        await getAddressFromLatLng(position.latitude, position.longitude);
      } else if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
        currentLocation.value = "";
        Get.snackbar(
          "Location Permission",
          "Location permission denied. Please enable location permission from settings.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      currentLocation.value = "";
      log("error in fetch location : $e");
      handleError(e);
    }
  }

  Future<void> getAddressFromLatLng(double lat, double lng) async {
    try {
      currentLocation.value = "";
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        currentLocation.value = "${place.locality}, ${place.administrativeArea}, ${place.country}";
        print("currentLocation.value : ${currentLocation.value}");
      }
    } catch (e) {
      currentLocation.value = "";
      handleError(e);
    }
  }

  void handleError(dynamic error) {
    this.error.value = error.toString();
    result.value = "Error: $error";
  }
}