import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
          text: "Privacy Policy",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Textwithfont(
              text: "Privacy Policy for Groeasy",
              fontSize: Fontsize.Fontsizelargeex,
              fontWeight: FontWeight.bold,
              color: ColorData.maincolor,
            ),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text: "Effective Date: January 1, 2025",
                fontSize: Fontsize.Fontsizelarge,
                fontWeight: FontWeight.bold),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text:
                    "Welcome to Groeasy! Your privacy is important to us, and this Privacy Policy explains how we collect, use, and safeguard your information when you use our mobile application.",
                fontSize: Fontsize.Fontsizemedium),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text: "Information We Collect",
                fontSize: Fontsize.Fontsizelarge,
                fontWeight: FontWeight.bold),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text:
                    "We may collect personal information such as your name, email address, phone number, and payment information to provide and improve our services.",
                fontSize: Fontsize.Fontsizemedium),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text: "How We Use Your Information",
                fontSize: Fontsize.Fontsizelarge,
                fontWeight: FontWeight.bold),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text:
                    "Your information is used to personalize your experience, process transactions, send notifications, and improve our services.",
                fontSize: Fontsize.Fontsizemedium),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text: "Data Security",
                fontSize: Fontsize.Fontsizelarge,
                fontWeight: FontWeight.bold),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text:
                    "We implement industry-standard security measures to protect your information. However, no method of transmission or storage is 100% secure.",
                fontSize: Fontsize.Fontsizemedium),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text: "Third-Party Services",
                fontSize: Fontsize.Fontsizelarge,
                fontWeight: FontWeight.bold),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text:
                    "Groeasy may integrate with third-party services, and their privacy policies will apply to the data they collect.",
                fontSize: Fontsize.Fontsizemedium),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text: "Your Choices",
                fontSize: Fontsize.Fontsizelarge,
                fontWeight: FontWeight.bold),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text:
                    "You can manage your data preferences in the app settings. For account deletion or data inquiries, contact our support team.",
                fontSize: Fontsize.Fontsizemedium),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
                text: "Contact Us",
                fontSize: Fontsize.Fontsizelarge,
                fontWeight: FontWeight.bold),
            SizedBox(height: MyApp.height * .02),
            Textwithfont(
              text:
                  "If you have questions about this Privacy Policy, please contact us at support@groeasy.com.",
                fontSize: Fontsize.Fontsizemedium),
          ],
        ),
      ),
    );
  }
}
