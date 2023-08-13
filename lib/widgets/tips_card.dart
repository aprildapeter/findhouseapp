import 'package:findhouseapp/models/tips.dart';
import 'package:flutter/material.dart';
import 'package:findhouseapp/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard({this.tips});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          child: Image.asset(tips.imageUrl),
        ),
        SizedBox(width: 16,),
        Column(
          children: [
            Text(tips.title, style: blackTextStyle.copyWith(fontSize: 18),),
            SizedBox(height: 4,),
            Text('Updated ${tips.updatedAt}', style: greyTextStyle.copyWith(fontSize: 18),),
          ],
        ),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right, color: greyColor,),),
      ],
    );
  }
}