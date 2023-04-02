import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_test/data/model/responses/responses.dart';
import '../../app/app_state_manager.dart';
import '../cart/providers/cart_providers.dart';
import '../cart/providers/cart_state.dart';
import '../resources/resources.dart';

class ProductItem extends ConsumerStatefulWidget {
  final ProductModel product;

  const ProductItem(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ProductItemState();
}

class _ProductItemState extends ConsumerState<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final state = ref.watch(addToCartControllerProvider);
      return Container(
        decoration: BoxDecoration(
            color: ColorManager.secondary.withAlpha(20),
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.h),
                child: FadeInImage(
                  image: NetworkImage(widget.product.image.conversions.medium),
                  placeholder:
                      NetworkImage(widget.product.image.conversions.small),
                  imageErrorBuilder: (context, o, st) => const Placeholder(),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(widget.product.title,
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(widget.product.price.formatted),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      textStyle:
                                          getBoldStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(Routes.productRoute,arguments: widget.product);
                                  },
                                  child: Text(AppStrings().details))),
                          Expanded(
                            child: (state.status ==
                                        AddToCartStateStatus.loading &&
                                    widget.product.id == state.productId)
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : IconButton(
                                    onPressed: () {
                                      ref.watch(appStateManager).isLoggedIn
                                          ? {
                                              ref
                                                  .read(
                                                      addToCartControllerProvider
                                                          .notifier)
                                                  .addToCart(
                                                      widget.product.id, 1),
                                            }
                                          : AwesomeDialog(
                                              context: context,
                                              animType: AnimType.topSlide,
                                              dialogType: DialogType.warning,
                                              title: AppStrings().attention,
                                              desc: AppStrings()
                                                  .pleaseLoginToContinue,
                                              btnOkText: AppStrings().login,
                                              btnOkColor: ColorManager.primary,
                                              btnOkOnPress: () {
                                                Navigator.of(context).pushNamed(
                                                    Routes.registerRoute);
                                              },
                                            ).show();
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      color: ColorManager.secondary,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
