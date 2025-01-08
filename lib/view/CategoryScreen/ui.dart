import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/view/PopularSeeAll/ui.dart';
import 'package:auxzonfoodapp/widgets/Category/CategoryAppbar/appbar.dart';
import 'package:auxzonfoodapp/widgets/Category/CategorySearchbar/categorysearchbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
import '../../widgets/Category/CategoryCard/categorycard.dart';
import '../../widgets/Category/Sectionheader/sectionheader.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Container(
      color: ColorData.whitecolor,
      child: Column(
        children: [
          CatAppbar(title: "Category"),
          // Search Bar
          Categorysearchbar(
            title: 'Search categories...',
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: [
                // Hot Deals Section
                const SectionHeader(title: 'Hot Deals'),
                SizedBox(
                  height: MyApp.height * .22,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: MyApp.height * .02),
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.length,
                    itemBuilder: (context, index) => CategoryCard(
                      tapfun: () {
                        Navi.to(PopularSeeAll(
                          title: Categories[index],
                          index: 2,
                        ));
                      },
                      title: Categories[index],
                      imageUrl: images[index],
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 16),
                  ),
                ),
                const SizedBox(height: 20),

                // Categories by Store Section
                const SectionHeader(title: 'Categories by Store'),
                SizedBox(
                  height: MyApp.height * .22,
                  child: ListView.separated(
                    reverse: true,
                    padding: EdgeInsets.symmetric(vertical: MyApp.height * .02),
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.length,
                    itemBuilder: (context, index) => CategoryCard(
                      tapfun: () {
                        Navi.to(PopularSeeAll(
                          title: ' Bread & Bakery',
                          index: 2,
                        ));
                      },
                      title: Categories[index],
                      imageUrl: images[index],
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 16),
                  ),
                ),
                const SizedBox(height: 20),

                // General Categories Section
                const SectionHeader(title: 'Other Categories'),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: MyApp.height * 0.03,
                    crossAxisSpacing: MyApp.width * 0.06,
                    childAspectRatio: 1.4,
                  ),
                  itemCount: Categories.length,
                  itemBuilder: (context, index) => CategoryCard(
                    tapfun: () {
                      if (kDebugMode) {
                        print('Clicked on Other Category ${index + 1}');
                        Navi.to(PopularSeeAll(
                          title: 'Other Categories',
                          index: 2,
                        ));
                      }
                    },
                    title: Categories[index],
                    imageUrl: images[index],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MyApp.height * .02),
        ],
      ),
    );
  }
}
