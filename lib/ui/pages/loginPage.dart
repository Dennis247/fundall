import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_mini_project/ui/pages/passwordSignInPage.dart';
import 'package:mobile_mini_project/ui/widgets/appTextWidget.dart';
import 'package:mobile_mini_project/ui/widgets/backgroundWidget.dart';
import 'package:mobile_mini_project/utils/appColors.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';
import 'package:mobile_mini_project/utils/constants.dart';

class LoginPage extends StatelessWidget {
  static final routeName = "login-page";
  _buildCircularWIdget(String title, IconData iconData, double height,
      double width, Function function) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: function,
          child: Container(
              child: Center(
                child: Icon(
                  iconData,
                  color: Colors.white,
                  size: height * 0.65,
                ),
              ),
              width: width,
              height: height,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.greenColor, width: 1),
                  color: Colors.black)),
        ),
        SizedBox(
          height: 3,
        ),
        Text(title, style: AppStyles.appNormalTextSTyle)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = Constants.getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            BackgroundWidget2(),
            Positioned(
                bottom: 20,
                left: 10,
                child: // Ellipse
                    _buildCircularWIdget("Password", Icons.lock_outline,
                        screenSize.height * 0.1, screenSize.width * 0.2, () {
                  Navigator.of(context).pushNamed(PasswordSignInPage.routeName);
                })),
            Positioned(
                bottom: 20,
                right: 10,
                child: _buildCircularWIdget("Biometrics", Icons.fingerprint,
                    screenSize.height * 0.1, screenSize.width * 0.2, () {})),
            Center(
              child: Container(
                height: screenSize.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/images/logo.png"),
                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),
                    BigAppRichText(
                      startText: "${Constants.userName} 's",
                      endText: "lifestyle",
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    AppRichText(
                      startText: "Not ${Constants.userName}? ",
                      endText: "Switch Account",
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    AppRichText(
                      startText: "New here? ",
                      endText: "Create Account",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
