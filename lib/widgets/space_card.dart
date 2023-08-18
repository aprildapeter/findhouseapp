import 'package:findhouseapp/models/space.dart';
import 'package:findhouseapp/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:findhouseapp/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard({this.space});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 110,
              width: 130,
              child: Stack(
                children: [
                  Image.asset(space.imageUrl),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpelColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36))),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_star.png',
                              scale: 5,
                            ),
                            Text(
                              '${space.rating}/5',
                              style: whiteTextStyle.copyWith(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              // Row(
              //   children: [
              //     Text('\$52 ', style: purpleTextStyle.copyWith(
              //       fontSize: 16,
              //     ),),
              //     Text('/ month', style: greyTextStyle.copyWith(
              //       fontSize: 16,
              //     ),),
              //   ],
              // )
              Text.rich(
                TextSpan(
                    text: '\$${space.price} ',
                    style: purpleTextStyle.copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                        text: ' / mounth',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    ]),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: greyTextStyle.copyWith(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
