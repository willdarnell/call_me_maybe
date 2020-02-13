import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardScreen extends StatefulWidget {
  @override 
  State createState() => BusinessCardState();
}

class BusinessCardState extends State<BusinessCardScreen> {
  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child:
      Column(children: <Widget>[
      Row(
        children: <Widget>[
            Container(
            width: 100.00,
            height: 100.00,
            decoration: new BoxDecoration(
            image: new DecorationImage(
            image: ExactAssetImage('assets/3x3_Bob_Loblaw.png'),
            fit: BoxFit.fitHeight,
  
      ),
  ))
          
          
          ],
      ), 
      SizedBox(height: 10),

      Row(
        children: <Widget>[
          Expanded(child: Text('Bob Loblaw', textAlign: TextAlign.center),)
        ],
      ),
       SizedBox(height: 10),
       Row(
        children: <Widget>[
          Expanded(child: Text('Attorney At Law', textAlign: TextAlign.center,),)
        ]
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          Expanded(child: Padding(padding: EdgeInsets.all(20), child: GestureDetector(
            child: Text('713-222-Tips', textAlign: TextAlign.center,), 
            onTap: () => launch('sms:5555555555'),)),)
        ]
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          Expanded(child: GestureDetector(
            child: Text('github.com/bobloblaw', textAlign: TextAlign.left,),
            onTap: () => launch('http:github.com/bobloblaw'),
          )
          ),
          Expanded(child: Text('bobloblaw@fakemail.com', textAlign: TextAlign.right,),)
        ]
      )],));
  }
}
