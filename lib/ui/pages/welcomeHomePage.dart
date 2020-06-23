import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_mini_project/ui/pages/loginPage.dart';
import 'package:mobile_mini_project/ui/pages/pickYourCardPage.dart';
import 'package:mobile_mini_project/ui/pages/signUpPage.dart';
import 'package:mobile_mini_project/ui/widgets/appCardWIdget.dart';
import 'package:mobile_mini_project/ui/widgets/backgroundWidget.dart';
import 'package:mobile_mini_project/utils/appColors.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';
import 'package:mobile_mini_project/utils/constants.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class WelcomeHomePage extends StatelessWidget {
  static final String routeName = "welcome-homePage";

  _buildAmountWidget(
      {String title, String amount, String daysCount, Size size}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: AppStyles.labelTextStyle),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(amount, style: AppStyles.mediumW2hiteTextStyle),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(daysCount, style: AppStyles.verySmallTextStyle)
      ],
    );
  }

  _buildCardTypeWidget({String image, String description, Size screenSize}) {
    return Row(
      children: <Widget>[
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Image.asset(
            image,
            scale: 1.2,
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.05,
        ),
        Text(description, style: AppStyles.whitelabelTextStyle)
      ],
    );
  }

  _buildSheetCardType(
      {Size screenSize,
      String image,
      String title,
      String subtitle,
      String amount,
      TextStyle textStyle,
      double imageScale}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffeff1f5),
              ),
              child: Image.asset(
                image,
                scale: imageScale,
              ),
            ),
            SizedBox(
              width: screenSize.width * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(title, style: AppStyles.appNormalDarkTextSTyle),
                SizedBox(
                  height: screenSize.width * 0.005,
                ),
                new Text(subtitle, style: AppStyles.labelTextStyle)
              ],
            )
          ],
        ),
        Text(amount, style: textStyle)
      ],
    );
  }

  _buildStackLayOut(Size screenSize, BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundWidget(),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushReplacementNamed(LoginPage.routeName),
                      child: Icon(
                        FontAwesomeIcons.signOutAlt,
                        color: Colors.white,
                      ),
                    ),
                    Text("Fundall e-Wallet",
                        style: AppStyles.appLargeWhiteTextSTyle),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(Constants.demoImage),
                    )
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Account ID: ",
                      style: AppStyles.smallWhiteTextStyle),
                  TextSpan(
                      text: "901672789, Providus",
                      style: AppStyles.labelTextStyle),
                ])),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Text("Total Balance", style: AppStyles.mediumWhiteTextStyle),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Text("₦12,634.37", style: AppStyles.largeNumericTextSTyle),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildAmountWidget(
                        title: "Income",
                        amount: "₦12,634.37",
                        daysCount: "* last 30 days",
                        size: screenSize),
                    _buildAmountWidget(
                        title: "Spent",
                        amount: "₦12,634.37",
                        daysCount: "",
                        size: screenSize),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                ),
                Container(
                  width: screenSize.width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      _buildCardTypeWidget(
                          screenSize: screenSize,
                          image: "assets/images/diamond.png",
                          description: "Add other cards"),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      _buildCardTypeWidget(
                          screenSize: screenSize,
                          image: "assets/images/glasscup.png",
                          description: "Request for new Lifestyle Card"),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      _buildCardTypeWidget(
                          screenSize: screenSize,
                          image: "assets/images/plane.png",
                          description: "Manage Card Settings"),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = Constants.getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        body: SlidingSheet(
          elevation: 8,
          cornerRadius: 50,
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.12, 0.4, 1.0],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          body: Center(
            child: _buildStackLayOut(screenSize, context),
          ),
          builder: (context, state) {
            return Container(
              height: screenSize.height * 0.87,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 15, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            height: 5,
                            width: screenSize.width * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Cards", style: AppStyles.appLargeDarkTextSTyle),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(PickYourCardPage.routeName);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: screenSize.width * 0.15,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.solidCircle,
                                    size: 10,
                                  ),
                                  SizedBox(width: screenSize.width * 0.03),
                                  Icon(
                                    FontAwesomeIcons.solidCircle,
                                    size: 10,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * 0.025,
                      ),
                      Container(
                        height: screenSize.height * 0.25,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            AppCardWidget(screenSize: screenSize),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            AppCardWidget(screenSize: screenSize),
                            SizedBox(
                              width: screenSize.width * 0.03,
                            ),
                            AppCardWidget(screenSize: screenSize)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Today", style: AppStyles.appLargeDarkTextSTyle),
                          new Text("View all", style: AppStyles.labelTextStyle)
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      Expanded(
                          child: ListView(
                        children: <Widget>[
                          _buildSheetCardType(
                              screenSize: screenSize,
                              image: "assets/images/plane.png",
                              subtitle: "just now",
                              title: "Tobilola",
                              amount: "₦ 130",
                              textStyle: AppStyles.largeGreenTextStyle,
                              imageScale: 1.2),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          _buildSheetCardType(
                              screenSize: screenSize,
                              image: "assets/images/diamond.png",
                              subtitle: "12.00PM",
                              title: "Grocery",
                              amount: "₦ 100",
                              textStyle: AppStyles.largePinkTextStyle,
                              imageScale: 1.2),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          _buildSheetCardType(
                              screenSize: screenSize,
                              image: "assets/images/gift.png",
                              subtitle: "12.00PM",
                              title: "Shopping",
                              amount: "₦ 35",
                              textStyle: AppStyles.largePinkTextStyle,
                              imageScale: 2),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
                          _buildSheetCardType(
                              screenSize: screenSize,
                              image: "assets/images/glasscup.png",
                              subtitle: "12.00PM",
                              title: "Shopping",
                              amount: "₦ 35",
                              textStyle: AppStyles.largePinkTextStyle,
                              imageScale: 1.2),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
