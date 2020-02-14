import 'package:flutter/material.dart';
import 'package:call_me/components/PriorPositions.dart';
class ResumeScreen extends StatelessWidget {
  final list = ["one", "two", "three"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(15),
      child:  CustomScrollView(
      
  slivers: <Widget>[
    
    SliverFixedExtentList(
      itemExtent: 80.0,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            constraints: const BoxConstraints.expand(),
            alignment: Alignment.center,
            child: PriorPositions(company: 'Microsoft', title: 'Software Engineer', date: '7/19-7/20', location: 'Seattle, WA', description: 'I worked as a plumber for the man every night and day. Hey hey hey hey.',),
          );
        },
      ),
    ),
  ],
));
  }
}

