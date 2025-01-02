import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/BorderRadius/borderradius.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/BottomSheet/BottomSheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
        padding: EdgeInsets.symmetric(horizontal: MyApp.width * .02,),
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
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: MyApp.height * 0.03,
              crossAxisSpacing: MyApp.width * 0.06,
              childAspectRatio: .9,
            ),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Borderradius.containerborderradius),
                  color: ColorData.whitecolor,
                  boxShadow: const [
                    BoxShadow(
                        color: ColorData.shadecolor,
                        offset: Offset(0, 1),
                        blurRadius: 2)
                  ]),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(MyApp.height * 0.009),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.unsplash.com/photo-1621939514649-280e2ee25f60?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            width: MyApp.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MyApp.width * .04,
                              vertical: MyApp.height * .01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Textwithfont(
                                text: "Sweets packs",
                                fontWeight: FontWeight.bold,
                                fontSize: Fontsize.Fontsizemedium,
                                maxliness: 1,
                                textoverflow: TextOverflow.ellipsis,
                              ),
                              Textwithfont(
                                text: "Nestle",
                                fontWeight: FontWeight.bold,
                                fontSize: Fontsize.Fontsizemedium,
                                color: ColorData.shadecolor,
                                maxliness: 1,
                                textoverflow: TextOverflow.ellipsis,
                              ),
                              Textwithfont(
                                text: "5.00 kg",
                                fontWeight: FontWeight.bold,
                                fontSize: Fontsize.Fontsizemedium,
                                color: ColorData.seconderycolor,
                                maxliness: 1,
                                textoverflow: TextOverflow.ellipsis,
                              ),
                              Textwithfont(
                                text: "200.00 cal",
                                fontWeight: FontWeight.bold,
                                fontSize: Fontsize.Fontsizemedium,
                                color: ColorData.shadecolor,
                                maxliness: 1,
                                textoverflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: MyApp.height * .009,
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      top: MyApp.height * .01,
                      right: MyApp.width*.02,
                      child: const CircleAvatar(
                        maxRadius: kDefaultFontSize,
                        backgroundColor: ColorData.whitecolor,
                        child: Icon(Icons.favorite_border,
                          color: ColorData.maincolorDark,
                        ),
                      )),
                ],
              ),
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
///counter
// Container(
//   padding: EdgeInsets.symmetric(
//       vertical: MyApp.height * .009,
//       horizontal: MyApp.width * .005),
//   decoration: BoxDecoration(
//     borderRadius:
//         BorderRadius.circular(
//             (MyApp.width * .002) *
//                 (MyApp.height * .01)),
//     border: Border.all(
//         color: ColorData.shadecolor,
//         width: 1),
//   ),
//   child: Row(
//     mainAxisSize: MainAxisSize.min,
//     mainAxisAlignment:
//         MainAxisAlignment.spaceAround,
//     children: [
//       GestureDetector(
//         onTap: () {},
//         child: const Icon(
//           CupertinoIcons.minus_circle,
//           color: ColorData.shadecolor,
//         ),
//       ),
//       SizedBox(
//           width: MyApp.width * .02),
//       const Textwithfont(
//         text: "1",
//         fontWeight: FontWeight.bold,
//       ),
//       SizedBox(
//           width: MyApp.width * .02),
//       GestureDetector(
//           onTap: () {},
//           child: const Icon(
//               Icons.add_circle)),
//     ],
//   ),
// )
/// listview
// ListView.separated(
//     physics: const NeverScrollableScrollPhysics(),
//     shrinkWrap: true,
//     itemBuilder: (context, index) => SizedBox(
//           height: MyApp.height * .3,
//           width: MyApp.width,
//           child: Stack(
//             children: [
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   height: MyApp.height * .35,
//                   width: MyApp.width,
//                   decoration: BoxDecoration(
//                       color: ColorData.whitecolor,
//                       borderRadius: BorderRadius.circular(
//                           (MyApp.width * .02) *
//                               (MyApp.height * .002)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: ColorData.seconderycolor.withOpacity(0.1),
//                           blurRadius: 5,
//                           offset: const Offset(0, 2),
//                         ),
//                       ]),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(
//                             MyApp.height * 0.009),
//                         child: CachedNetworkImage(
//                           imageUrl:
//                               "https://images.unsplash.com/photo-1621939514649-280e2ee25f60?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//                           height: MyApp.height * 0.2,
//                           width: MyApp.width,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: MyApp.width * .02,
//                             vertical: MyApp.height * .01),
//                         child: Row(
//                           mainAxisAlignment:
//                               MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment:
//                                   CrossAxisAlignment.start,
//                               children: [
//                                 Textwithfont(
//                                   text: "Sweets packs",
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: Fontsize.Fontsizemedium,
//                                 ),
//                                 Textwithfont(
//                                   text: "Nestle | 500g |20 cal",
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: Fontsize.Fontsizemedium,
//                                   color: ColorData.shadecolor,
//                                 ),
//                                 SizedBox(
//                                   height: MyApp.height * .009,
//                                 ),
//                                 // Container(
//                                 //   padding: EdgeInsets.symmetric(
//                                 //       vertical: MyApp.height * .009,
//                                 //       horizontal: MyApp.width * .005),
//                                 //   decoration: BoxDecoration(
//                                 //     borderRadius:
//                                 //         BorderRadius.circular(
//                                 //             (MyApp.width * .002) *
//                                 //                 (MyApp.height * .01)),
//                                 //     border: Border.all(
//                                 //         color: ColorData.shadecolor,
//                                 //         width: 1),
//                                 //   ),
//                                 //   child: Row(
//                                 //     mainAxisSize: MainAxisSize.min,
//                                 //     mainAxisAlignment:
//                                 //         MainAxisAlignment.spaceAround,
//                                 //     children: [
//                                 //       GestureDetector(
//                                 //         onTap: () {},
//                                 //         child: const Icon(
//                                 //           CupertinoIcons.minus_circle,
//                                 //           color: ColorData.shadecolor,
//                                 //         ),
//                                 //       ),
//                                 //       SizedBox(
//                                 //           width: MyApp.width * .02),
//                                 //       const Textwithfont(
//                                 //         text: "1",
//                                 //         fontWeight: FontWeight.bold,
//                                 //       ),
//                                 //       SizedBox(
//                                 //           width: MyApp.width * .02),
//                                 //       GestureDetector(
//                                 //           onTap: () {},
//                                 //           child: const Icon(
//                                 //               Icons.add_circle)),
//                                 //     ],
//                                 //   ),
//                                 // )
//                               ],
//                             ),
//                             CircleAvatar(
//                                 backgroundColor: ColorData.bgcolor,
//                                 child: IconButton(
//                                     onPressed: () {},
//                                     icon: const Icon(CupertinoIcons
//                                         .cart_badge_plus)))
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const Positioned(
//                   top: 0,
//                   right: 0,
//                   child: Icon(
//                     CupertinoIcons.clear_circled_solid,
//                     color: ColorData.maincolor,
//                   )),
//             ],
//           ),
//         ),
//     separatorBuilder: (context, index) => SizedBox(
//           height: MyApp.height * .02,
//         ),
//     itemCount: 10)