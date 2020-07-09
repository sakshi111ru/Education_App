import 'package:flutter/material.dart';
import 'package:food_app/Widgets/book_box.dart';
import 'package:food_app/Widgets/myapp_bar.dart';
import 'package:food_app/Widgets/mytab_bar.dart';
import 'Widgets/unit_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffeaf4f9),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MyAppBar(
                    title: 'Crissten Collier',
                    subtitle: 'Business English',
                  ),
                  Mytabbar(),
                ],
              ),
            ),
            Bookbox(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Latest Results',
                    style: TextStyle(fontSize: 20, fontFamily: 'VarelaRound'),
                  ),
                  Text(
                    'Lowest',
                    style: TextStyle(fontSize: 16, fontFamily: 'VarelaRound'),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  UnitCard(
                    unitNo: 1,
                    title: 'Running business in Sweden',
                    cards: 42,
                    percentage: 30,
                    subtitle: 'Business',
                  ),
                  UnitCard(
                    unitNo: 2,
                    title: 'Job interview',
                    cards: 52,
                    percentage: 72,
                    subtitle: 'Career',
                  ),
                  UnitCard(
                    unitNo: 3,
                    title: 'Financial Market',
                    cards: 26,
                    percentage: 75,
                    subtitle: 'Finance',
                  ),
                  UnitCard(
                    unitNo: 4,
                    title: 'Sales improvement',
                    cards: 30,
                    percentage: 49,
                    subtitle: 'Sales',
                  ),
                  UnitCard(
                    unitNo: 5,
                    title: 'Financial Market',
                    cards: 20,
                    percentage: 83,
                    subtitle: 'Finance',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
