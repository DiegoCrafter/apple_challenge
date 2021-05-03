import 'package:challenge_apple/core/constants/constants.dart';
import 'package:challenge_apple/features/orders/data/model/product.dart';
import 'package:challenge_apple/features/orders/presentation/pages/details.dart';
import 'package:flutter/material.dart';

class ItemDish extends StatelessWidget {
  final Dish dish;
  const ItemDish({this.dish});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 16),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen(
            dish: dish,
          )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: const Offset(4, 4),
                blurRadius: 16,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2,
                      child: Image.network(
                        dish.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      color: kColorFilledGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 8, bottom: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      dish.name,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: kColorGreen,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          '${dish.calories} Kcal',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Colors.grey.withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 26, top: 1),
                            child: Column(
                              children: [
                                dish.isRecommended
                                    ? TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              kColorGreen.withOpacity(0.2),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Recomendado',
                                          style: TextStyle(color: kColorGreen),
                                        ))
                                    : Text(''),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    ImageIcon(
                                        AssetImage(
                                          "assets/icons/low-carbs.png",
                                        ),
                                        color: kColorGreen),
                                    SizedBox(width: 10),
                                    ImageIcon(
                                        AssetImage("assets/icons/low-fat.png"),
                                        color: kColorGreen),
                                    SizedBox(width: 10),
                                    ImageIcon(
                                        AssetImage(
                                            "assets/icons/low-gluten.png"),
                                        color: kColorGreen),
                                    SizedBox(width: 10),
                                    ImageIcon(
                                        AssetImage(
                                            "assets/icons/low-sugar.png"),
                                        color: kColorGreen)
                                  ],
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Material(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          dish.isFavorite ? Icons.favorite_outlined : Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
