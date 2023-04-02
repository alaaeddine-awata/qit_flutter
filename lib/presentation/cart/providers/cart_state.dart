import 'package:equatable/equatable.dart';
import 'package:qit_test/data/model/responses/responses.dart';

enum CartStateStatus { initial, loading, loaded, error }

class CartState extends Equatable {
  final CartStateStatus status;
  final CartModel cartModel;
  final String errorMessage;

  const CartState({
    required this.status,
    required this.cartModel,
    required this.errorMessage,
  });

  /// Initial factory constructor for [CartState]
  factory CartState.initial() {
    return CartState(
      status: CartStateStatus.initial,
      cartModel: const CartModel(),
      errorMessage: '',
    );
  }

  CartState copyWith({
    CartStateStatus? status,
    CartModel? cartModel,
    String? errorMessage,
  }) {
    return CartState(
      status: status ?? this.status,
      cartModel: cartModel ?? this.cartModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [status, cartModel, errorMessage];
}

enum AddToCartStateStatus { initial, loading, success, error }

class AddToCartState extends Equatable {
  final AddToCartStateStatus status;
  final String errorMessage;
  final int productId;

  const AddToCartState({
    required this.status,
    required this.errorMessage,
    required this.productId,
  });

  /// Initial factory constructor for [CartState]
  factory AddToCartState.initial() {
    return AddToCartState(
      status: AddToCartStateStatus.initial,
      errorMessage: '',
      productId: 0,
    );
  }

  AddToCartState copyWith({
    AddToCartStateStatus? status,
    String? errorMessage,
    int? productId,
  }) {
    return AddToCartState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      productId: productId ?? this.productId,
    );
  }

  @override
  List<Object> get props => [status,errorMessage,productId];
}

enum RemoveFromCartStateStatus { initial, loading, success, error }

class RemoveFromCartState extends Equatable {
  final RemoveFromCartStateStatus status;
  final int productId;
  final String errorMessage;
  final CartModel cartModel;

  const RemoveFromCartState({
    required this.status,
    required this.productId,
    required this.errorMessage,
    required this.cartModel,
  });

  /// Initial factory constructor for [CartState]
  factory RemoveFromCartState.initial() {
    return RemoveFromCartState(
      status: RemoveFromCartStateStatus.initial,
      productId: 0,
      errorMessage: '',
      cartModel: CartModel(),
    );
  }

  RemoveFromCartState copyWith({
    RemoveFromCartStateStatus? status,
    int? productId,
    String? errorMessage,
    CartModel? cartModel,
  }) {
    return RemoveFromCartState(
      status: status ?? this.status,
      productId: productId ?? this.productId,
      errorMessage: errorMessage ?? this.errorMessage,
      cartModel: cartModel ?? this.cartModel,
    );
  }

  @override
  List<Object> get props => [status,productId,errorMessage,cartModel];
}