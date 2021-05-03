import 'package:challenge_apple/features/orders/data/model/product.dart';
import 'package:challenge_apple/features/orders/domain/repositories/products_repositories.dart';

class GetProductsUseCase {
  final ProductRepository _productRepository;

  GetProductsUseCase(this._productRepository);

  Future<List<Product>> execute() {
    return _productRepository.get();
  }
}