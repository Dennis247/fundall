import 'package:flutter/material.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';

class AppCardWidget extends StatelessWidget {
  final Size screenSize;
  final Function function;
  const AppCardWidget({Key key, this.screenSize, this.function})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Fundall Lifestyle Card",
                style: AppStyles.smallerDarkTextStyle),
          ),
          width: screenSize.width * 0.38,
          decoration: new BoxDecoration(
              color: Color(0xffc4c4c4),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
