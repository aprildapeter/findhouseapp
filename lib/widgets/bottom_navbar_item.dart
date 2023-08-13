import 'package:flutter/material.dart';
import 'package:findhouseapp/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  String imageUrl;
  bool isActive;

  BottomNavbarItem({this.imageUrl, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19),
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            width: 26,
          ),
          Spacer(),
          isActive ? Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: purpelColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(1000)),
            ),
          ) : Container()
        ],
      ),
    );
  }
}
