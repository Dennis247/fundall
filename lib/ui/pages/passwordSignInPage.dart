import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_mini_project/ui/pages/welcomeHomePage.dart';
import 'package:mobile_mini_project/ui/widgets/appButtonWidget.dart';
import 'package:mobile_mini_project/ui/widgets/appInputWidget.dart';
import 'package:mobile_mini_project/ui/widgets/appTextWidget.dart';
import 'package:mobile_mini_project/utils/appColors.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';
import 'package:mobile_mini_project/utils/constants.dart';

class PasswordSignInPage extends StatefulWidget {
  static final routeName = "password-signIn-Page";
  bool _isVisible = false;
  @override
  _PasswordSignInPageState createState() => _PasswordSignInPageState();
}

class _PasswordSignInPageState extends State<PasswordSignInPage> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = Constants.getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Welcome back!",
                          style: AppStyles.appLargeDarkTextSTyle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Text("Back",
                          style: AppStyles.smalllabelblackTextStyle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22, right: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: screenSize.height * 0.05,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(Constants.demoImage),
                            radius: 57,
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.05,
                        ),
                        Text("We miss you, Chimdi",
                            textAlign: TextAlign.start,
                            style: AppStyles.appLargeDarkTextSTyle),
                        Text("chimdiifeoluwa@gmail.com",
                            textAlign: TextAlign.start,
                            style: AppStyles.appItalicDarkTextSTyle),
                        SizedBox(
                          height: screenSize.height * 0.05,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: AppTextInputWIdget(
                                labelText: "Enter your password",
                                prefixIcon: Icons.lock_outline,
                                // suffixIcon: _isVisible
                                //     ? Icons.visibility
                                //     : Icons.visibility_off,
                                // suffixtap: () {
                                //   setState(() {
                                //     _isVisible = !_isVisible;
                                //  });
                                //   },
                                obscureText: _isVisible ? false : true,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                color: AppColors.greyColor,
                                icon: Icon(
                                  _isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenSize.height * 0.08,
                        ),
                        AppButtonWidget(
                          title: "LOG IN",
                          width: screenSize.width,
                          function: () => Navigator.of(context)
                              .pushNamed(WelcomeHomePage.routeName),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AppRichText2(
                              startText: "New here? ",
                              endText: "Create Account",
                            ),
                            Text(
                              "Forgot Password",
                              style: AppStyles.labelTextStyle,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
