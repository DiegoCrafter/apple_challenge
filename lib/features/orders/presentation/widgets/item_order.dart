import 'package:challenge_apple/core/constants/constants.dart';
import 'package:challenge_apple/features/orders/presentation/bloc/products_state.dart';
import 'package:challenge_apple/features/orders/presentation/pages/select_dish.dart';
import 'package:flutter/material.dart';

class ItemOrder extends StatelessWidget {
  final ProductItemState _productItem;

  const ItemOrder(this._productItem);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: double.parse(_productItem.price) > 50 ? Colors.white : kColorFilledGrey,
              borderRadius: BorderRadius.all(Radius.circular(9)),
              border: Border.all(color: kCOlorGreyLight, width: 2)),
          height: 70,
          child: Row(
            children: <Widget>[
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(9),
                      bottomLeft: Radius.circular(9)),
                  color: kColorFilledGrey,
                ),
                child: double.parse(_productItem.price) > 50
                    ? Image.asset('assets/images/lunch.png')
                    : Image.asset('assets/images/mid.png'),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _productItem.title,
                      style: TextStyle(
                          color: kColorGreen, fontWeight: FontWeight.w500),
                    ),
                    Text('${_productItem.calories} Kcal',
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
              double.parse(_productItem.price) > 50
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kColorYellow,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => SelectDishScreen(
                              dishes: _productItem.dishes,
                              title: _productItem.title,
                            )));
                          },
                          child: Text('Agregar', style: TextStyle(color: kColorGrey))),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('No tienes creditos', style: TextStyle(color: kColorGrey),),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
