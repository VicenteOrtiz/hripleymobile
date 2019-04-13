import 'dart:async';
import 'dart:convert';
import 'Index.dart';
import './../Endpoints.dart';
import 'package:flutter/material.dart';
import './../services/LoadingService.dart';

class Home extends StatefulWidget
{
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home>
{
  int selectedIndex = 2;
  final widgetsOptions = [
    Text('index 0: Perfil'),
    Text('index 1: Chat'),
    Index(),
  ];
  bool loading = false;

  @override
  void initState() {
    super.initState();
  }

  void changeView(int index) {
    setState(() {
      this.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (this.loading) {
      return Scaffold(
          appBar: AppBar(
            title: Text(''),
            backgroundColor: Color(0xFF000000),
              leading: Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Image.asset('assets/images/logo.jpg'),
              )
          ),
          body: new LoadingService()
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Color(0xFF000000),
          leading: Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Image.asset('assets/images/logo.jpg'),
          )
        ),
        body: this.widgetsOptions[this.selectedIndex],
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Color(0xFF000000),
              primaryColor: Colors.white,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white54))
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 30.0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.comment), title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.notifications), title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('')),
            ],
            currentIndex: this.selectedIndex,
            onTap: this.changeView,
          ),
        )
    );
  }
}