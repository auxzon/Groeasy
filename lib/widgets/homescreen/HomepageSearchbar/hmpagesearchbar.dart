import 'package:auxzonfoodapp/main.dart';
import 'package:flutter/material.dart';
import '../../../common/common_textfield/common_textfield.dart';
import '../../../common/utils/BorderRadius/borderradius.dart';
import '../../../common/utils/Color/Colordata.dart';

class Hmpagesearchbar extends StatelessWidget {
  Hmpagesearchbar({
    super.key,
    required this.hinttext,
    required this.searchfun,
    required this.searchicn,
  });
  String hinttext;
  VoidCallback searchfun;
  IconData searchicn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: MyApp.height * .1,
      width: MyApp.width,
      child: Row(
        children: [
           Expanded(
              flex: 6,
              child: CommonTextField(
                prefixIcon:  Icon(searchicn,
                  color: ColorData.maincolor,
                ),
                hintText: hinttext,
              )),
          SizedBox(
            width: MyApp.width * .02,
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: searchfun,
              child: Container(
                height: MyApp.height * .070,
                width: MyApp.height * .070,
                decoration: BoxDecoration(
                    color: ColorData.maincolor,
                    borderRadius:
                        BorderRadius.circular(Borderradius.buttonborderradius)),
                child: const Icon(
                  Icons.arrow_forward_outlined,
                  color: ColorData.whitecolor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
