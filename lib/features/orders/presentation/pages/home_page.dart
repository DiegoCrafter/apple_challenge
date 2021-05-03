import 'package:challenge_apple/core/constants/constants.dart';
import 'package:challenge_apple/core/constants/notched_shapes.dart';
import 'package:challenge_apple/features/orders/presentation/pages/orders.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final pages = [OrderScreen(), OrderScreen(), OrderScreen(), OrderScreen()];

  Widget navBarItem(AssetImage iconData, String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ImageIcon(iconData,
                color: selectedIndex == index ? kColorGreen : Colors.grey),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: selectedIndex == index ? kColorGreen : Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages.elementAt(selectedIndex),
        floatingActionButton: Padding(
          padding: EdgeInsets.all(2),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kColorGreen,
                  boxShadow: [
                    BoxShadow(
                        color: kColorGreen,
                        blurRadius: 10,
                        offset: Offset(0, 8))
                  ]),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: kColorFilledGrey,
          shape: CustomNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: navBarItem(AssetImage('assets/icons/calendar.png'), 'Hoy', 0),
              ),
              Expanded(
                flex: 1,
                child: navBarItem(AssetImage('assets/icons/plate.png'), 'Mis pedidos', 1),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 1,
                ),
              ),
              Expanded(
                flex: 1,
                child: navBarItem(AssetImage('assets/icons/knife.png'), 'Comidas', 2),
              ),
              Expanded(
                flex: 1,
                child: navBarItem(AssetImage('assets/icons/profile.png'), 'coach', 3),
              ),
            ],
          ),
        ));
  }
}