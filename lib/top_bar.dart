import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  final double appBarHeight = 56.0;
  @override
  get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                //TODO inserire contatore
                Column(
                  children: [
                    Text('NOME ZONA'),
                    Text('tempochescorre'),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
