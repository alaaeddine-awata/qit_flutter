import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qit_test/presentation/widgets/cart_item.dart';
import '../resources/resources.dart';
import 'providers/cart_providers.dart';
import 'providers/cart_state.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings().cart),
      ),
      body: Consumer(builder: (context, ref, _) {
        final state = ref.watch(cartControllerProvider);
        final products = state.cartModel.data.products;
        ref.listen(cartControllerProvider, (previous, next) {
          if(ref.watch(cartControllerProvider).status == CartStateStatus.error){
            Fluttertoast.showToast(msg: ref.watch(cartControllerProvider).errorMessage.isNotEmpty?ref.watch(cartControllerProvider).errorMessage:AppStrings().somethingWentWrong,backgroundColor: Colors.red);
          }
        });

        ref.listen(removeFromCartControllerProvider,
                (previous, next) async {
              if (ref.watch(removeFromCartControllerProvider).status ==
                  RemoveFromCartStateStatus.error) {
                Fluttertoast.showToast(
                    msg: ref.watch(removeFromCartControllerProvider).errorMessage
                        .isNotEmpty
                        ? ref.read(removeFromCartControllerProvider).errorMessage
                        : AppStrings().somethingWentWrong,
                    backgroundColor: Colors.red);
              }
              if (ref.watch(removeFromCartControllerProvider).status ==
                  RemoveFromCartStateStatus.success) {
                ref.read(cartControllerProvider.notifier).getCart();
                Fluttertoast.showToast(
                    msg: AppStrings().productRemovedSuccessfully,
                    backgroundColor: Colors.green);
              }
            });

        if (state.status == CartStateStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status == CartStateStatus.error) {
          return Center(
            child: ElevatedButton(
                onPressed: () {
                  ref.read(cartControllerProvider.notifier).getCart();
                },
                child: Text(AppStrings().retry)),
          );
        } else {
          if(products.isNotEmpty) {
            return Column(
              children: [
                Expanded(
                  child: ListView.separated(
                  padding: EdgeInsets.all(15.sp),
                  itemCount: products.length,
                  separatorBuilder: (context,index) => const Divider(),
                  itemBuilder: (context,index) => CartItem(product: products[index]),
          ),
                ),
                Container(
                  padding: EdgeInsets.all(15.sp),
                  color: ColorManager.secondary.withAlpha(20),
                  height: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${AppStrings().totalPrice}:',style: getBoldStyle(color: Colors.black,fontSize: 23.sp),),
                      SizedBox(width: 5.w,),
                      Text(state.cartModel.data.total.formatted,style: getBoldStyle(color: ColorManager.primary,fontSize: 23.sp),),
                    ],
                  ),
                ),
              ],
            );
          }else{
          return  Center(child: Text(AppStrings().yourCartIsEmpty),);
          }
        }
      }),
    );
  }
}
