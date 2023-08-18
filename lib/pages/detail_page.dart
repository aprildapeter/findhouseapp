import 'package:findhouseapp/models/space.dart';
import 'package:findhouseapp/pages/error_page.dart';
import 'package:findhouseapp/pages/home_page.dart';
import 'package:findhouseapp/theme.dart';
import 'package:findhouseapp/widgets/facility_item.dart';
import 'package:findhouseapp/widgets/rating_name.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final Space space;

  DetailPage({this.space});

  @override
  State<DetailPage> createState() => _DetailPageState();
}
 bool isClicked = false;
class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              widget.space.imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),

                      // NOTE : title
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.space.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: '\$${widget.space.price} ',
                                      style: purpleTextStyle.copyWith(
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                          text: ' / mounth',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 16),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                            Row(
                              children: [1,2,3,4,5,].map((index){
                                return Container(
                                  margin: EdgeInsets.only(left: 2),
                                  child: RatingItem(index: index,
                                  rating: widget.space.rating,),
                                );
                              } ).toList()
                              // [
                              //   Image.asset(
                              //     'assets/icon_star.png',
                              //     width: 20,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              //   Image.asset(
                              //     'assets/icon_star.png',
                              //     width: 20,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              //   Image.asset(
                              //     'assets/icon_star.png',
                              //     width: 20,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              //   Image.asset(
                              //     'assets/icon_star.png',
                              //     width: 20,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              //   Image.asset(
                              //     'assets/icon_star.png',
                              //     width: 20,
                              //     color: Color(0xff989BA1),
                              //   ),
                              // ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE : Main Facilities
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                        ),
                        child: Text(
                          'Main Facilities',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              imageUrl: 'assets/icon_kitchen.png',
                              name: 'kitchen',
                              total: widget.space.numberOfKitchens,
                            ),
                            FacilityItem(
                              imageUrl: 'assets/icon_bedroom.png',
                              name: 'bedroom',
                              total: widget.space.numberOfBedrooms,
                            ),
                            FacilityItem(
                              imageUrl: 'assets/icon_cupboard.png',
                              name: 'big lemari',
                              total: widget.space.numberOfCupboards,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE : Photo
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                        ),
                        child: Text(
                          'Main Facilities',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          padding: EdgeInsets.only(left: 24),
                            scrollDirection: Axis.horizontal,
                            children: widget.space.photos.map((item) {
                              return Container(
                                margin: EdgeInsets.only(right: 24,),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    item,
                                    width: 110,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }).toList(),
                            

                            // [
                            //   SizedBox(
                            //     width: 24,
                            //   ),
                            //   Image.asset(
                            //     'assets/photo1.png',
                            //     width: 110,
                            //     height: 88,
                            //     fit: BoxFit.cover,
                            //   ),
                            //   SizedBox(
                            //     width: 18,
                            //   ),
                            //   Image.asset(
                            //     'assets/photo2.png',
                            //     width: 110,
                            //     height: 88,
                            //     fit: BoxFit.cover,
                            //   ),
                            //   SizedBox(
                            //     width: 18,
                            //   ),
                            //   Image.asset(
                            //     'assets/photo3.png',
                            //     width: 110,
                            //     height: 88,
                            //     fit: BoxFit.cover,
                            //   ),
                            //   SizedBox(
                            //     width: 24,
                            //   ),
                            // ],
                            ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // NOTE : Locatiob
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                        ),
                        child: Text(
                          'Location',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jln. Kappan Sukses No. 20\nPalembang',
                                  style: greyTextStyle.copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                    widget.space.mapUrl);
                              },
                              child: Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * 24),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17))),
                            backgroundColor:
                                MaterialStateProperty.all(purpelColor),
                          ),
                          onPressed: () {
                            launchUrl('tel:${widget.space.phone}');
                          },
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: isClicked ? Image.asset(
                      'assets/btn_wishlist_active.png',
                      width: 40,
                    ) : Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
