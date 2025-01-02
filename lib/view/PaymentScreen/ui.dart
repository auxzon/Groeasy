import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/controller/PaymentScreen/PaymentScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/text/textdata.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../../main.dart';
import '../AddressScreen/ui.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key, this.index, this.screen,required this.rate});
  int? index;
  Widget?screen;
  double rate;
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PaymentController());
    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
                Navi.to(ChooseAddressScreen(index: index,screen: screen,),
                    transition: Transition.leftToRightWithFade);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: "Payment",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(height: MyApp.height * .06),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: Theme.of(context).colorScheme.inversePrimary.withOpacity(.8),
              elevation: 20,
              child: Column(
                children: [
                  SizedBox(height: MyApp.height * .01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Textwithfont(
                      text: "Location",
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: MyApp.height * .01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              controller.currentLocation.isNotEmpty
                                  ? controller.currentLocation.value
                                  : "Fetching location...",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                controller.fetchCurrentLocation();
                              },
                              icon: Icon(
                                Icons.refresh,
                                color: Theme.of(context).colorScheme.secondaryContainer,
                              ))
                        ],
                      );
                    }),
                  ),
                  SizedBox(height: MyApp.height * .06),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Obx(() {
                      if (controller.result.isNotEmpty) {
                        return Row(
                          children: [
                            Text(
                              controller.result.value,
                              style: TextStyle(
                                fontSize: 16,
                                color: controller.status.value == 'SUCCESS'
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    }),
                  ),
                  SizedBox(height: MyApp.height * .01),
                ],
              ),),
          ),
          SizedBox(height: MyApp.height * .02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Obx(
                  () => controller.currentLocation.isNotEmpty
                  ? FilledButton.tonalIcon(
                onPressed: () {
                  controller.startTransaction(context);
                },
                label: Textwithfont(
                  text: "Pay $rate",
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.w700,
                ),
                icon: Icon(Icons.payment,
                    color: Theme.of(context).colorScheme.onPrimary),
              )
                  : SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
