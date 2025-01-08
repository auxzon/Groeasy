import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:auxzonfoodapp/view/ProducDetailsScreen/ui.dart';
import 'package:auxzonfoodapp/widgets/FavouratesScreen/FavCardScreen/favcardscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavourateScreen extends StatelessWidget {
  const FavourateScreen({super.key});

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
            icon: const Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: "Favourites",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: MyApp.width * .02,
        ),
        physics: const BouncingScrollPhysics(),
        children: [
          const Center(
              child: Textwithfont(
                text: "it's the exact time to complete your orders",
                color: ColorData.shadecolor,
              )),
          SizedBox(
            height: MyApp.height * .01,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: MyApp.height * 0.03,
              crossAxisSpacing: MyApp.width * 0.06,
              childAspectRatio: (MyApp.height / MyApp.width) * .5,
            ),
            itemBuilder: (context, index) =>
                Favcardscreen(
                  detailstap: () {
                    Navi.to(ProductDetalsScreen(
                        image: "https://images.unsplash.com/photo-1621939514649-280e2ee25f60?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        text: "Sweets packs",
                        toscreen: FavourateScreen()));
                  },
                  favtap: () {},
                  title: "Sweets packs",
                  amt: "25",
                  category: "Nestle",
                  img:
                  "https://images.unsplash.com/photo-1621939514649-280e2ee25f60?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  qty: 200.15,
                ),
          ),
          SizedBox(
            height: MyApp.height * .03,
          ),
        ],
      ),
    );
  }
}
