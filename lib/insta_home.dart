import 'package:flutter/material.dart';
import 'package:insta_flutter/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12),
        child: Icon(Icons.send),
      )
    ],
  );

  final bottomBar = Container(
    color: Colors.white,
    height: 50,
    alignment: Alignment.center,
    child: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.account_box),
            onPressed: null,
          )
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: bottomBar,
    );
  }
}
