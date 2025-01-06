import 'package:auxzonfoodapp/common/Navigation/navigation.dart';
import 'package:auxzonfoodapp/common/commonscaffold/commonScaffold.dart';
import 'package:auxzonfoodapp/common/text/textdata.dart';
import 'package:auxzonfoodapp/common/utils/Color/Colordata.dart';
import 'package:auxzonfoodapp/common/utils/fontsize/fontsize.dart';
import 'package:auxzonfoodapp/main.dart';
import 'package:auxzonfoodapp/view/AddressScreen/ui.dart';
import 'package:auxzonfoodapp/view/CustomerSupport/ui.dart';
import 'package:auxzonfoodapp/view/FavoriteScreen/ui.dart';
import 'package:auxzonfoodapp/view/NotificationScreen/ui.dart';
import 'package:auxzonfoodapp/view/OrdersScreen/ui.dart';
import 'package:auxzonfoodapp/view/PersonalInfoScreen/ui.dart';
import 'package:auxzonfoodapp/view/PrivacyPolicyScreen/ui.dart';
import 'package:auxzonfoodapp/view/SubscriptionPlan/ui.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
          AppBar(
            forceMaterialTransparency: true,
            automaticallyImplyLeading: false,
            title: Textwithfont(
              text: 'Profile',
              fontWeight: FontWeight.bold,
              fontSize: Fontsize.Fontsizelargeex,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  // Handle logout functionality
                },
              ),
            ],
          ),
          // User Info Section
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: CachedNetworkImageProvider(
                      'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
                const SizedBox(height: 10),
                Textwithfont(
                    text: 'Ram Karina',
                    fontSize: Fontsize.Fontsizemedium,
                    fontWeight: FontWeight.bold),
                const SizedBox(height: 5),
                Textwithfont(
                    text: 'ram@gmail.com',
                    fontSize: Fontsize.Fontsizemedium,
                    color: Colors.grey),
              ],
            ),
          ),

          // Account Section
          _buildSectionHeader('Account'),
          _buildMenuItem(
            Icons.person,
            'Personal information',
            context,
            onTap: () {
              Navi.to(PersonalInfoScreen());
            },
          ),
          _buildMenuItem(
            Icons.shopping_bag,
            'Your orders',
            context,
            onTap: () {
              Navi.to(OrderScreen());
            },
          ),
          _buildMenuItem(
            Icons.favorite,
            'Favorites',
            context,
            onTap: () {
              Navi.to(const FavourateScreen());
            },
          ),
          _buildMenuItem(
            Icons.location_on,
            'Saved addresses',
            context,
            onTap: () {
              Navi.to(ChooseAddressScreen(
                index: 3,
              ));
            },
          ),

          const SizedBox(height: 20),

          // Settings Section
          _buildSectionHeader('Settings'),
          _buildMenuItem(
            Icons.notifications,
            'Notifications',
            context,
            onTap: () {
              Navi.to(NotificationScreen(
                screen: 3,
              ));
            },
          ),
          _buildMenuItem(
            Icons.support_agent,
            'Customer support',
            context,
            onTap: () {
              Navi.to(CustomerSupport());
            },
          ),
          _buildMenuItem(
            Icons.privacy_tip,
            'Privacy policy',
            context,
            onTap: () {
              Navi.to(PrivacyPolicyScreen());
            },
          ),

          const SizedBox(height: 20),

          // Subscription Section
          _buildSectionHeader('Subscription "YumMeal Premier"'),
          _buildMenuItem(
            Icons.pie_chart_outline_sharp,
            'View details',
            context,
            onTap: () {
              Navi.to(SubscriptionPlan());
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: ColorData.maincolorDark,
          borderRadius: BorderRadius.circular(
              (MyApp.width * .007) * (MyApp.width * .007))),
      child: Textwithfont(
        text: title,
        color: Colors.white,
        fontSize: Fontsize.Fontsizelarge,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildMenuItem(
    IconData icon,
    String title,
    BuildContext context, {
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: ColorData.maincolor),
      title: Textwithfont(text: title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
