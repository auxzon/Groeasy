import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/BorderRadius/borderradius.dart';
import '../../../common/utils/Color/Colordata.dart';
import '../../../main.dart';
import '../statusupdate/statusupdate.dart';

class Activeordercard extends StatelessWidget {
  Activeordercard({
    super.key,
    required this.title,
    required this.qty,
    required this.number,
    required this.img,
    required this.status,
    required this.statusno,
  });

  String title;
  double qty;
  String number;
  int status;
  String img;
  int statusno;

  @override
  Widget build(BuildContext context) {
    List<String> stepProp = [
      "Taken",
      "On Ride",
      "Nearest Point",
      "Finished",
    ];
    return DottedBorder(
      color: ColorData.shadecolor,
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: Radius.circular(Borderradius.containerborderradius),
      dashPattern: const [6, 3],
      child: Container(
        height: MyApp.height * 0.35,
        width: MyApp.width,
        padding: EdgeInsets.symmetric(
          horizontal: MyApp.width * .02,
          vertical: MyApp.height * .02,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: MyApp.height * .15,
                  width: MyApp.height * .15,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(img),
                    ),
                    borderRadius: BorderRadius.circular(
                        Borderradius.containerborderradius),
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Textwithfont(
                      text: title,
                      color: ColorData.seconderycolor,
                      fontWeight: FontWeight.bold,
                    ),
                    Textwithfont(
                      text: "Qty : ${qty}kg",
                      color: ColorData.shadecolor,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: MyApp.height * .02),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              launchUrl(Uri.parse("tel:$number"));
                            },
                            child: const Icon(Icons.call),
                          ),
                          GestureDetector(
                              onTap: () {
                                launchUrl(Uri.parse("tel:$number"));
                              },
                              child: const Textwithfont(
                                  text: "connect your buddy")),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Textwithfont(text: "Current Status : "),
                        Textwithfont(
                          text: status == 1
                              ? "Active"
                              : status == 2
                                  ? "Inactive"
                                  : status == 3
                                      ? "pending"
                                      : "",
                          color: status == 1
                              ? ColorData.greebuttoncolor
                              : status == 2
                                  ? ColorData.cancelbuttoncolor
                                  : status == 3
                                      ? ColorData.orangecolor
                                      : ColorData.maincolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Textwithfont(
                          text: "pin : ",
                          fontWeight: FontWeight.bold,
                          color: ColorData.shadecolor,
                          fontSize: Fontsize.Fontsizemedium,
                        ),
                        Textwithfont(
                          text: "123456",
                          fontWeight: FontWeight.bold,
                          color: ColorData.seconderycolor,
                          fontSize: Fontsize.Fontsizelarge,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Divider(),
            Spacer(),
            CustomStepper(
              stepCount: stepProp.length,
              currentStep: statusno,
              stepLabels: stepProp,
              activeColor: ColorData.maincolor,
              inactiveColor: ColorData.shadecolor,
              dividerColor: ColorData.maincolor,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
