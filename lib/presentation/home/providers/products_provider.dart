import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_test/presentation/home/providers/products_state.dart';
import '../../../app/dependency_injection.dart';
import '../../../data/model/responses/responses.dart';
import '../../../domain/repository/repository.dart';

final productsControllerProvider =
StateNotifierProvider.autoDispose<ProductsNotifier, ProductsState>((ref) {
  return ProductsNotifier();
});

class ProductsNotifier extends StateNotifier<ProductsState> {
  ProductsNotifier() : super(ProductsState.initial());
  int page = 1;

    Future<void> getProducts() async {
      if (state.status == ProductsStateStatus.loading) return;

      final currentState = state;
      var oldDataList = <ProductModel>[];

      if (currentState.status == ProductsStateStatus.loaded) {
        oldDataList = currentState.dataList;
      }
      if (currentState.status == ProductsStateStatus.error) {
        oldDataList = currentState.oldDataList;
      }

      if(page != state.productsModel.meta.lastPage+1 || page ==1) {
        state = state.copyWith(status: ProductsStateStatus.loading, oldDataList: oldDataList,isFirstFetched: page == 1);

        (await instance<Repository>().products(perPage: 10,page: page)).fold(
              (failure) => state = state = state.copyWith(status: ProductsStateStatus.error, errorMessage: failure.message,oldDataList: oldDataList),
              (data) {
                page++;
                final List<ProductModel> combinedDataList = state.oldDataList+data.data;
                state = state.copyWith(status: ProductsStateStatus.loaded, dataList: combinedDataList,productsModel: data);
              });
      }
    }
}