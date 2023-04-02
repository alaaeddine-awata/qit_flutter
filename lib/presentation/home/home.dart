import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qit_test/app/app_state_manager.dart';
import 'package:qit_test/data/model/responses/responses.dart';
import 'package:qit_test/presentation/cart/providers/cart_providers.dart';
import 'package:qit_test/presentation/cart/providers/cart_state.dart';
import 'package:qit_test/presentation/home/providers/products_provider.dart';
import 'package:qit_test/presentation/resources/resources.dart';
import 'package:qit_test/presentation/widgets/language_bottom_sheet.dart';
import 'package:qit_test/presentation/widgets/logout_dialog.dart';
import '../widgets/product_item.dart';
import 'providers/products_state.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100)).then((value) {
      fetchPaginatedData();
    });
    setupScrollController();
  }

  Future<void> fetchPaginatedData() async {
    await ref.read(productsControllerProvider.notifier).getProducts();
  }

  void setupScrollController() {
    scrollController.addListener(() async {
      ///No Progress
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          await fetchPaginatedData();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings().home),
        leading: Consumer(builder: (context, ref, _) {
          return IconButton(
            onPressed: ref.watch(appStateManager).isLoggedIn
                ? () {
                    showDialog(
                        context: context,
                        builder: (context) => LogoutDialog(
                              function: () {
                                setState(() {});
                              },
                            ));
                  }
                : () {
                    Navigator.of(context).pushNamed(Routes.registerRoute);
                  },
            icon: Icon(ref.watch(appStateManager).isLoggedIn
                ? Icons.logout
                : Icons.login),
          );
        }),
        actions: [
          IconButton(onPressed: (){
            showDialog(context: context, builder: (context)=>const LanguageBottomSheet());
          }, icon: const Icon(Icons.language)),
          IconButton(
            onPressed: () {
              ref.watch(appStateManager).isLoggedIn
                  ? {
                      Navigator.of(context).pushNamed(Routes.cartRoute),
                      Future.delayed(const Duration(milliseconds: 100))
                          .then((value) {
                        ref.read(cartControllerProvider.notifier).getCart();
                      })
                    }
                  : AwesomeDialog(
                      context: context,
                      animType: AnimType.topSlide,
                      dialogType: DialogType.warning,
                      title: AppStrings().attention,
                      desc: AppStrings().pleaseLoginToContinue,
                      btnOkText: AppStrings().login,
                      btnOkColor: ColorManager.primary,
                      btnOkOnPress: () {
                        Navigator.of(context).pushNamed(Routes.registerRoute);
                      },
                    ).show();
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final state = ref.watch(productsControllerProvider);
          if (state.status == ProductsStateStatus.loading &&
              state.isFirstFetched) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          ref.listen(productsControllerProvider, (previous, next) async {
            if (ref.watch(productsControllerProvider).status ==
                ProductsStateStatus.error) {
              Fluttertoast.showToast(
                  msg: ref
                          .read(productsControllerProvider)
                          .errorMessage
                          .isNotEmpty
                      ? ref.read(productsControllerProvider).errorMessage
                      : AppStrings().somethingWentWrong,
                  backgroundColor: Colors.red);
            }
          });

          ref.listen(addToCartControllerProvider, (previous, next) async {
            if (ref.watch(addToCartControllerProvider).status ==
                AddToCartStateStatus.error) {
              Fluttertoast.showToast(
                  msg: ref.watch(addToCartControllerProvider).errorMessage.isNotEmpty
                      ? ref.watch(addToCartControllerProvider).errorMessage
                      : AppStrings().somethingWentWrong,
                  backgroundColor: Colors.red);
            }
            if (ref.watch(addToCartControllerProvider).status ==
                AddToCartStateStatus.success) {
              Fluttertoast.showToast(
                  msg: AppStrings().productAddedSuccessfully,
                  backgroundColor: Colors.green);
            }
          });

          //this list refer to loaded data if the state is loaded and refers to old loaded data if state is loading
          List<ProductModel> dataList = [];
          bool isLoading = false;
          if (state.status == ProductsStateStatus.loading) {
            dataList = state.oldDataList;
            isLoading = true;
          } else if (state.status == ProductsStateStatus.error) {
            dataList = state.oldDataList;
          } else if (state.status == ProductsStateStatus.loaded) {
            dataList = state.dataList;
          }

          if (state.isFirstFetched &&
              state.status == ProductsStateStatus.error) {
            return Center(
              child: ElevatedButton(
                  onPressed: () {
                    fetchPaginatedData();
                  },
                  child: Text(AppStrings().retry)),
            );
          } else if (dataList.isEmpty) {
            return Center(
              child: Text(AppStrings().noPostData),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .75,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h,
                    ),
                    controller: scrollController,
                    padding: EdgeInsets.all(15.sp),
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                        final singlePost = dataList[index];
                        return ProductItem(singlePost);
                    },
                  ),
                ),
                Visibility(
                    visible: isLoading,
                    child: Builder(builder: (context){
                  if(isLoading){
                    Timer(const Duration(milliseconds: 30), () {
                      scrollController
                          .jumpTo(scrollController.position.maxScrollExtent);
                    });
                  }
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }))
              ],
            );
          }
        },
      ),
    );
  }
}
