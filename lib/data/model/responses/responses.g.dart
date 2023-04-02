// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      user: json['user'] == null
          ? const UserModel()
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

_$_CheckModel _$$_CheckModelFromJson(Map<String, dynamic> json) =>
    _$_CheckModel(
      message: json['message'] as String? ?? '',
      user: json['user'] == null
          ? const UserModel()
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CheckModelToJson(_$_CheckModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };

_$_PriceModel _$$_PriceModelFromJson(Map<String, dynamic> json) =>
    _$_PriceModel(
      value: json['value'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      formatted: json['formatted'] as String? ?? '',
    );

Map<String, dynamic> _$$_PriceModelToJson(_$_PriceModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
      'formatted': instance.formatted,
    };

_$_ConversionsModel _$$_ConversionsModelFromJson(Map<String, dynamic> json) =>
    _$_ConversionsModel(
      small: json['small'] as String? ?? '',
      medium: json['medium'] as String? ?? '',
      large: json['large'] as String? ?? '',
      defaultValue: json['default'] as String? ?? '',
    );

Map<String, dynamic> _$$_ConversionsModelToJson(_$_ConversionsModel instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'default': instance.defaultValue,
    };

_$_ImageModel _$$_ImageModelFromJson(Map<String, dynamic> json) =>
    _$_ImageModel(
      value: json['value'] as int? ?? 0,
      fileName: json['file_name'] as String? ?? '',
      conversions: json['conversions'] == null
          ? const ConversionsModel()
          : ConversionsModel.fromJson(
              json['conversions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImageModelToJson(_$_ImageModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'file_name': instance.fileName,
      'conversions': instance.conversions,
    };

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int? ?? 0,
      productId: json['product_id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: json['price'] == null
          ? const PriceModel()
          : PriceModel.fromJson(json['price'] as Map<String, dynamic>),
      total: json['total'] == null
          ? const PriceModel()
          : PriceModel.fromJson(json['total'] as Map<String, dynamic>),
      unitPrice: json['unit_price'] == null
          ? const PriceModel()
          : PriceModel.fromJson(json['unit_price'] as Map<String, dynamic>),
      image: json['image'] == null
          ? const ImageModel()
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      totalQuantity: json['total_quantity'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'total': instance.total,
      'unit_price': instance.unitPrice,
      'image': instance.image,
      'total_quantity': instance.totalQuantity,
    };

_$_PaginationLinksModel _$$_PaginationLinksModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaginationLinksModel(
      first: json['first'] as String? ?? '',
      last: json['last'] as String? ?? '',
      prev: json['prev'] as String? ?? '',
      next: json['next'] as String? ?? '',
    );

Map<String, dynamic> _$$_PaginationLinksModelToJson(
        _$_PaginationLinksModel instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

_$_LinkInformationModel _$$_LinkInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_LinkInformationModel(
      url: json['url'] as String? ?? '',
      label: json['label'] as String? ?? '',
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LinkInformationModelToJson(
        _$_LinkInformationModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$_PaginationInformationModel _$$_PaginationInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaginationInformationModel(
      currentPage: json['current_page'] as int? ?? 0,
      from: json['from'] as int? ?? 0,
      lastPage: json['last_page'] as int? ?? 0,
      links: (json['links'] as List<dynamic>?)
              ?.map((e) =>
                  LinkInformationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      path: json['path'] as String? ?? '',
      perPage: json['per_page'] as String? ?? '',
      to: json['to'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PaginationInformationModelToJson(
        _$_PaginationInformationModel instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'links': instance.links,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

_$_ProductsModel _$$_ProductsModelFromJson(Map<String, dynamic> json) =>
    _$_ProductsModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      links: json['links'] == null
          ? const PaginationLinksModel()
          : PaginationLinksModel.fromJson(
              json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? const PaginationInformationModel()
          : PaginationInformationModel.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductsModelToJson(_$_ProductsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$_CartDataModel _$$_CartDataModelFromJson(Map<String, dynamic> json) =>
    _$_CartDataModel(
      id: json['id'] as int? ?? 0,
      total: json['total'] == null
          ? const PriceModel()
          : PriceModel.fromJson(json['total'] as Map<String, dynamic>),
      items: json['items'] as int? ?? 0,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CartDataModelToJson(_$_CartDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'items': instance.items,
      'products': instance.products,
    };

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      data: json['data'] == null
          ? const CartDataModel()
          : CartDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_FailureModel _$$_FailureModelFromJson(Map<String, dynamic> json) =>
    _$_FailureModel(
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_FailureModelToJson(_$_FailureModel instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
