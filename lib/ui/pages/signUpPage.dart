import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_mini_project/ui/pages/loginPage.dart';
import 'package:mobile_mini_project/ui/widgets/appButtonWidget.dart';
import 'package:mobile_mini_project/ui/widgets/appInputWidget.dart';
import 'package:mobile_mini_project/ui/widgets/appTextWidget.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';
import 'package:mobile_mini_project/utils/constants.dart';

class SignUpPage extends StatefulWidget {
  static final routeName = "sign-up-page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isVisible = false;
  _buildVerticalSpace(Size screenSize) {
    return SizedBox(
      height: screenSize.height * 0.005,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = Constants.getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: screenSize.height,
            width: screenSize.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: Text(
                              "cancel",
                              style: AppStyles.smallDarkTextStyle,
                            ),
                          ),
                          Text(
                            "Benefits",
                            style: AppStyles.smallDarkTextStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Let's get Started",
                            textAlign: TextAlign.start,
                            style: AppStyles.appLargeDarkTextSTyle,
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          Text(
                            "Your first step toward a better financial lifestyle starts here.",
                            style: AppStyles.smallDarkTextStyle,
                          ),
                          SizedBox(
                            height: screenSize.height * 0.05,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: AppTextInputWIdget2(
                                prefixIcon: FontAwesomeIcons.solidUser,
                                labelText: "First name",
                              )),
                              SizedBox(
                                width: screenSize.width * 0.08,
                              ),
                              Expanded(
                                  child: AppTextInputWIdget2(
                                prefixIcon: FontAwesomeIcons.solidUser,
                                labelText: "Last Name",
                              )),
                            ],
                          ),
                          _buildVerticalSpace(screenSize),
                          AppTextInputWIdget(
                            labelText: "Email address",
                            prefixIcon: Icons.message,
                            obscureText: false,
                          ),
                          SizedBox(
                            height: screenSize.height * 0.02,
                          ),
                          _buildVerticalSpace(screenSize),
                          AppTextInputWIdget(
                            labelText: "Phone number",
                            prefixIcon: FontAwesomeIcons.phoneAlt,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                          ),
                          _buildVerticalSpace(screenSize),
                          AppTextInputWIdget(
                            labelText: "Password",
                            prefixIcon: Icons.lock_outline,
                            suffixIcon: _isVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            suffixtap: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            obscureText: _isVisible ? false : true,
                          ),
                          SizedBox(
                            height: screenSize.height * 0.04,
                          ),
                          Text("Got invite code?",
                              style: AppStyles.smallGreenTextStyle),
                          SizedBox(
                            height: screenSize.height * 0.035,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: <Widget>[
                                AppButtonWidget(
                                  title: "SIGN UP",
                                  width: screenSize.width * 0.6,
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.04,
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.of(context)
                                      .pushNamed(LoginPage.routeName),
                                  child: AppRichText2(
                                      startText: "Already a member?",
                                      endText: "Log In"),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.03,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            'By clicking on Sign up, you agree to our ',
                                        style: AppStyles.smallDarkTextStyle,
                                      ),
                                      TextSpan(
                                        text: 'terms & conditions',
                                        style: AppStyles.smallGreenTextStyle,
                                      ),
                                      TextSpan(
                                        text: ' and ',
                                        style: AppStyles.smallDarkTextStyle,
                                      ),
                                      TextSpan(
                                        text: 'privacy policy.',
                                        style: AppStyles.smallGreenTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
