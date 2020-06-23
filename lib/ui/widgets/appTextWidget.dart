import 'package:flutter/material.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';

class AppRichText extends StatelessWidget {
  final String startText;
  final String endText;

  const AppRichText({Key key, this.startText, this.endText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: startText,
            style: AppStyles.mediumlightTextStyle,
          ),
          TextSpan(
            text: endText,
            style: AppStyles.mediumlightBoldTextStyle,
          ),
        ],
      ),
    );
  }
}

class BigAppRichText extends StatelessWidget {
  final String startText;
  final String endText;

  const BigAppRichText({Key key, this.startText, this.endText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: startText,
            style: AppStyles.largeWhiteTextStyle,
          ),
          TextSpan(
            text: ' lifestyle',
            style: AppStyles.largeWhiteTextStyle,
          ),
        ],
      ),
    );
  }
}

class AppRichText2 extends StatelessWidget {
  final String startText;
  final String endText;

  const AppRichText2({Key key, this.startText, this.endText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: new TextSpan(children: [
      new TextSpan(text: startText, style: AppStyles.labelTextStyle),
      new TextSpan(text: endText, style: AppStyles.labelblackTextStyle),
    ]));
  }
}
