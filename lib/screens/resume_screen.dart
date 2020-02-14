import 'package:flutter/material.dart';
import 'package:call_me/components/PriorPositions.dart';
class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(15),
      child:  CustomScrollView(
      
  slivers: <Widget>[
    SliverAppBar(
      expandedHeight: 80,
      floating: false,
      pinned: false,
      snap: false,
      title: Column(children: <Widget>[
        Row(children: <Widget>[Text('Bob Loblaw')],),
        Row(children: <Widget>[
          Text('bobloblaw@fakemail.com', style: TextStyle(fontSize: 13),)
        ]),
        Row(children: <Widget>[
          Text('github.com/bobloblaw', style: TextStyle(fontSize: 13),)
        ])],),

    ),
    SliverFixedExtentList(
      itemExtent: 80.0,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          var item = list[index];
          return Container(
            constraints: const BoxConstraints.expand(),
            alignment: Alignment.center,
            child: PriorPositions(company: item["company"], title: item["title"], date: item["date"], location: item["location"], description: item["description"],),
          );
        },
      ),
    ),
  ],
));
  }
}

  final list = [{"company": "Microsoft", "title": "Principal Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Google", "title": "Senior Software Engineer", "date": "7/19-7/20", "location": "Kirkland, WA", "description": "I invented Google Docs, which I wrote on the back of a napkin." }, 
  {"company": "Facebook", "title": "Software Extraordinaire", "date": "7/19-7/20", "location": "Mountain View, CA", "description": "Responsible for versioning adtracking system that is contributing to the fall of humanity." },
  {"company": "Apple", "title": "Software Engineer Intern", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." }, 
  {"company": "Amazon", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Netflix", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Expedia", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Roku", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Lyft", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Tesla", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Hulu", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Goldman Sachs", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Walmart Labs", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." },
  {"company": "Zillow", "title": "Software Engineer", "date": "7/19-7/20", "location": "Seattle, WA", "description": "Developed microservice applications in C# to be used by Azure Networking." }];
