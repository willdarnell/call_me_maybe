import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardScreen extends StatefulWidget {
  @override 
  State createState() => BusinessCardState();
}

class BusinessCardState extends State<BusinessCardScreen> {
  @override 
  Widget build(BuildContext context) {
    return 
      Container(
        color: Colors.amber,
        child: Padding(
      padding: EdgeInsets.all(30),
      child:
      FractionallySizedBox(
       
        child:
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Image.asset('assets/3x3_Bob_Loblaw.png'),
            width: 225,
            height: 225
          )
          ],
      )), 
      Row(
        children: <Widget>[
          Expanded(child: Text('Bob Loblaw', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Sriracha'),)
          )],
      ),
       Row(
        children: <Widget>[
          Expanded(child: Text('Attorney At Law', textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Sriracha')),)
        ]
      ),
      Row(
        children: <Widget>[
          Expanded(child: Padding(padding: EdgeInsets.all(20), child: GestureDetector(
            child: Text('713-222-Tips', textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Sriracha')), 
            onTap: () => launch('sms:5555555555'),)),)
        ]
      ),
      Row(
        children: <Widget>[
          Expanded(child: GestureDetector(
            child: Text('github.com/bobloblaw', textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Sriracha')),
            onTap: () => launch('http:github.com/bobloblaw'),
          )
          ),
          Expanded(child: Text('bobloblaw@fakemail.com', textAlign: TextAlign.right, style: TextStyle(fontFamily: 'Sriracha'),),)
        ]
      )],))));
  }
}
