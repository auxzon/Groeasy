import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/controller/PaymentScreen/PaymentScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/text/textdata.dart';
import '../../common/utils/Color/Colordata.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../../main.dart';
import '../AddressScreen/ui.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen(
      {super.key,
      this.index,
      this.screen,
      required this.rate,
      required this.productName,
      required this.noOfProducts,
      required this.deliveryAddress});

  final int? index;
  final Widget? screen;
  final double rate;
  final String productName;
  final int noOfProducts;
  final String deliveryAddress;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PaymentController());
    double totalPrice = rate * noOfProducts;

    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navi.to(
              ChooseAddressScreen(index: index, screen: screen),
              transition: Transition.leftToRightWithFade,
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
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
          SizedBox(height: MyApp.height * .03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Textwithfont(
                  text: "Order Summary",
                  fontWeight: FontWeight.bold,
                  fontSize: Fontsize.Fontsizelarge,
                ),
                SizedBox(height: MyApp.height * .02),
                _buildOrderSummaryRow("Product:", productName),
                _buildOrderSummaryRow("No. of Products:", "$noOfProducts"),
                _buildOrderSummaryRow("Price per Product:", "\$$rate"),
                _buildOrderSummaryRow("Total Price:", "\$$totalPrice"),
                _buildOrderSummaryRow("Delivery Address:", deliveryAddress),
              ],
            ),
          ),
          SizedBox(height: MyApp.height * .06),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CommonMaterialButton(
              color: ColorData.maincolor,
              padding: EdgeInsets.symmetric(horizontal: MyApp.width * .1),
              borderRadius: BorderRadius.circular(
                  (MyApp.width * .007) * (MyApp.width * .007)),
              onPressed: () {
                controller.startTransaction(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.payment,
                    color: ColorData.whitecolor,
                  ),
                  SizedBox(width: 10),
                  Textwithfont(
                    text: "Pay \$$totalPrice",
                    fontWeight: FontWeight.bold,
                    color: ColorData.whitecolor,
                    fontSize: Fontsize.Fontsizemedium,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MyApp.height * .06),
        ],
      ),
    );
  }

  Widget _buildOrderSummaryRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Textwithfont(
            text: label,
            fontWeight: FontWeight.w500,
            fontSize: Fontsize.Fontsizesmall,
          ),
          Flexible(
            child: Textwithfont(
              text: value,
              fontWeight: FontWeight.w500,
              fontSize: Fontsize.Fontsizesmall,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
