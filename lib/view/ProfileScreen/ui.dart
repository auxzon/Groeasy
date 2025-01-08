import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/controller/Bottmnavigation/BottomNavgationBarController.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/AddressScreen/ui.dart';
import 'package:auxzonfoodapp/view/CustomerSupport/ui.dart';
import 'package:auxzonfoodapp/view/FavoriteScreen/ui.dart';
import 'package:auxzonfoodapp/view/NotificationScreen/ui.dart';
import 'package:auxzonfoodapp/view/OrdersScreen/ui.dart';
import 'package:auxzonfoodapp/view/PersonalInfoScreen/ui.dart';
import 'package:auxzonfoodapp/view/PrivacyPolicyScreen/ui.dart';
import 'package:auxzonfoodapp/view/SplashScreen/ui.dart';
import 'package:auxzonfoodapp/view/SubscriptionPlan/ui.dart';
import 'package:auxzonfoodapp/widgets/profile/ProfileAppbar/profileappbar.dart';
import 'package:auxzonfoodapp/widgets/profile/userinfo/userinfo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/SplashScreen/SplashScreenController.dart';
import '../../widgets/profile/MenuItems/menuitems.dart';
import '../../widgets/profile/Sectionheader/sectionheader.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorData.whitecolor,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: MyApp.width * .02),
        children: [
          Profileappbar(
            title: 'Profile',
            actionicon: Icons.logout,
            actionfun: () {
              Navi.to(SplashScreen(),
                  transition: Transition.leftToRightWithFade);
              Get.delete<SplashScreenController>();
              Get.delete<BottomNavigationBarController>();
            },
          ),
          // User Info Section
          Userinfo(
              image:
                  'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              name: 'Ram Karina',
              email: 'ram@gmail.com'),

          // Account Section
          Sectionheader(title: 'Account'),
          Menuitems(
            icon:Icons.person,
            title:'Personal information',
            onTap: () {
              Navi.to(PersonalInfoScreen());
            },
          ),
          Menuitems(
            icon: Icons.shopping_bag,
            title:'Your orders',
            onTap: () {
              Navi.to(OrderScreen());
            },
          ),
          Menuitems(
            icon:Icons.favorite,
            title:'Favorites',
            onTap: () {
              Navi.to(const FavourateScreen());
            },
          ),
          Menuitems(
            icon:Icons.location_on,
            title:'Saved addresses',
            onTap: () {
              Navi.to(ChooseAddressScreen(
                index: 3,
              ));
            },
          ),

          const SizedBox(height: 20),

          // Settings Section
          Sectionheader(title: 'Settings'),
          Menuitems(
            icon:Icons.notifications,
            title: 'Notifications',
            onTap: () {
              Navi.to(NotificationScreen(
                screen: 3,
              ));
            },
          ),
          Menuitems(
            icon:Icons.support_agent,
            title:'Customer support',
            onTap: () {
              Navi.to(CustomerSupport());
            },
          ),
          Menuitems(
            icon:Icons.privacy_tip,
            title: 'Privacy policy',
            onTap: () {
              Navi.to(PrivacyPolicyScreen());
            },
          ),
          const SizedBox(height: 20),
          Container(
            height: MyApp.height * .25,
            width: MyApp.width,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: ColorData.shadecolor,
                      offset: Offset(0, 2),
                      blurRadius: 2)
                ],
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images3/profilebanner1.png"),
                ),
                // CachedNetworkImageProvider(
                //     "https://img.freepik.com/free-vector/grocery-store-sale-banner-template_23-2151089846.jpg?t=st=1735554013~exp=1735557613~hmac=6a45fd96e235470b1f68ebb3813f2126a486cde1d3f0be145db0e2de7e618c89&w=1800")),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(MyApp.height * .005)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
