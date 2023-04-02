import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_test/app/dependency_injection.dart';
import 'package:qit_test/data/model/responses/responses.dart';
import '../../domain/repository/repository.dart';
import '../../presentation/resources/strings_manager.dart';
import '../network/app_api.dart';
import '../network/dio_factory.dart';
import '../network/network_info.dart';

class RepositoryImplementer extends Repository {
  final AppServiceClient _appServiceClient;
  final NetworkInfo _networkInfo;

  RepositoryImplementer(this._appServiceClient, this._networkInfo);

  @override
  Future<Either<FailureModel, AuthModel>> register(
      {required String email,
      required String name,
      required String password,
      required String passwordConfirmation}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.register(
            email: email,
            name: name,
            password: password,
            passwordConfirmation: passwordConfirmation);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Either<FailureModel, CartModel>> addToCart(
      {required int productId, required int quantity}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.addToCart(
            productId: productId, quantity: quantity);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Either<FailureModel, CartModel>> cart() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.cart();
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Either<FailureModel, CheckModel>> check() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.check();
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Either<FailureModel, AuthModel>> login(
      {required String email, required String password}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _appServiceClient.login(email: email, password: password);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Either<FailureModel, String>> logout({bool? all}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.logout(all: all);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Either<FailureModel, ProductModel>> product(
      {required int productId}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.product(productId: productId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Either<FailureModel, ProductsModel>> products(
      {required int perPage, int? page, String? keyword}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _appServiceClient.products(
            perPage: perPage, page: page, keyword: keyword);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Either<FailureModel, CartModel>> removeFromCart(
      {required int productId}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _appServiceClient.removeFromCart(productId: productId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(FailureModel.fromJson(response.response.data));
        }
      } on DioError catch (e) {
        return Left(FailureModel.fromJson(e.response?.data));
      }
    } else {
      return Left(FailureModel(message: AppStrings().noInternetError));
    }
  }
}