import 'package:challenge_apple/core/constants/constants.dart';
import 'package:challenge_apple/features/orders/presentation/widgets/custom_app_bar.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getAppBarUI(context),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('0Kcal', style: TextStyle(color: kColorBlackGrey, fontSize: 14, fontWeight: FontWeight.bold)), 
              Text('22000Kcal', style: TextStyle(color: kColorBlackGrey, fontSize: 14, fontWeight: FontWeight.bold))
            ],
          ),
        ),
        SizedBox(height: 5),
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width,
          lineHeight: 8.0,
          percent: 0.5,
          backgroundColor: kCOlorGreyLight,
          progressColor: kColorYellow,
        ),
        SizedBox(height: 10),
        Container(
          height: MediaQuery.of(context).size.height / 9,
          child: DatePicker(
            DateTime.now(),
            initialSelectedDate: DateTime.now(),
            selectionColor: kColorYellow,
            locale: 'es_ES',
            selectedTextColor: Colors.white,
            dateTextStyle: TextStyle(
                color: kColorGrey, fontSize: 20, fontWeight: FontWeight.w600),
            dayTextStyle: TextStyle(
                color: kColorGrey, fontSize: 12, fontWeight: FontWeight.w600),
            monthTextStyle: TextStyle(color: Colors.transparent),
            onDateChange: (date) {
              // New date selected
            },
          ),
        ),
        SizedBox(height: 10),
        Divider(color: kColorGrey, height: 1),
      ],
    );
  }
}