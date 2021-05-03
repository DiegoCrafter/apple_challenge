import 'package:challenge_apple/dependencies_provider.dart';
import 'package:challenge_apple/features/orders/presentation/bloc/products_bloc.dart';
import 'package:challenge_apple/features/orders/presentation/bloc/products_state.dart';
import 'package:flutter/material.dart';

import 'item_order.dart';

class ProductList extends StatelessWidget {
  final ProductsBloc _bloc;

  ProductList() : _bloc= getIt<ProductsBloc>(){
    _bloc.search('Almuerzo');
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProductsState>(
      initialData: _bloc.state,
      stream: _bloc.observableState,
      builder: (context, snapshot) {
        final state = snapshot.data;
        if (state is LoadingProductsState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ErrorProductsState) {
          return Center(child:Text(state.message));
        } else {
          return _renderProductList(context, state);
        }
      },
    );
  }

   Widget _renderProductList(BuildContext context, LoadedProductsState state) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: state.products.length,
      itemBuilder: (BuildContext context, index){
        final ProductItemState product = state.products[index];
        return ItemOrder(product);
      }
    );
  }
}