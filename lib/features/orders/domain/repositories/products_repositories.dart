import 'package:challenge_apple/features/orders/data/model/product.dart';


abstract class ProductRepository {
  Future<List<Product>> get();
}