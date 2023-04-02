import 'package:dartz/dartz.dart';
import 'package:qit_test/data/model/responses/responses.dart';

abstract class Repository {
  Future<Either<FailureModel, AuthModel>> register(
      {required String email,
      required String name,
      required String password,
      required String passwordConfirmation});

  Future<Either<FailureModel, AuthModel>>  login({
    required String email,
    required String password,
  });

  Future<Either<FailureModel, CheckModel>>  check();

  Future<Either<FailureModel, String>> logout({
    bool? all,
  });

  Future<Either<FailureModel, ProductsModel>> products({
    required int perPage,
    int? page,
    String? keyword,
  });

  Future<Either<FailureModel, ProductModel>> product({
    required int productId,
  });

  Future<Either<FailureModel, CartModel>> cart();

  Future<Either<FailureModel, CartModel>> addToCart({
    required int productId,
    required int quantity,
  });

  Future<Either<FailureModel, CartModel>> removeFromCart({
    required int productId,
  });
}
