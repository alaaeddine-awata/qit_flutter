import 'package:freezed_annotation/freezed_annotation.dart';

part 'responses.g.dart';

part 'responses.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {@Default(0) int id,
      @Default('') String name,
      @Default('') String email}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel(
      {@Default(UserModel()) UserModel user,
      @Default('') String token}) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

@freezed
class CheckModel with _$CheckModel {
  const factory CheckModel(
      {@Default('') String message,
      @Default(UserModel()) UserModel user}) = _CheckModel;

  factory CheckModel.fromJson(Map<String, dynamic> json) =>
      _$CheckModelFromJson(json);
}

@freezed
class PriceModel with _$PriceModel {
  const factory PriceModel({
    @Default('') String value,
    @Default('') String currency,
    @Default('') String formatted,
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);
}

@freezed
class ConversionsModel with _$ConversionsModel {
  const factory ConversionsModel({
    @Default('') String small,
    @Default('') String medium,
    @Default('') String large,
    @JsonKey(name: 'default') @Default('') String defaultValue,
  }) = _ConversionsModel;

  factory ConversionsModel.fromJson(Map<String, dynamic> json) =>
      _$ConversionsModelFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    @Default(0) int value,
   @JsonKey(name:'file_name') @Default('') String fileName,
    @Default(ConversionsModel()) ConversionsModel conversions,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @Default(0) int id,
   @JsonKey(name: 'product_id') @Default(0) int productId,
    @Default('') String title,
    @Default('') String description,
    @Default(PriceModel()) PriceModel price,
    @Default(PriceModel()) PriceModel total,
    @JsonKey(name: 'unit_price') @Default(PriceModel()) PriceModel unitPrice,
    @Default(ImageModel()) ImageModel image,
   @JsonKey(name: 'total_quantity') @Default(0) int totalQuantity,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class PaginationLinksModel with _$PaginationLinksModel {
  const factory PaginationLinksModel({
    @Default('') String first,
    @Default('') String last,
    @Default('') String prev,
    @Default('') String next,
  }) = _PaginationLinksModel;

  factory PaginationLinksModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksModelFromJson(json);
}

@freezed
class LinkInformationModel with _$LinkInformationModel {
  const factory LinkInformationModel({
    @Default('') String url,
    @Default('') String label,
    @Default(false) bool active,
  }) = _LinkInformationModel;

  factory LinkInformationModel.fromJson(Map<String, dynamic> json) =>
      _$LinkInformationModelFromJson(json);
}

@freezed
class PaginationInformationModel with _$PaginationInformationModel {
  const factory PaginationInformationModel({
   @JsonKey(name:'current_page') @Default(0) int currentPage,
    @Default(0) int from,
   @JsonKey(name:'last_page') @Default(0) int lastPage,
   @Default([]) List<LinkInformationModel> links,
    @Default('') String path,
    @JsonKey(name:'per_page') @Default('') String perPage,
    @Default(0) int to,
    @Default(0) int total,
  }) = _PaginationInformationModel;

  factory PaginationInformationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationInformationModelFromJson(json);
}

@freezed
class ProductsModel with _$ProductsModel {
  const factory ProductsModel({
    @Default([]) List<ProductModel> data,
    @Default(PaginationLinksModel()) PaginationLinksModel links,
    @Default(PaginationInformationModel()) PaginationInformationModel meta,
  }) = _ProductsModel;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}

@freezed
class CartDataModel with _$CartDataModel {
  const factory CartDataModel({
    @Default(0) int id,
    @Default(PriceModel()) PriceModel total,
    @Default(0) int items,
    @Default([]) List<ProductModel> products,
  }) = _CartDataModel;

  factory CartDataModel.fromJson(Map<String, dynamic> json) =>
      _$CartDataModelFromJson(json);
}

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @Default(CartDataModel()) CartDataModel data,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class FailureModel with _$FailureModel {
  const factory FailureModel({
    @Default('') String message,
  }) = _FailureModel;

  factory FailureModel.fromJson(Map<String, dynamic> json) =>
      _$FailureModelFromJson(json);
}
