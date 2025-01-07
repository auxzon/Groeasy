import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/common_textfield/common_textfield.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/controller/LoginScreen/LofinScreenController.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LoninScreenController());
    return Commonscaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: MyApp.width * .05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MyApp.height * .2,
                width: MyApp.height * .2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images3/image1.png"))),
              ),
              SizedBox(
                height: MyApp.height * .05,
              ),
              Obx(
                () => controller.loginwithemail.value
                    ? Column(
                        children: [
                          const CommonTextField(
                            useUnderlineBorder: true,
                            prefixIcon: Icon(Icons.mail),
                            hintText: "enter mail",
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: MyApp.height * .02,
                          ),
                          const CommonTextField(
                            useUnderlineBorder: true,
                            prefixIcon: Icon(Icons.lock),
                            hintText: "enter password",
                          ),
                          SizedBox(
                            height: MyApp.height * .02,
                          ),
                          CommonMaterialButton(
                            width: MyApp.width * .5,
                            color: ColorData.maincolor,
                            borderRadius: BorderRadius.circular(
                                Borderradius.buttonborderradius),
                            onPressed: () {
                              Navi.to(BottomNavigator(index: 0));
                            },
                            child: Textwithfont(
                              text: "VERIFY",
                              color: ColorData.whitecolor,
                              fontWeight: FontWeight.bold,
                              fontSize: Fontsize.Fontsizemedium,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          CommonTextField(
                            useUnderlineBorder: true,
                            prefixIcon: const Icon(Icons.call),
                            hintText: "enter phone number",
                            keyboardType: TextInputType.number,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  controller.showotpfieldfun();
                                },
                                icon: const Icon(Icons.arrow_forward_outlined)),
                          ),
                          SizedBox(
                            height: MyApp.height * .02,
                          ),
                          Obx(
                            () => Visibility(
                              visible: controller.showoptfield.value,
                              child: const CommonTextField(
                                hintText: "enter otp",
                                useUnderlineBorder: true,
                                suffixIcon: Icon(Icons.more_horiz),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MyApp.height * .02,
                          ),
                          CommonMaterialButton(
                            width: MyApp.width * .5,
                            color: ColorData.maincolor,
                            borderRadius: BorderRadius.circular(
                                Borderradius.buttonborderradius),
                            onPressed: () {
                              Navi.to(BottomNavigator(index: 0));
                            },
                            child: Textwithfont(
                              text: "VERIFY",
                              color: ColorData.whitecolor,
                              fontWeight: FontWeight.bold,
                              fontSize: Fontsize.Fontsizemedium,
                            ),
                          ),
                        ],
                      ),
              ),
              Obx(
                () => controller.loginwithemail.value
                    ? TextButton(
                        onPressed: () {
                          controller.changelogin();
                        },
                        child: Textwithfont(
                          text: "login with email",
                          color: ColorData.bluebuttoncolor,
                        ))
                    : TextButton(
                        onPressed: () {
                          controller.changelogin();
                        },
                        child: Textwithfont(
                          text: "login with phone-number",
                          color: ColorData.bluebuttoncolor,
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
