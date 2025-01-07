// import 'package:auxzonfoodapp/main.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CartAnimationScreen extends StatelessWidget {
//   final CartAnimationController controller = Get.put(CartAnimationController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart Animation'),
//       ),
//       body: Stack(
//         children: [
//           Center(
//             child: ElevatedButton(
//               onPressed: () => controller.startAnimation(),
//               child: Text('Start Animation'),
//             ),
//           ),
//           Obx(() {
//             return Positioned(
//               top: controller.cartYPosition.value,
//               left: controller.cartXPosition.value,
//               child: Opacity(
//                 opacity: controller.containerOpacity.value,
//                 child: Container(
//                   height: MyApp.height*.1,
//                   width: MyApp.width*.4,
//                   decoration: BoxDecoration(
//                     color: Color(0xFF17543E),
//                     borderRadius: BorderRadius.circular(25)
//                   ),
//                   alignment: Alignment.center,
//                   child: Row(mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         "Item Added",
//                         style: TextStyle(color: Color(0xFFFFFFFF)),
//                       ),
//                       Icon(
//                         Icons.shopping_cart,
//                         size: 30,
//                         color: Colors.red,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }
//
// class CartAnimationController extends GetxController {
//   var cartYPosition = (-40.0).obs; // Start above the screen
//   var cartXPosition = 0.0.obs; // Start from the left of the screen
//   var containerOpacity = 1.0.obs; // Fully visible initially
//
//   void startAnimation() async {
//     cartYPosition.value = -40; // Reset position for repeated animation
//     cartXPosition.value = 0; // Reset position
//     containerOpacity.value = 1.0; // Reset opacity
//
//     // Animate falling from top
//     await Future.delayed(Duration(milliseconds: 200));
//     while (cartYPosition.value < 300) {
//       cartYPosition.value += 5; // Move down
//       await Future.delayed(Duration(milliseconds: 10));
//     }
//
//     // Slide to the right and fade the container
//     while (cartXPosition.value < 200) {
//       cartXPosition.value += 5; // Move right
//       containerOpacity.value = (containerOpacity.value - 0.025).clamp(0.0, 1.0); // Fade out
//       await Future.delayed(Duration(milliseconds: 10));
//     }
//
//     // Make sure everything disappears
//     containerOpacity.value = 0;
//   }
//
// }