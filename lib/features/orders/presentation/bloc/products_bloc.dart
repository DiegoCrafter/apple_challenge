import 'package:challenge_apple/core/common/bloc.dart';
import 'package:challenge_apple/features/orders/data/model/product.dart';
import 'package:challenge_apple/features/orders/domain/usecases/get_products_use_case.dart';
import 'package:challenge_apple/features/orders/presentation/bloc/products_state.dart';

class ProductsBloc extends Bloc<ProductsState> {
  final GetProductsUseCase _getProductsUseCase;

  ProductsBloc(this._getProductsUseCase) {
    changeState(ProductsState.loading(searchTerm: ''));
  }

  void search(String searchTerm) {
    _getProductsUseCase.execute().then((products) {
      changeState(ProductsState.loaded(
          state.searchTerm, _mapProductsToState(products)));
    }).catchError((error) {
      print(error);
      changeState(
          ProductsState.error(state.searchTerm, 'A network error has ocurred'));
    });
  }

  List<ProductItemState> _mapProductsToState(List<Product> products) {
    return products
        .map((product) => ProductItemState(product.id,
            product.title, product.price.toString(), product.calories.toString(), product.dishes))
        .toList();
  }
}