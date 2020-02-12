import 'package:flutter/material.dart';
import 'package:call_me/screens/business_card_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainTabController()
    );
  }
}

class MainTabController extends StatelessWidget {
  
  static const tabs = [
      Tab(text: 'Business Card'),
      Tab(text: 'Resume'),
      Tab(text: 'Predictor')
    ];
  
  final screens = [
      BusinessCardScreen(),
      ResumeScreen(),
      PredictorScreen(),
    ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Call Me Maybe'),
            bottom: TabBar(tabs: tabs)
          ),
          body: TabBarView(children: screens)
        )
      );
  }
}



class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Health Screen'));
  }
}

class PredictorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Travel Screen'));
  }
}