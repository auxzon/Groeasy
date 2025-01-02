import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/controller/AddressScreen/AddressScreenController.dart';
import 'package:auxzonfoodapp/controller/Bottmnavigation/BottomNavgationBarController.dart';
import 'package:auxzonfoodapp/view/PaymentScreen/ui.dart';
import 'package:auxzonfoodapp/view/TaskCompleteScreen/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../common/Navigation/navigation.dart';
import '../../common/commonscaffold/commonScaffold.dart';
import '../../common/text/textdata.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../../main.dart';
import '../BottomSheet/BottomSheet.dart';
import '../NewAddressScreen/ui.dart';

class ChooseAddressScreen extends StatelessWidget {
  ChooseAddressScreen({super.key, this.index, this.screen});

  int? index;
  Widget? screen;

  @override
  Widget build(BuildContext context) {
    AddressScreenController addressScreenController =
        Get.put(AddressScreenController());
    print("index i $index and screen is  $screen");
    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              if (index == null) {
                Navi.to(screen!);
              } else {
                Get.delete<BottomNavigationBarController>();
                Navi.to(BottomNavigator(index: index ?? 0),
                    transition: Transition.leftToRightWithFade);
              }
            },
            icon: const Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: "Choose Address",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: MyApp.width * .02),
              physics: const BouncingScrollPhysics(),
              children: [
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                (MyApp.width * .007) * (MyApp.width * .007)),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 1),
                                  blurRadius: 2,
                                  color:
                                      ColorData.seconderycolor.withOpacity(.5))
                            ],
                            color: ColorData.whitecolor,
                          ),
                          child: ListTile(
                            title: Textwithfont(
                                text: index.isEven ? "Office" : 'My home'),
                            subtitle: Textwithfont(
                                text: index.isEven
                                    ? 'Odesa\nExample street, 1\n1th floor\nApartment 1'
                                    : "Odesa\nExample street, 1\n1th floor\nApartment 2"),
                            trailing: Radio(
                              activeColor: ColorData.maincolor,
                              value: index.isEven ? true : false,
                              groupValue: true,
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: MyApp.height * .02,
                        ),
                    itemCount: 2),
                SizedBox(height: MyApp.height * .02),
                CommonMaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: MyApp.width * .1),
                  borderRadius: BorderRadius.circular(
                      (MyApp.width * .007) * (MyApp.width * .007)),
                  color: ColorData.maincolor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddNewAddressScreen()),
                    );
                  },
                  child: const Textwithfont(
                    text: 'Add new address',
                    color: ColorData.whitecolor,
                  ),
                ),
                SizedBox(height: MyApp.height * .02),
                Textwithfont(
                  text: 'Select Payment Type',
                  fontSize: Fontsize.Fontsizelarge,
                ),
                Obx(() => ListTile(
                      title: const Text('C O D'),
                      leading: Radio<bool>(
                        activeColor: ColorData.maincolorDark,
                        value: true,
                        groupValue: addressScreenController.codpayment.value,
                        onChanged: (value) {
                          if (value != null) {
                            addressScreenController.togglePaymentMethod(value);
                          }
                        },
                      ),
                    )),
                Obx(() => ListTile(
                      title: const Text('Online Payment | UPI'),
                      leading: Radio<bool>(
                        activeColor: ColorData.maincolorDark,
                        value: false,
                        groupValue: addressScreenController.codpayment.value,
                        onChanged: (value) {
                          if (value != null) {
                            addressScreenController.togglePaymentMethod(value);
                          }
                        },
                      ),
                    )),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Borderradius.containerborderradius),
                topRight: Radius.circular(Borderradius.containerborderradius),
              ),
                color: ColorData.whitecolor,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 2,
                      offset: Offset(2, 0),
                      color: ColorData.shadecolor)
                ]),
            padding: EdgeInsets.symmetric(
                horizontal: MyApp.width * .02, vertical: MyApp.height * .01),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textwithfont(
                      text: 'Product price',
                      fontSize: Fontsize.Fontsizemedium,
                      fontWeight: FontWeight.w500,
                      color: ColorData.shadecolor,
                    ),
                    Textwithfont(
                      text: 'Rs. 200.00',
                      fontSize: Fontsize.Fontsizemedium,
                      fontWeight: FontWeight.bold,
                      color: ColorData.shadecolor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textwithfont(
                      text: 'Extra price',
                      fontSize: Fontsize.Fontsizemedium,
                      fontWeight: FontWeight.w500,
                      color: ColorData.shadecolor,
                    ),
                    Textwithfont(
                      text: 'Rs. 10.00',
                      fontSize: Fontsize.Fontsizemedium,
                      fontWeight: FontWeight.w500,
                      color: ColorData.shadecolor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Textwithfont(
                        text: 'Total price',
                        fontSize: Fontsize.Fontsizemedium,
                        fontWeight: FontWeight.bold),
                    Textwithfont(
                        text: 'Rs. 210.00',
                        fontSize: Fontsize.Fontsizemedium,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: MyApp.height * .02),
                Obx(
                  () => CommonMaterialButton(
                    width: MyApp.width,
                    borderRadius: BorderRadius.circular(
                        (MyApp.width * .007) * (MyApp.width * .007)),
                    color: ColorData.maincolor,
                    onPressed: () {
                      addressScreenController.codpayment.value
                          ? Navi.to(const TaskCompleteScreen())
                          : Navi.to(PaymentScreen(
                              index: index,
                              screen: screen,
                              rate: 1.2,
                            ));
                    },
                    child: Textwithfont(
                      text: addressScreenController.codpayment.value
                          ? "Complete COD Payment"
                          : 'Proceed to payment',
                      color: ColorData.whitecolor,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
