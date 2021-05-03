import 'package:challenge_apple/dependencies_provider.dart' as di;
import 'package:flutter/material.dart';
import 'features/orders/presentation/app.dart';

void main() {
  di.init();
  runApp(MyApp());
}

