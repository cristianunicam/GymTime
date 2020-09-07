import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int index;

  BottomBar({Key key, this.index}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;

  @override
  void initState() {
    index = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget swapWidget;

    if (index == 0) {
      swapWidget = new Text("TEST TEXT 1");
    } else {
      swapWidget = new Text("TEST TEXT 2");
    }

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                index = 0;
              });
            },
            icon: Icon(Icons.menu),
          ),
          Container(
            padding: EdgeInsets.only(right: 40),
            child: IconButton(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 40),
            child: IconButton(
              icon: Icon(
                Icons.access_alarm,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.accessibility,
              size: 30,
            ),
            onPressed: () {
              setState(() {
                index = 3;
              });
            },
          ),
        ],
      ),
    );
  }
}
