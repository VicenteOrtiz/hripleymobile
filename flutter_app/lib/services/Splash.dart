import 'dart:convert';
import './../Endpoints.dart';
import 'package:flutter/material.dart';
import 'LoadingService.dart';

class Splash extends StatefulWidget
{
  @override
  SplashState createState() {
    return SplashState();
  }
}

class SplashState extends State<Splash>
{
  void goToHome() async {
    await new Future.delayed(const Duration(seconds : 3));
    Navigator.pushReplacementNamed(context, '/home');
    return;
  }

  @override
  void initState() {
    super.initState();
    this.goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return GradientBack();
  }
}

class GradientBack extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  Color(0xFF000000),
                  Color(0xFF000000),
                ],
                begin: const FractionalOffset(1.0, 0.1),
                end: const FractionalOffset(1.0, 0.9)
            )
        ),
        child: new Center(
            child: new Column(
              children: <Widget> [
                new Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25, bottom: 30.0),
                  child: new Image.asset(
                    'assets/images/RipleyLogoFondo.png',
                    width: 200.0,
                  ),
                ),
                new Flexible(child: new LoadingService())
              ],
            )
        )
    );
  }
}