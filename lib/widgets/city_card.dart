import 'package:findhouseapp/models/city.dart';
import 'package:findhouseapp/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {

  final City city;

  CityCard({this.city});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(children: [
          Stack(
            children: [
              Image.asset(city.imageUrl,
              height: 102,
              width: 120,
              fit: BoxFit.cover,
              ),
              city.isPopulas ? Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                    color: purpelColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36)
                    )
                  ),
                  child: Image.asset('assets/icon_star.png',
                  scale: 5,),
                ),
              )
              : Container(),
            ],
          ),
          SizedBox(height: 11,),
          Text(city.name,
          style: blackTextStyle.copyWith(fontSize: 16),)
        ]),
      ),
    );
  }
}