import 'package:flutter/material.dart';

class Bookbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:24,horizontal:16),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin:Alignment.bottomLeft,
          end:Alignment.topRight,
          colors:[
            Colors.blue.shade300,
            Colors.blue.shade200,
            Colors.pink.shade200,
          ]
        ),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Keep It Up!',
                style: TextStyle(
                  fontFamily:'Roboto Condensed',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                ),
              ),
              Text(
                'You learned 80% of your goal this week!\nGood job from you',
                softWrap: true,
                style:TextStyle(
                  fontFamily:'Roboto Condensed',
                  fontSize:13,
                  color:Colors.white,
                ),
              )
            ],
          ),
          Image.asset(
            'images/books.png',
            fit:BoxFit.cover,
          )
        ],
      ),
    );
  }
}