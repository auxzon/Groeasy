import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/controller/HomeScreenController/HomeScreenController.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:auxzonfoodapp/widgets/homescreen/ActiveOrderCard/activeordercard.dart';
import 'package:auxzonfoodapp/widgets/homescreen/CategoryCard/categorycard.dart';
import 'package:auxzonfoodapp/widgets/homescreen/HomepageSearchbar/hmpagesearchbar.dart';
import 'package:auxzonfoodapp/widgets/homescreen/PopularGroceries/populargroceries.dart';
import 'package:auxzonfoodapp/widgets/homescreen/hmpageAppbar/hmpageAppbar.dart';
import 'package:auxzonfoodapp/widgets/homescreen/subheadingtitle/subtitleheading.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/PopularSeeAll/ui.dart';
import 'package:auxzonfoodapp/view/ProducDetailsScreen/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/Bottmnavigation/BottomNavgationBarController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeScreenController = Get.put(HomeScreenController());
    List images = [
      "https://img.freepik.com/free-photo/raw-meat-table_23-2150857912.jpg?t=st=1735558226~exp=1735561826~hmac=6240bc8c2fff05ba5882b276c6a379d1f518696c7955a2af8c61b3eb431f2975&w=1380",
      "https://images.unsplash.com/photo-1650265929240-fbf163e0d003?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://media.istockphoto.com/id/878447520/photo/vet-with-dog-and-cat.jpg?s=2048x2048&w=is&k=20&c=qaGz_6S8JtzHpamFne3LI1SiyS4I3LPxJ1B9pWeiIv4=",
      "https://images.unsplash.com/photo-1699303480277-ddcd4f05aacd?q=80&w=1990&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1671379041175-782d15092945?q=80&w=2040&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1661892402083-4a4a0adcc44a?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ];
    List Categories = [
      "Meat Products",
      "Dairy products",
      "veterinary",
      "Vegetables",
      "Fruits",
      "Fish Products",
    ];
    List<String> groceries = [
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
    List<String> groceriesimg = [
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

    return Container(
      color: ColorData.whitecolor,
      child: Center(
        child: Column(
          children: [
            /// app bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MyApp.width * .03),
              child: Hmpageappbar(
                image:
                    "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                name: "Ram",
                loc: homeScreenController.currentLocation,
                locfun: () {
                  homeScreenController.fetchCurrentLocation();
                },
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: MyApp.width * .03),
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: MyApp.height * .02,
                  ),

                  /// search bar
                  Hmpagesearchbar(
                      hinttext: "Search your needed",
                      searchfun: () {},
                      searchicn: Icons.search),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),
                  Subtitleheading(
                    title: "Categories",
                    seeall: "See All",
                    seeallfun: () {
                      final BottomNavigationBarController navcontoller =
                          Get.find();
                      navcontoller.navcontroller.jumpToTab(2);
                    },
                  ),

                  ///Categories
                  SizedBox(
                    height: MyApp.height * .18,
                    width: MyApp.width,
                    // color: Colors.red,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => HMCategorycard(
                        tapfunction: () {
                          Navi.to(PopularSeeAll(
                            title: Categories[index],
                            index: 0,
                          ));
                        },
                        image: images[index],
                        text: Categories[index],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),
                  Container(
                    height: MyApp.height * .25,
                    width: MyApp.width,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images3/banner.png"),
                        ),
                        // CachedNetworkImageProvider(
                        //     "https://img.freepik.com/free-vector/grocery-store-sale-banner-template_23-2151089846.jpg?t=st=1735554013~exp=1735557613~hmac=6a45fd96e235470b1f68ebb3813f2126a486cde1d3f0be145db0e2de7e618c89&w=1800")),
                        // color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(MyApp.height * .005)),
                  ),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),
                  Subtitleheading(
                    title: "Active Order",
                  ),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),

                  /// active order
                  Activeordercard(
                      title: "Meat",
                      qty: 2,
                      number: "+918606580635",
                      img: images[0],
                      status: 1,
                      statusno: 3),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),
                  Subtitleheading(
                    title: "Popular Groceries",
                    seeall: "See All",
                    seeallfun: () {
                      Navi.to(PopularSeeAll(
                        title: "Popular Groceries",
                        index: 0,
                      ));
                    },
                  ),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),

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
                        _buildFilterButton(
                            'Great Offers', MyApp.height, MyApp.width,
                            isSelected: true),
                        SizedBox(width: MyApp.width * 0.02),
                        _buildFilterButton(
                            'Ratings 4+', MyApp.height, MyApp.width,
                            icon: Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),
                  // Textwithfont(text: "${(MyApp.height*.005)*(MyApp.width*.0068)}"),
                  ///grid category
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: MyApp.height * 0.01,
                        crossAxisSpacing: MyApp.width * 0.02,
                        childAspectRatio:
                            (MyApp.width / MyApp.height) * 1.2, // Adjusted
                      ),
                      itemBuilder: (context, index) => Populargroceries(
                          ontap: () {
                            Get.delete<BottomNavigationBarController>();
                            Navi.to(ProductDetalsScreen(
                              image: groceriesimg[index],
                              toscreen: BottomNavigator(index: 0),
                              text: groceries[index],
                            ));
                          },
                          title: groceries[index],
                          price: 252.00,
                          pricecut: 555.00,
                          priceoff: 40,
                          img: groceriesimg[index])),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),
                  Container(
                    height: MyApp.height * .25,
                    width: MyApp.width,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images3/banner.png"),
                        ),
                        // CachedNetworkImageProvider(
                        //     "https://img.freepik.com/free-vector/grocery-store-sale-banner-template_23-2151089846.jpg?t=st=1735554013~exp=1735557613~hmac=6a45fd96e235470b1f68ebb3813f2126a486cde1d3f0be145db0e2de7e618c89&w=1800")),
                        // color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(MyApp.height * .005)),
                  ),
                  SizedBox(
                    height: MyApp.height * .02,
                  ),
                ],
              ),
            ),
          ],
        ),
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
          Textwithfont(
            text: label,
            color: isSelected ? ColorData.whitecolor : ColorData.maincolor,
            fontWeight: FontWeight.w600,
            fontSize: height * 0.016,
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
