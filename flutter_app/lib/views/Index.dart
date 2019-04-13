import 'dart:async';
import 'dart:convert';
import './../Endpoints.dart';
import 'package:flutter/material.dart';
import './../services/LoadingService.dart';

class Index extends StatefulWidget
{
  @override
  IndexState createState() => new IndexState();
}

class IndexState extends State<Index>
{
  bool loading = true;
  List<Widget> sales = [
    new Image.asset(
      'assets/images/oferta1.jpeg',
    ),
    new Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: new Image.asset(
        'assets/images/oferta1.jpeg',
      ),
    ),
    new Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: new Image.asset(
        'assets/images/oferta2.jpeg',
      ),
    ),
    new Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: new Image.asset(
        'assets/images/oferta3.jpg',
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    this.loadIndex();
  }

  void loadIndex () async {
    await new Future.delayed(const Duration(seconds : 2));
    setState(() {
      this.loading = false;
    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    if (this.loading) {
      return new LoadingService();
    }
    return Center(
        child: new ListView.builder(
            itemCount: this.sales.length,
            itemBuilder: (context, index) {
              return this.sales[index];
            }
        )
    );
  }
}
