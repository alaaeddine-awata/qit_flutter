import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_test/presentation/cart/providers/cart_providers.dart';
import 'package:qit_test/presentation/cart/providers/cart_state.dart';

import '../../data/model/responses/responses.dart';
import '../resources/resources.dart';

class CartItem extends StatelessWidget {
  final ProductModel product;

  const CartItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLtr = context.locale == LanguageType.ENGLISH.getLocal();
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
          color: ColorManager.secondary.withAlpha(20),
          borderRadius: BorderRadius.circular(30.r)),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('${AppStrings().name}: ',style: getRegularStyle(color: Colors.black,fontSize: 16.sp),),
                        Text(product.productId.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${AppStrings().quantity}: ',style: getRegularStyle(color: Colors.black,fontSize: 16.sp),),
                        Text(product.totalQuantity.toString()),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('${AppStrings().totalPrice}: ',style: getRegularStyle(color: Colors.black,fontSize: 16.sp),),
                    Text(product.total.formatted),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Consumer(builder: (context, ref, _) {
              return Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red.withAlpha(200),
                          borderRadius: isLtr ? BorderRadius.only(
                            bottomRight: Radius.circular(30.r),
                            topRight: Radius.circular(30.r),
                          ) : BorderRadius.only(
                            bottomLeft: Radius.circular(30.r),
                            topLeft: Radius.circular(30.r),
                          )),
                      child: IconButton(
                          onPressed: () {
                            ref
                                .read(removeFromCartControllerProvider.notifier)
                                .removeFromCart(product.productId);
                          },
                          icon: ref.watch(removeFromCartControllerProvider).status ==
                              RemoveFromCartStateStatus.loading &&
                              product.productId ==
                                  ref.watch(removeFromCartControllerProvider).productId
                              ? const Center(child: CircularProgressIndicator())
                              : const Icon(
                            Icons.delete_forever,
                            color: Colors.white,
                          )),
                    );
            }),
          ),
        ],
      ),
    );
  }
}
