import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_test/presentation/cart/providers/cart_state.dart';

import '../../../app/dependency_injection.dart';
import '../../../domain/repository/repository.dart';

final addToCartControllerProvider =
StateNotifierProvider.autoDispose<AddToCartNotifier, AddToCartState>((ref) {
  return AddToCartNotifier();
});

class AddToCartNotifier extends StateNotifier<AddToCartState> {
  AddToCartNotifier() : super(AddToCartState.initial());


  Future<void> addToCart(int productId, int quantity) async {
    if (state.status == AddToCartStateStatus.loading) return;

    state = state.copyWith(status: AddToCartStateStatus.loading,productId: productId);

    (await instance<Repository>().addToCart(productId: productId,quantity: quantity)).fold(
            (failure) => state = state = state.copyWith(status: AddToCartStateStatus.error, errorMessage: failure.message),
            (data) {
          state = state.copyWith(status: AddToCartStateStatus.success);
        });
  }
}

final cartControllerProvider =
StateNotifierProvider.autoDispose<CartNotifier, CartState>((ref) {
  return CartNotifier();
});

class CartNotifier extends StateNotifier<CartState> {
  CartNotifier() : super(CartState.initial());


  Future<void> getCart() async {
    if (state.status == CartStateStatus.loading) return;

    state = state.copyWith(status: CartStateStatus.loading);

    (await instance<Repository>().cart()).fold(
            (failure) => state = state = state.copyWith(status: CartStateStatus.error, errorMessage: failure.message),
            (data) {
          state = state.copyWith(status: CartStateStatus.loaded,cartModel: data);
        });
  }
}

final removeFromCartControllerProvider =
StateNotifierProvider.autoDispose<RemoveFromCartNotifier, RemoveFromCartState>((ref) {
  return RemoveFromCartNotifier();
});

class RemoveFromCartNotifier extends StateNotifier<RemoveFromCartState> {
  RemoveFromCartNotifier() : super(RemoveFromCartState.initial());


  Future<void> removeFromCart(int productId) async {
    if (state.status == RemoveFromCartStateStatus.loading) return;

    state = state.copyWith(status: RemoveFromCartStateStatus.loading,productId: productId);

    (await instance<Repository>().removeFromCart(productId: productId)).fold(
            (failure) => state = state = state.copyWith(status: RemoveFromCartStateStatus.error, errorMessage: failure.message),
            (data) {
          state = state.copyWith(status: RemoveFromCartStateStatus.success,cartModel: data);
        });
  }
}