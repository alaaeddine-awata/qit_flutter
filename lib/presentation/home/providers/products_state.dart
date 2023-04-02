import'package:equatable/equatable.dart';

import '../../../data/model/responses/responses.dart';

enum ProductsStateStatus { initial, loading, loaded, error }

class ProductsState extends Equatable {
  final ProductsStateStatus status;
  final List<ProductModel> dataList, oldDataList;
  final bool isFirstFetched;
  final ProductsModel productsModel;
  final String errorMessage;

  const ProductsState({
    required this.status,
    required this.dataList,
    required this.oldDataList,
    required this.isFirstFetched,
    required this.productsModel,
    required this.errorMessage,
  });

  /// Initial factory constructor for [PaginationState]
  factory ProductsState.initial() {
    return ProductsState(
      oldDataList: const [],
      dataList: const [],
      status: ProductsStateStatus.initial,
      isFirstFetched: false,
      productsModel: ProductsModel(),
      errorMessage: '',
    );
  }

  ProductsState copyWith({
    ProductsStateStatus? status,
    List<ProductModel>? dataList,
    List<ProductModel>? oldDataList,
    bool? isFirstFetched,
    ProductsModel? productsModel,
    String? errorMessage,
  }) {
    return ProductsState(
      status: status ?? this.status,
      dataList: dataList ?? this.dataList,
      oldDataList: oldDataList ?? this.oldDataList,
      isFirstFetched: isFirstFetched ?? this.isFirstFetched,
      productsModel: productsModel ?? this.productsModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [status, oldDataList, dataList, isFirstFetched, productsModel,errorMessage];
}