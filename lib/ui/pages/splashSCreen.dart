import 'package:flutter/material.dart';
import 'package:mobile_mini_project/ui/pages/signUpPage.dart';
import 'package:mobile_mini_project/ui/widgets/backgroundWidget.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';
import 'package:mobile_mini_project/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = Constants.getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            BackgroundWidget2(),
            Center(
                child: // Figma Flutter Generator AfinancialpartnerWidget - TEXT
                    Container(
              height: screenSize.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'A financial partner',
                    textAlign: TextAlign.left,
                    style: AppStyles.appLargeWhiteTextSTyle,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'for everyone',
                    textAlign: TextAlign.left,
                    style: AppStyles.largeBoldTextStyle,
                  ),
                ],
              ),
            )),
            Positioned(
                top: 20,
                left: 15,
                child: Image.asset(
                  "assets/images/fundall_icon.png",
                  scale: 1.5,
                )),
            Positioned(
                bottom: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(SignUpPage.routeName);
                  },
                  child: Text('Start',
                      textAlign: TextAlign.left,
                      style: AppStyles.largelightTextStyle

                      //  TextStyle(

                      ),
                )),
          ],
        ),
      ),
    );
  }
}
