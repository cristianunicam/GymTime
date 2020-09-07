import 'package:GymTime/center_container.dart';
import 'package:flutter/material.dart';
import 'package:GymTime/top_bar.dart';

void main() {
  runApp(MyApp());
}

enum WidgetMarker {
  tabata,
  timer,
  chrono,
  tosetyet,
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  WidgetMarker selectedWidget = WidgetMarker.tabata;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: TopBar(),
        body: getCustomContainer(),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedWidget = WidgetMarker.tabata;
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
                      selectedWidget = WidgetMarker.timer;
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
                      selectedWidget = WidgetMarker.chrono;
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
                    selectedWidget = WidgetMarker.tosetyet;
                  });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          //backgroundColor: Colors.grey,
          child: Icon(
            //Icons.play_circle_filled,
            Icons.play_arrow,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
    // home: MyHomePage(title: 'Flutter Demo Home Page'),
  }

  Widget getCustomContainer() {
    switch (selectedWidget) {
      case WidgetMarker.tabata:
        return getTabataContainer();
      case WidgetMarker.timer:
        return getTimerContainer();
      case WidgetMarker.chrono:
        return getChronoContainer();
      case WidgetMarker.tosetyet:
        return getTosetyetContainer();
      default:
        return null;
    }
  }

  Widget getTabataContainer() {
    return CenterContainer(
      text: "Tabata",
    );
  }

  Widget getTimerContainer() {
    return CenterContainer(
      text: "Timer",
    );
  }

  Widget getChronoContainer() {
    return CenterContainer(
      text: "Chrono",
    );
  }

  Widget getTosetyetContainer() {
    return CenterContainer(
      text: "ToSetYet",
    );
  }
}
