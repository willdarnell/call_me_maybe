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
          Center(
              child: Image.asset('assets/3X3_Bob_Loblaw.png'),
              )
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
            onTap: () => launch('sms:5555555'),
            child: Text('713-222-Tips', textAlign: TextAlign.center,))),)
        ]
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          Expanded(child: Text('github.com/bobloblaw', textAlign: TextAlign.left,),),
          Expanded(child: Text('bobloblaw@fakemail.com', textAlign: TextAlign.right,),)
        ]
      )],));
  }
}
