import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qit_test/data/model/responses/responses.dart';
import 'package:qit_test/presentation/cart/providers/cart_providers.dart';
import 'package:qit_test/presentation/cart/providers/cart_state.dart';

import '../resources/resources.dart';

class ProductView extends StatefulWidget {
  final ProductModel product;
  const ProductView({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings().productDetails),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: CircleAvatar(
                radius: 30.h,
                backgroundColor: ColorManager.secondary3.withAlpha(20),
              ),
            ),
            Positioned(
              top: 155.h,
              right: 12.w,
              child: CircleAvatar(
                radius: 70.h,
                backgroundColor: ColorManager.secondary2.withAlpha(20),
              ),
            ),
            Positioned(
              top: 15.h,
              left: 12.w,
              child: CircleAvatar(
                radius: 50.h,
                backgroundColor: ColorManager.secondary4.withAlpha(20),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 25.h, left: 27.w, right: 26.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 250.h,
                      width: 219.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: CachedNetworkImage(
                          placeholder: (context, url) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          errorWidget: (context, url, error) =>
                          const SizedBox.shrink(),
                          imageUrl: widget.product.image.conversions.large,
                          height: 339.h,
                          width: 219.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 5.h,
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Text(
                            widget.product.title,
                            style:
                            Theme.of(context).textTheme.headlineMedium,
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Text(
                            widget.product.description,
                            style:
                            getSemiBoldStyle(color: Colors.black,fontSize: 16.sp),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Row(
                            children: [
                              Text('${AppStrings().price}: ',style: getRegularStyle(color: Colors.black,fontSize: 18.sp),),
                              Text(widget.product.price.formatted,style: getBoldStyle(color: ColorManager.secondary,fontSize: 18.sp),),
                            ],
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings().selectQuantity,
                          style:
                          getRegularStyle(color: Colors.black,fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                      value++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 25.w,
                                  color: ColorManager.primary,
                                )),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              value.toString(),
                              style: getSemiBoldStyle(
                                  color: ColorManager.secondary,
                                  fontSize: 32.sp),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            InkWell(
                                onTap: () {
                                  if (value != 0) {
                                    setState(() {
                                      value--;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.remove,
                                  size: 25.w,
                                  color: ColorManager.primary,
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Consumer(
                      builder: (context,ref,_) {
                        ref.listen(addToCartControllerProvider, (previous, next) {
                         if(ref.watch(addToCartControllerProvider).status == AddToCartStateStatus.success){
                           Fluttertoast.showToast(msg: AppStrings().productAddedSuccessfully,backgroundColor: Colors.green);
                         }
                         if (ref.watch(addToCartControllerProvider).status ==
                             AddToCartStateStatus.error) {
                           Fluttertoast.showToast(
                               msg: ref.watch(addToCartControllerProvider).errorMessage.isNotEmpty
                                   ? ref.watch(addToCartControllerProvider).errorMessage
                                   : AppStrings().somethingWentWrong,
                               backgroundColor: Colors.red);
                         }
                        });

                        if(ref.watch(addToCartControllerProvider).status != AddToCartStateStatus.loading) {
                          return ElevatedButton(
                            onPressed: () {
                              ref.read(addToCartControllerProvider.notifier).addToCart(widget.product.id, value);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(AppStrings().addToCart),
                                SizedBox(
                                  width: 13.w,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 22.sp,
                                )
                              ],
                            ));
                        }else{
                          return const Center(child: CircularProgressIndicator(),);
                        }
                      }
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
