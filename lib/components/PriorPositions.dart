import 'package:flutter/material.dart';

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
          Text('$title', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold,))
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text('$company', textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Roboto',) ), Text('$date', textAlign: TextAlign.center,), Text('$location', textAlign: TextAlign.right,)
        ]),
        Row(
          children: <Widget>[
            Flexible( child: Text('$description', style: TextStyle(fontFamily: 'Roboto', fontStyle: FontStyle.italic,))
            )]
        ),
      ]
    )]);
  }}