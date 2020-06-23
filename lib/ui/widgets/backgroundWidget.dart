import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/background1.png"),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.15), BlendMode.dstATop),
              fit: BoxFit.cover)),
    );
  }
}

class BackgroundWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/background1.png"),
              fit: BoxFit.cover)),
    );
  }
}
