import 'package:auxzonfoodapp/common/common_textfield/common_textfield.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../common/Navigation/navigation.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../PersonalInfoScreen/ui.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Commonscaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MyApp.width * .03, vertical: MyApp.height * .02),
          children: [
            AppBar(
              forceMaterialTransparency: true,
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Textwithfont(
                text: "Edit Profile",
                fontSize: Fontsize.Fontsizelargeex,
                fontWeight: FontWeight.bold,
                color: ColorData.seconderycolor,
              ),
              leading: IconButton(
                onPressed: () {
                  Navi.to(const PersonalInfoScreen(),
                      transition: Transition.leftToRightWithFade);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: ColorData.seconderycolor,
                ),
              ),
            ),
            Container(
              height: MyApp.height * .2,
              width: MyApp.width * .2,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: ColorData.shadecolor, width: MyApp.width * .01),
                  color: ColorData.whitecolor,
                  image: const DecorationImage(
                      image: CachedNetworkImageProvider(
                          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
            ),
            TextButton(
                onPressed: () {},
                child: const Textwithfont(
                  text: "pick image",
                  color: ColorData.seconderycolor,
                )),
            SizedBox(
              height: MyApp.height * .04,
            ),
            const Textwithfont(
              text: "name",
              color: ColorData.shadecolor,
              fontWeight: FontWeight.bold,
            ),
            CommonTextField(
              useUnderlineBorder: true,
              controller: TextEditingController(text: "Ram Karina"),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            const Textwithfont(
              text: "email",
              color: ColorData.shadecolor,
              fontWeight: FontWeight.bold,
            ),
            CommonTextField(
              useUnderlineBorder: true,
              controller: TextEditingController(text: "ram@gmail.com"),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            const Textwithfont(
              text: "Contact number",
              color: ColorData.shadecolor,
              fontWeight: FontWeight.bold,
            ),
            CommonTextField(
              useUnderlineBorder: true,
              controller: TextEditingController(text: "987-654-1230"),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            CommonMaterialButton(
              color: ColorData.maincolor,
              width: MyApp.width,
              borderRadius:
                  BorderRadius.circular(Borderradius.buttonborderradius),
              onPressed: () {},
              child: const Textwithfont(
                text: "Save Changes",
                color: ColorData.whitecolor,
                fontWeight: FontWeight.bold,
              ),
            )
            // const Textwithfont(
            //   text: "Password",
            //   color: ColorData.shadecolor,
            //   fontWeight: FontWeight.bold,
            // ),
            // CommonTextField(
            //   useUnderlineBorder: true,
            //   controller: TextEditingController(text: "Password@123"),
            //   isPassword: true,
            //   readOnly: true,
            // ),
          ],
        ),
      ),
    );
  }
}
