import 'package:findhouseapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:findhouseapp/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/splash_image.png')),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logo.png'))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Find Cozy House\nto Stay and Happy',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 56,
                    width: 210,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(purpelColor),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17)))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                        child: Text('Explore Now')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
