import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/common_textfield/common_textfield.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/elevted_button/ElevatedButton.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/AddressScreen/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AddNewAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navi.to(ChooseAddressScreen(index: 3,),
                  transition: Transition.leftToRightWithFade);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: "Add New Address",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all((MyApp.width * .007) * (MyApp.width * .007)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CommonTextField(
                labelText: 'Title',
                hintText: 'Enter the title of the address',
                useUnderlineBorder: true,
              ),
              SizedBox(height: MyApp.height * .02),
              CommonTextField(
                labelText: 'City',
                hintText: 'Enter your city',
                useUnderlineBorder: true,
              ),
              SizedBox(height: MyApp.height * .02),
              CommonTextField(
                labelText: 'Street Name',
                hintText: 'Enter the name of the street',
                useUnderlineBorder: true,
              ),
              SizedBox(height: MyApp.height * .02),
              CommonTextField(
                labelText: 'Floor Number',
                hintText: 'Enter your floor number',
                useUnderlineBorder: true,
              ),
              SizedBox(height: MyApp.height * .02),
              CommonTextField(
                labelText: 'Apartment Number',
                hintText: 'Enter your apartment number',
                useUnderlineBorder: true,
              ),
              SizedBox(height: MyApp.height * .02),
              Row(
                children: [
                  Expanded(
                    child: CommonMaterialButton(
                      color: ColorData.maincolor,
                      borderRadius: BorderRadius.circular(
                          (MyApp.width * .007) * (MyApp.width * .007)),
                      onPressed: () {},
                      child: Textwithfont(
                        text: 'Save the address',
                        color: ColorData.whitecolor,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.Fontsizemedium,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Textwithfont(
                        text: 'Cancel',
                        color: ColorData.maincolor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
