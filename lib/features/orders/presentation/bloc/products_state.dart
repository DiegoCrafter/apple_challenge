import 'package:challenge_apple/features/orders/data/model/product.dart';
import 'package:flutter/widgets.dart';

abstract class ProductsState {
  final String searchTerm;

  ProductsState(this.searchTerm);

  factory ProductsState.loading({String searchTerm}) =>
      LoadingProductsState(searchTerm: searchTerm);

  factory ProductsState.loaded(String searchTerm,
      List<ProductItemState> products) =>
      LoadedProductsState(searchTerm: searchTerm, products: products);

  factory ProductsState.error(String searchTerm,
      String message) => ErrorProductsState(searchTerm: searchTerm,message: message);
}

class LoadingProductsState extends ProductsState {
  LoadingProductsState({String searchTerm}) :super(searchTerm);
}

class LoadedProductsState extends ProductsState {
  final List<ProductItemState> products;

  LoadedProductsState({String searchTerm, @required this.products})
      :super(searchTerm);
}

class ErrorProductsState<T> extends ProductsState {
  final String message;

  ErrorProductsState({@required String searchTerm, @required this.message})
      :super(searchTerm);
}

class ProductItemState {
  final String id;
  final String title;
  final String price;
  final String calories;
  final List<Dish> dishes;

  ProductItemState(this.id, this.title, this.price, this.calories, this.dishes);
}