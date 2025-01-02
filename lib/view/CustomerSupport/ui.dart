import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/text/textdata.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../../main.dart';

class CustomerSupport extends StatelessWidget {
  const CustomerSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navi.to(BottomNavigator(index: 3),
                transition: Transition.leftToRightWithFade);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: "Customer Support",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Textwithfont(
              text: "Please feel free to Contact us?",
              fontSize: Fontsize.Fontsizelarge,
            ),
            CommonMaterialButton(
              color: ColorData.maincolor,
              borderRadius: BorderRadius.circular(
                  (MyApp.width * .007) * (MyApp.width * .007)),
              padding: EdgeInsets.symmetric(horizontal: MyApp.width * .02),
              onPressed: () {
                launchUrl(Uri.parse("tel:+918606580635"));
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Textwithfont(
                    text: "Call Support",
                    color: ColorData.whitecolor,
                  ),
                  Icon(
                    Icons.phone,
                    color: ColorData.whitecolor,
                  ),
                ],
              ),
            ),
            SizedBox(height: MyApp.height * .02),
            CommonMaterialButton(
              color: ColorData.maincolor,
              borderRadius: BorderRadius.circular(
                  (MyApp.width * .007) * (MyApp.width * .007)),
              padding: EdgeInsets.symmetric(horizontal: MyApp.width * .02),
              onPressed: () async {
                String? encodeQueryParameters(Map<String, String> params) {
                  return params.entries
                      .map((MapEntry<String, String> e) =>
                          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                      .join('&');
                }

                final Uri emailUri = Uri(
                  scheme: 'mailto',
                  path: "ayyappadas@auxzon.com",
                  query: encodeQueryParameters(<String, String>{
                    'subject': 'Example Subject & Symbols are allowed!',
                    "body": "please contact me"
                  }),
                );
                if (await canLaunchUrl(emailUri)) {
                  launchUrl(emailUri);
                } else {
                  throw Exception("not able to load $emailUri");
                }
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Textwithfont(
                    text: "Email Support",
                    color: ColorData.whitecolor,
                  ),
                  Icon(
                    Icons.mail,
                    color: ColorData.whitecolor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
