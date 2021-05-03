import 'package:challenge_apple/features/orders/presentation/bloc/products_bloc.dart';
import 'package:get_it/get_it.dart';
import 'features/orders/data/datasources/products_in_memory_repo.dart';
import 'features/orders/domain/repositories/products_repositories.dart';
import 'features/orders/domain/usecases/get_products_use_case.dart';

final getIt = GetIt.instance;

void init(){
  registerProductDependencies();
}

void registerProductDependencies() {
  getIt.registerFactory(() => ProductsBloc(getIt()));

  getIt.registerLazySingleton(() => GetProductsUseCase(getIt()));

  getIt.registerLazySingleton<ProductRepository>(() => ProductInMemoryRepository());
}