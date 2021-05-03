import 'package:challenge_apple/core/constants/constants.dart';
import 'package:challenge_apple/features/orders/data/model/product.dart';
import 'package:challenge_apple/features/orders/presentation/widgets/item_dish.dart';
import 'package:date_picker_timeline/date_widget.dart';
import 'package:flutter/material.dart';

class SelectDishScreen extends StatelessWidget {
  final String title;
  final List<Dish> dishes;

  const SelectDishScreen({@required this.title, @required this.dishes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          getAppBarUI(context, title),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: dishes.length,
                itemBuilder: (BuildContext context, index) {
                  return ItemDish(dish: dishes[index]);
                }),
          )
        ],
      ),
    );
  }

  Widget getAppBarUI(BuildContext context, String title) {
    return Container(
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
              width: AppBar().preferredSize.height + 70,
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
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            ),
            DateWidget(
              date: DateTime.now(),
              locale: 'es_ES',
              selectionColor: Colors.transparent,
              dateTextStyle: TextStyle(
                  color: kColorGrey, fontSize: 15, fontWeight: FontWeight.w600),
              dayTextStyle: TextStyle(
                  color: kColorGrey, fontSize: 12, fontWeight: FontWeight.w600),
              monthTextStyle: TextStyle(color: Colors.transparent),
            )
          ],
        ),
      ),
    );
  }
  
}