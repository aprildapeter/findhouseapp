import 'package:findhouseapp/models/space.dart';
import 'package:findhouseapp/models/tips.dart';
import 'package:findhouseapp/theme.dart';
import 'package:findhouseapp/widgets/bottom_navbar_item.dart';
import 'package:findhouseapp/widgets/city_card.dart';
import 'package:findhouseapp/widgets/space_card.dart';
import 'package:findhouseapp/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:findhouseapp/models/city.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: 24,),
            // NOTE : Explore
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : Popular
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Popular',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(
                      city: City(
                          id: 1,
                          name: 'Jakarta',
                          imageUrl: 'assets/city1.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                          id: 1,
                          name: 'Bandung',
                          imageUrl: 'assets/city2.png',
                          isPopulas: true),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                          id: 2,
                          name: 'Surabaya',
                          imageUrl: 'assets/city3.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : Recommended space
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Recommended Space',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SpaceCard(
                    space: Space(
                        id: 1,
                        name: 'Kuretakeso Hott',
                        imageUrl: 'assets/space1.png',
                        rating: 4,
                        price: 52,
                        city: 'Bandung',
                        country: 'Germany'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(
                        id: 2,
                        name: 'Roemah Nenek',
                        imageUrl: 'assets/space2.png',
                        rating: 5,
                        price: 11,
                        city: 'Seattle',
                        country: 'Bogor'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(
                        id: 3,
                        name: 'Darrling How',
                        imageUrl: 'assets/space3.png',
                        rating: 3,
                        price: 20,
                        city: 'Jakarta',
                        country: 'Indonesia'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : Tips & Guidance
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Tips & Guidance',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  TipsCard(
                    tips: Tips(
                      id: 1,
                      imageUrl: 'assets/tips1.png',
                      title: 'City Guidelines',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    tips: Tips(
                      id: 2,
                      imageUrl: 'assets/tips2.png',
                      title: 'Jakarta Fairship',
                      updatedAt: '11 Desc',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),

      floatingActionButton: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width - (2 * 24),
                  margin: EdgeInsets.symmetric(horizontal: 24,),
                  decoration: BoxDecoration(
                    color: Color(0xfff6f7f8),
                    borderRadius: BorderRadius.circular(23),
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomNavbarItem(
                        imageUrl: 'assets/icon_home.png',
                        isActive: true,
                      ),
                      BottomNavbarItem(
                        imageUrl: 'assets/icon_email.png',
                        isActive: false,
                      ),
                      BottomNavbarItem(
                        imageUrl: 'assets/icon_card.png',
                        isActive: false,
                      ),
                      BottomNavbarItem(
                        imageUrl: 'assets/icon_love.png',
                        isActive: false,
                      ),
                    ],
                  ),
                ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
