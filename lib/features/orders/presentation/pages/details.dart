import 'package:challenge_apple/core/constants/constants.dart';
import 'package:challenge_apple/features/orders/data/model/product.dart';
import 'package:challenge_apple/features/orders/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Dish dish;

  const DetailsScreen({@required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBarUID(context, dish.isFavorite),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        widthFactor: 1,
                        heightFactor: 0.85,
                        child: Image.network(dish.image),
                      ),
                    ),
                  ),
                  Text(
                    dish.name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  dish.isRecommended
                      ? TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kColorGreen.withOpacity(0.2),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Recomendado',
                            style: TextStyle(color: kColorGreen),
                          ))
                      : SizedBox(),
                  RichText(
                    text: TextSpan(
                      text: 'Ingredientes: ',
                      style: TextStyle(color: kColorBlackGrey, fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'OpenSans'),
                      children: <TextSpan>[
                        TextSpan(text: 'Delicioso plato de pasta con pollo verduraras salteadas y chira.'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            border:
                                Border.all(color: kCOlorGreyLight, width: 2)),
                        height: 60,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  Text('Kcal'),
                                  Text(
                                    '800',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kColorGreen),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  Text('Grasa'),
                                  Text(
                                    '800',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kColorGreen),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  Text('Carbo'),
                                  Text(
                                    '800',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kColorGreen),
                                  )
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  Text('Prote'),
                                  Text(
                                    '800',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kColorGreen),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Wrap(
                    spacing: 4.0,
                    children: [
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "assets/icons/low-carbs.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        label: Text('Bajo en carbono'),
                        backgroundColor: Colors.white,
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "assets/icons/low-sugar.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        label: Text('Bajo en azúcar'),
                        backgroundColor: Colors.white,
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "assets/icons/low-fat.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        label: Text('Bajo en calorias'),
                        backgroundColor: Colors.white,
                      ),
                      Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "assets/icons/low-sodium.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        label: Text('Bajo en sodio'),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(3),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: kColorFilledGrey,
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            border:
                                Border.all(color: kCOlorGreyLight, width: 2)),
                        height: 80,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    bottomLeft: Radius.circular(9)),
                                color: kColorFilledGrey,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child:
                                      Image.asset('assets/images/mgreen.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Almuerzo'),
                                  SizedBox(
                                    height: 30,
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              kColorGreen.withOpacity(0.2),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Recomendado',
                                          style: TextStyle(color: kColorGreen),
                                        )),
                                  ),
                                  Text('800 Kcal',
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: kColorYellow,
                                  ),
                                  onPressed: () {},
                                  child: Text('Agregar', style: TextStyle(color: kColorBlackGrey),)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    title: Text("Camote"),
                    activeColor: kColorGreen,
                    value: true,
                    onChanged: (newValue) {
                      print(newValue);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Papa"),
                    activeColor: kColorGreen,
                    value: true,
                    onChanged: (newValue) {
                      print(newValue);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Arroz"),
                    activeColor: kColorGreen,
                    value: true,
                    onChanged: (newValue) {
                      print(newValue);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  Divider(color: kColorGrey, height: 15),
                  CheckboxListTile(
                    title: Text("Incluir picante"),
                    activeColor: kColorGreen,
                    value: true,
                    onChanged: (newValue) {
                      print(newValue);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: kColorYellow,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Agregar al pedido',
                          style: TextStyle(color: kColorBlackGrey),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
