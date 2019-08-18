import 'package:flutter/material.dart';
import 'package:insta_flutter/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStories(),
              height: deviceSize.height * 0.2,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // 1st row
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://tva3.sinaimg.cn/crop.0.0.996.996.180/006aKWGojw8f7bosbospaj30ro0rp0tp.jpg?Expires=1565934961&ssig=2ra0qfNXzF&KID=imgbed,tva'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Jingan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                // 2nd row
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    'https://tva3.sinaimg.cn/crop.0.0.996.996.180/006aKWGojw8f7bosbospaj30ro0rp0tp.jpg?Expires=1565934961&ssig=2ra0qfNXzF&KID=imgbed,tva',
                    fit: BoxFit.cover,
                  ),
                ),
                // 3rd row
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.heart,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            FontAwesomeIcons.comment,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),
                // 4th row
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Liked by jingan, pick and 234,232 others',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                // 5th row
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://tva3.sinaimg.cn/crop.0.0.996.996.180/006aKWGojw8f7bosbospaj30ro0rp0tp.jpg?Expires=1565934961&ssig=2ra0qfNXzF&KID=imgbed,tva'))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Add a comment …'),
                        ),
                      )
                    ],
                  ),
                ),
                // 6th row
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '1 day ago',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
    );
  }
}
