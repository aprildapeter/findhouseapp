import 'package:findhouseapp/models/space.dart';
import 'package:findhouseapp/models/tips.dart';
import 'package:findhouseapp/providers/space_provider.dart';
import 'package:findhouseapp/theme.dart';
import 'package:findhouseapp/widgets/bottom_navbar_item.dart';
import 'package:findhouseapp/widgets/city_card.dart';
import 'package:findhouseapp/widgets/space_card.dart';
import 'package:findhouseapp/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:findhouseapp/models/city.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: 24,
            ),
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
                          id: 1, name: 'Jakarta', imageUrl: 'assets/city1.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                          id: 2,
                          name: 'Bandung',
                          imageUrl: 'assets/city2.png',
                          isPopulas: true),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                          id: 3,
                          name: 'Surabaya',
                          imageUrl: 'assets/city3.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                          id: 4,
                          name: 'Palembang',
                          imageUrl: 'assets/city4.png',
                          isPopulas: true),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                          id: 5,
                          name: 'Aceh',
                          imageUrl: 'assets/city5.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                          id: 6,
                          name: 'Bogor',
                          imageUrl: 'assets/city6.png'),
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
                child: FutureBuilder(
                  future: spaceProvider.getRecommendedSpace(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {

                      List<Space> data = snapshot.data;
                      int index = 1;
                      return Column(
                        children: data.map((item){
                          index++;
                          return Container(
                            margin: EdgeInsets.only(
                              top: index == 1 ? 0 : 30,
                            ),
                            child: SpaceCard(space: item,),
                          );
                        }).toList(),
                       
                      );
                    } else {
                      return Center(child: CircularProgressIndicator(),);
                    }
                  },
                )),
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
        margin: EdgeInsets.symmetric(
          horizontal: 24,
        ),
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
