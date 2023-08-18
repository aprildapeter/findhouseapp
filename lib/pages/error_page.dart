import 'package:findhouseapp/pages/home_page.dart';
import 'package:findhouseapp/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/error.png',
                width: 300,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Where are you going ?',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Seems like the page that you were requested is already gone',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50,),
              Container(
                height: 50,
                width: 210,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(purpelColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                  }, child: 
                Text('Back to Home', style: whiteTextStyle.copyWith(fontSize: 18),)),
              )
            ],
          )),
    );
  }
}
