import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mobile_mini_project/ui/widgets/appButtonWidget.dart';
import 'package:mobile_mini_project/ui/widgets/appCardWIdget.dart';
import 'package:mobile_mini_project/utils/appColors.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';
import 'package:mobile_mini_project/utils/constants.dart';

class PickYourCardPage extends StatefulWidget {
  static final String routeName = "pick-your-card";
  @override
  _PickYourCardPageState createState() => _PickYourCardPageState();
}

class _PickYourCardPageState extends State<PickYourCardPage> {
  int _selectedIdnex = -1;
  List cardData = [
    {
      "image": "assets/images/plane.png",
      "title": "LifeStyle Pro",
      "subtitle": "₦ 1000",
      "imageScale": 1.2
    },
    {
      "image": "assets/images/gift.png",
      "title": "LifeStyle Business",
      "subtitle": "₦ 1200",
      "imageScale": 2.0
    },
    {
      "image": "assets/images/diamond.png",
      "title": "LifeStyle Premium",
      "subtitle": "₦ 1000",
      "imageScale": 1.2
    }
  ];

  _buildPickCardWidget(
      {String image,
      String title,
      String subtitle,
      double imageScale,
      int index}) {
    return ListTile(
      onTap: () {
        setState(() {
          _selectedIdnex = index;
        });
      },
      leading: Container(
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
      title: Text(title, style: AppStyles.appNormalDarkTextSTyle),
      subtitle: Text(subtitle, style: AppStyles.labelTextStyle),
      trailing: _selectedIdnex == index
          ? Icon(
              Icons.check,
              color: Colors.black,
              size: 25,
            )
          : SizedBox(),
    );
  }

  _buildshowDialogue(context, screenSize) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          titlePadding: EdgeInsets.all(0),
          content: Stack(
            children: <Widget>[
              Container(
                height: screenSize.height * 0.25,
                width: screenSize.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        "Yippeee!\n\nCard Request Successful.\nWelcome to tomorrow",
                        textAlign: TextAlign.center,
                        style: AppStyles.appNormalDarkTextSTyle),
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    AppButtonWidget(
                      title: "REFER YOUR FRIENDS & EARN",
                    ) // Rectangle 8.24
                  ],
                ),
              ),
              Positioned(
                  top: 1,
                  right: 1,
                  child: new Container(
                      width: 15,
                      height: 15,
                      decoration: new BoxDecoration(
                          color: AppColors.greenColor, shape: BoxShape.circle)))
            ],
          )),
    );
  }

  Divider _buildCustomeDivider(Size screenSize) {
    return Divider(
      indent: screenSize.width * 0.05,
      endIndent: screenSize.width * 0.05,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = Constants.getScreenSize(context);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Text("Back", style: AppStyles.smallDarkTextStyle)),
                Text("Your New Card", style: AppStyles.appLargeDarkTextSTyle),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(Constants.demoImage),
                )
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            Container(
              height: screenSize.height * 0.35,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return AppCardWidget(
                    screenSize: screenSize,
                    function: () {
                      _buildshowDialogue(context, screenSize);
                    },
                  );
                },
                itemCount: 3,
                viewportFraction: 0.45,
                scale: 0.5,
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            Text(
              "Pick a Card",
              style: AppStyles.appLargeDarkTextSTyle,
            ),
            Divider(),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: cardData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            _buildPickCardWidget(
                                image: cardData[index]['image'],
                                title: cardData[index]['title'],
                                subtitle: cardData[index]['subtitle'],
                                imageScale: cardData[index]['imageScale'],
                                index: index),
                            _buildCustomeDivider(screenSize),
                          ],
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
