import 'package:flutter/material.dart';

class Mytabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black54,
      unselectedLabelColor: Colors.grey,
      tabs: <Widget>[
        Tab(child: getText('Activity')),
        Tab(child:getText('Learning App')),
        Tab(child: getText('Progress')),

      ],

    );
  }
  Widget getText(String s){
    return Text(
      s,
      style:TextStyle(
        fontSize:15,
        fontFamily: 'Roboto Condensed' )
    );
  }
}