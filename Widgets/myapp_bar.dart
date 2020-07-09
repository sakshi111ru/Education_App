import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget leading;
  final Icon defaultLeading =Icon(
    Icons.menu,
    size:34,
    color:Color(0xFF529bf4),
  );
  MyAppBar({this.title,this.subtitle,this.leading});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16),
      child: ListTile(
        title: Center(
          child:Text(
            title,
            style:TextStyle(
              fontFamily:'Roboto Condensed',
              fontSize: 17,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        subtitle:Center(
          child:Text(
            subtitle,
            style:TextStyle(fontFamily:'Roboto Condensed',fontSize: 13 ),
          )
        ),
        trailing:leading==null?defaultLeading:leading,
        
      ),
      
    );
  }
}