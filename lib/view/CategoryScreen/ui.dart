import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/view/PopularSeeAll/ui.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Commonscaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Textwithfont(
          text: "Category",
          fontSize: Fontsize.Fontsizelargeex,
          fontWeight: FontWeight.bold,
        ),
      ),
      canPop: false,
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search categories...',
                prefixIcon: const Icon(Icons.search, color: ColorData.seconderycolor),
                filled: true,
                fillColor: const Color(0xFFFFFFFF),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Color(0xFFA8A8A8),
                    width: 1,
                  ),
                ),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: [
                // Hot Deals Section
                const SectionHeader(title: 'Hot Deals'),
                SizedBox(
                  height: MyApp.height * .22,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: MyApp.height * .02),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navi.to(PopularSeeAll(title:"Frozen Items",index: 2,));
                      },
                      child: const CategoryCard(
                        title: "Frozen Items",
                        imageUrl: "https://images.unsplash.com/photo-1556471013-0001958d2f12?q=80&w=2106&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(width: 16),
                  ),
                ),
                const SizedBox(height: 20),

                // Categories by Store Section
                const SectionHeader(title: 'Categories by Store'),
                SizedBox(
                  height: MyApp.height * .22,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: MyApp.height * .02),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navi.to(PopularSeeAll(title:' Bread & Bakery',index: 2,));
                      },
                      child: const CategoryCard(
                        title: ' Bread & Bakery',
                        imageUrl:
                        'https://images.unsplash.com/photo-1598679253544-2c97992403ea?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(width: 16),
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
                    childAspectRatio:1.4,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      if (kDebugMode) {
                        print('Clicked on Other Category ${index + 1}');
                        Navi.to(PopularSeeAll(title:'Other Categories',index: 2,));
                      }
                    },
                    child: const CategoryCard(
                      title: 'Other Categories',
                      imageUrl:
                      'https://images.unsplash.com/photo-1485921325833-c519f76c4927?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
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

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Textwithfont(
        text: title,
        fontSize: Fontsize.Fontsizelarge,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryCard({required this.title, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyApp.width * .4,
      height: MyApp.height * .22,
      decoration: BoxDecoration(
        color: ColorData.whitecolor,
        boxShadow: [
          BoxShadow(color: ColorData.shadecolor,blurRadius: 2,offset: Offset(1, 0))
        ],borderRadius: BorderRadius.circular(Borderradius.containerborderradius)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(Borderradius.containerborderradius)),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: double.infinity,
              height: MyApp.height * 0.12,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => Container(
                color: Colors.grey[300],
                child: const Icon(
                  Icons.broken_image,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Textwithfont(
              textoverflow: TextOverflow.ellipsis,
              maxliness: 1,
              text: title,
              textAlign: TextAlign.center,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
