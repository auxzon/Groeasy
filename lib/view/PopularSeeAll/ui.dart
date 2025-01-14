import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/widgets/PopularSeeAll/PopularSeeAllCard/popularseeall.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../common/Navigation/navigation.dart';
import '../../common/text/textdata.dart';
import '../../common/utils/BorderRadius/borderradius.dart';
import '../../common/utils/Color/Colordata.dart';
import '../../common/utils/Padding/cardinnerpadding.dart';
import '../../common/utils/fontsize/fontsize.dart';
import '../../controller/Bottmnavigation/BottomNavgationBarController.dart';
import '../../main.dart';
import '../BottomSheet/BottomSheet.dart';
import '../ProducDetailsScreen/ui.dart';

class PopularSeeAll extends StatelessWidget {
  PopularSeeAll({
    super.key,
    this.title,
    this.index,
  });

  String? title;
  int? index;

  @override
  Widget build(BuildContext context) {
    const List<String> groceries = [
      "Apples",
      "Bananas",
      "Oranges",
      "Grapes",
      "Mangoes",
      "Strawberries",
      "Potatoes",
      "Tomatoes",
      "Onions",
      "Carrots",
      "Spinach",
      "Broccoli",
      "Cheese",
      "Butter",
      "Yogurt",
      "Chicken",
      "Beef",
      "Pork",
      "Salmon",
      "Shrimp",
      "Bread",
      "Croissants",
      "Bagels",
      "Cookies",
      "Muffins",
      "Tea",
      "Coffee",
    ];
    const List<String> groceriesimg = [
      "https://plus.unsplash.com/premium_photo-1674262321087-bfcd8135fdc5?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1667926862695-629f15968976?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1514936477380-5ea603b9a1ca?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1692813664205-d567a6829a10?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1674382739389-338645e7dd8c?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1689344314069-b60bf06d564c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1635774855536-9728f2610245?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1509963906410-fceef97f22f8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1618512496248-a07fe83aa8cb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1638402268441-9368026c1d45?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1553455860-2fa544e14141?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1701967601570-bbceb68fc341?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1691939610705-53fdc13289c0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1700440539073-c769891a9e3f?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1571212515416-fef01fc43637?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1604503468506-a8da13d82791?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1668616814977-05202080759c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1690983321750-ad6f6d59a84b?q=80&w=1984&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1675870792392-116a80bd7ad6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1548587468-971ebe4c8c3b?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1533782654613-826a072dd6f3?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1515823662972-da6a2e4d3002?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1643049439996-5a3dd331d584?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1670895802275-ed748ced4309?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1505253556788-d1b08ba92767?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1661594835845-7035de5abb30?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1517487881594-2787fef5ebf7?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ];
    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.delete<BottomNavigationBarController>();
            Navi.to(BottomNavigator(index: index ?? 0),
                transition: Transition.leftToRightWithFade);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: title ?? "Popular Groceries",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: (MyApp.height * .006) * (MyApp.height * .006)),
        children: [
          /// filter button
          Container(
            width: MyApp.width,
            height: MyApp.height * 0.05,
            decoration: const BoxDecoration(
              color: ColorData.whitecolor,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildFilterButton('Lunch', MyApp.height, MyApp.width,
                    icon: Icons.arrow_drop_down),
                SizedBox(width: MyApp.width * 0.02),
                _buildFilterButton('Nearest', MyApp.height, MyApp.width,
                    isSelected: true),
                SizedBox(width: MyApp.width * 0.02),
                _buildFilterButton('Great Offers', MyApp.height, MyApp.width,
                    isSelected: true),
                SizedBox(width: MyApp.width * 0.02),
                _buildFilterButton('Ratings 4+', MyApp.height, MyApp.width,
                    icon: Icons.arrow_drop_down),
              ],
            ),
          ),
          SizedBox(
            height: MyApp.height * .02,
          ),

          ///grid category
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: MyApp.height * 0.03,
              crossAxisSpacing: MyApp.width * 0.06,
              childAspectRatio: (MyApp.width / MyApp.height) * 1.2,
            ),
            itemBuilder: (context, index) => Popularseeall(
              image: groceriesimg[index],
              title: groceries[index],
              category: 'Apple, banana , Orange , Tomato ',
              rating: 4.8,
              time: "15 min",
              deliverytype: index.isEven ? true : false,
              tapfun: () {
                Navi.to(ProductDetalsScreen(
                  image: groceriesimg[index],
                  toscreen: PopularSeeAll(),
                  text: groceries[index],
                ));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterButton(String label, double height, double width,
      {bool isSelected = false, IconData? icon}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
      ),
      decoration: BoxDecoration(
        color: isSelected ? ColorData.maincolor : ColorData.whitecolor,
        borderRadius: BorderRadius.circular(Borderradius.buttonborderradius),
        border: Border.all(
          color: ColorData.maincolor,
        ),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: isSelected ? ColorData.whitecolor : ColorData.maincolor,
              fontWeight: FontWeight.w600,
              fontSize: height * 0.016,
            ),
          ),
          if (icon != null) ...[
            SizedBox(width: width * 0.01),
            Icon(
              icon,
              color: isSelected ? ColorData.whitecolor : ColorData.maincolor,
              size: height * 0.02,
            ),
          ],
        ],
      ),
    );
  }
}
