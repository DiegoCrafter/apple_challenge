import 'package:flutter/material.dart';

class DeliveryLocation extends StatelessWidget {
  final String location;

  const DeliveryLocation({Key key, @required this.location});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Entregar en:'),
      subtitle: Text(location),
      leading: Image.asset('assets/images/briefcase.png'),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
