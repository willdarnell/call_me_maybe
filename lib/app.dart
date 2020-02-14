import 'package:flutter/material.dart';
import 'package:call_me/screens/business_card_screen.dart';
import 'package:call_me/screens/resume_screen.dart';

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
      Tab(icon: Icon(Icons.contact_phone,)),
      Tab(icon: Icon(Icons.description)),
      Tab(icon: Icon(Icons.help),)
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
            backgroundColor: Colors.blue[300],
            title: Text('Call Me Maybe'),
            bottom: TabBar(tabs: tabs)
          ),
          body: TabBarView(children: screens)
        )
      );
  }
}





class PredictorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Travel Screen'));
  }
}