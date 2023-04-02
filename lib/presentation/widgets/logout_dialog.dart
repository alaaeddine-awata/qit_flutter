import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_test/app/app_state_manager.dart';
import '../resources/resources.dart';

class LogoutDialog extends StatefulWidget {
 final Function function;
  const LogoutDialog({Key? key, required this.function}) : super(key: key);

  @override
  State<LogoutDialog> createState() => _LogoutDialogState();
}

class _LogoutDialogState extends State<LogoutDialog> {
  bool all = false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      child: SizedBox(
        height: 250.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            children: [
              SizedBox(
                height: 28.h,
              ),
              SizedBox(
                width: 187.w,
                child: Text(
                  '${AppStrings().areYouSureYouWantToLogOut}?',
                  style: getRegularStyle(
                      color: Colors.black, fontSize: 18.sp),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${AppStrings().destroysAllAccessTokensForUser}?',
                      style: getRegularStyle(
                          color: Colors.black, fontSize: 13.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Checkbox(value: all, onChanged: (value){
                    setState(() {
                      all = value as bool;
                    });
                  }),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorManager.secondary.withAlpha(20)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                AppStrings().no,
                                style: getRegularStyle(
                                    color: Colors.black, fontSize: 17.sp),
                              ))),
                      SizedBox(
                        width: 13.w,
                      ),
                      Expanded(
                          child: Consumer(
                            builder: (context,ref,_) {
                              return ElevatedButton(
                                  onPressed: () {
                                    ref.read(appStateManager).logout(all);
                                    widget.function.call();
                                    Navigator.pop(context);
                                  },
                                  child: Text(AppStrings().yes,
                                      style: getRegularStyle(
                                          color: Colors.black,
                                          fontSize: 17.sp)));
                            }
                          )),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}