import 'package:dio/dio.dart';
import 'package:qit_test/data/model/responses/responses.dart';
import 'package:retrofit/retrofit.dart';
import '../../app/constant.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/user/register")
  Future<HttpResponse<AuthModel>> register(
      {@Field('email') required String email,
      @Field('name') required String name,
      @Field('password') required String password,
      @Field('password_confirmation') required String passwordConfirmation});

  @POST("/user/login")
  Future<HttpResponse<AuthModel>> login({
    @Field('email') required String email,
    @Field('password') required String password,
  });

  @GET("/user/check")
  Future<HttpResponse<CheckModel>> check();

  @POST("/user/logout")
  Future<HttpResponse<String>> logout({
    @Field('all') bool? all,
  });

  @GET("/product")
  Future<HttpResponse<ProductsModel>> products({
    @Query('perpage') required int perPage,
    @Query('page') int? page,
    @Query('keyword') String? keyword,
  });

  @GET("/product/{productId}")
  Future<HttpResponse<ProductModel>> product({
    @Path() required int productId,
  });

  @GET("/cart")
  Future<HttpResponse<CartModel>> cart();

  @PUT("/cart/item")
  Future<HttpResponse<CartModel>> addToCart({
    @Field('product_id') required int productId,
    @Field('quantity') required int quantity,
  });

  @DELETE("/cart/item")
  Future<HttpResponse<CartModel>> removeFromCart({
    @Field('product_id') required int productId,
  });
}
