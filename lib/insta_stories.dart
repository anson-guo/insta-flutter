import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text('Stories', style: TextStyle(fontWeight: FontWeight.bold)),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text('Watch All', style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  final stories = Expanded(
      child: Padding(
    padding: EdgeInsets.only(top: 8),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://tva3.sinaimg.cn/crop.0.0.996.996.180/006aKWGojw8f7bosbospaj30ro0rp0tp.jpg?Expires=1565934961&ssig=2ra0qfNXzF&KID=imgbed,tva'))),
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          index == 0
              ? Positioned(
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 10,
                    child: Icon(Icons.add, size: 14, color: Colors.white),
                  ),
                )
              : new Container()
        ],
      ),
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
