import 'package:findhouseapp/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  String name;
  String imageUrl;
  int total;

  FacilityItem({this.name, this.total, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl,
        width: 32,),
        SizedBox(height: 8,),
        Text.rich(
          TextSpan(
            text: '${total} ',
             style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: name,
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ]
          )
        )
      ],
    );
  }
}