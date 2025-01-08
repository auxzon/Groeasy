import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../common/text/textdata.dart';
import '../../../common/utils/fontsize/fontsize.dart';

class Userinfo extends StatelessWidget {
Userinfo({
    super.key,
    required this.image,
    required this.name,
    required this.email,
  });

  String image;
  String name;
  String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: CachedNetworkImageProvider(
                image),
          ),
          const SizedBox(height: 10),
          Textwithfont(
              text: name,
              fontSize: Fontsize.Fontsizemedium,
              fontWeight: FontWeight.bold),
          const SizedBox(height: 5),
          Textwithfont(
              text: email,
              fontSize: Fontsize.Fontsizemedium,
              color: Colors.grey),
        ],
      ),
    );
  }
}
