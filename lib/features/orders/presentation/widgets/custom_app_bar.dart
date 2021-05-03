import 'package:challenge_apple/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget getAppBarUI(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.white.withOpacity(0.2),
            offset: const Offset(0, 2),
            blurRadius: 8.0),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 8, right: 8),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            width: AppBar().preferredSize.height + 10,
            height: AppBar().preferredSize.height,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://w7.pngwing.com/pngs/616/364/png-transparent-computer-icons-child-avatar-boy-women-avatar-face-hand-people.png'),
            ),
          ),
          Expanded(
            child: Text(
              'Mis pedidos',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ),
          Container(
            width: AppBar().preferredSize.height + 100,
            height: AppBar().preferredSize.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 28,
                  percent: 0.5,
                  progressColor: kColorGreen,
                  center: Text('2'),
                ),
                SizedBox(width: 5),
                AdvancedSwitch(
                  activeColor: Colors.green,
                  inactiveColor: Colors.grey,
                  activeChild: Text('on'),
                  inactiveChild: Text('auto'),
                  borderRadius: BorderRadius.all(const Radius.circular(15)),
                  width: 65.0,
                  height: 30.0,
                  enabled: true,
                  disabledOpacity: 0.5,
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/icons/settings.png'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}


 Widget getAppBarUID(BuildContext context, bool isFavorite) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height + 80),
      child: Container(
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.white.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ], border: Border.all(color: kCOlorGreyLight)),
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, left: 8, right: 8),
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: AppBar().preferredSize.height + 100,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Atrás', style: TextStyle(decoration: TextDecoration.underline)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Detalle',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  isFavorite
                      ? Icons.favorite_outlined
                      : Icons.favorite_border,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
