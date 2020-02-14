import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  final list = ["one", "two", "three"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  CustomScrollView(
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

class PriorPositions extends StatelessWidget {
  final String title;
  final String company;
  final String date;
  final String location;
  final String description;

  PriorPositions({
    this.title,
    this.company,
    this.date,
    this.location,
    this.description
  });


  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 4.0,
      children: <Widget>[ Column(
      
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(children: <Widget>[
          Text('$title', style: TextStyle(fontFamily: 'Montserrat',))
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text('$company', textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Roboto',) ), Text('$date', textAlign: TextAlign.center,), Text('$location', textAlign: TextAlign.right,)
        ]),
        Row(
          children: <Widget>[
            Flexible( child: Text('$description', style: TextStyle(fontFamily: 'Roboto',))
            )]
        ),
      ]
    )]);
  }}