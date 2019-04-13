import 'package:flutter/material.dart';

class LoadingService extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }
}