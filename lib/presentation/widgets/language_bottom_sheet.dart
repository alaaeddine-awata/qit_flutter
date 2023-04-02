import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_preferences.dart';
import '../../app/dependency_injection.dart';
import '../resources/resources.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  LanguageType? selectedLanguage;
  final AppPreferences _appPreferences = instance<AppPreferences>();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r))),
        height: MediaQuery.of(context).size.height * .2,
        child: Padding(
          padding: EdgeInsets.all(30.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings().chooseAppLanguage,
                style: getBoldStyle(
                    color: Colors.black, fontSize: 18.sp),
              ),
              SizedBox(
                height: 9.h,
              ),
              LanguageDropdownButton2(
                  hint: EasyLocalization.of(context)?.currentLocale ==
                      ARABIC_LOCAL
                      ? LanguageType.ARABIC.getName()
                      : LanguageType.ENGLISH.getName(),
                  hintColor: Colors.black,
                  value: selectedLanguage,
                  dropdownItems: LanguageType.values,
                  onChanged: (v) {
                    setState(() {
                      selectedLanguage = v;
                      _appPreferences.setAppLanguage(
                          lang: v?.getValue() ?? '');
                      if (EasyLocalization.of(context)
                          ?.locale
                          .languageCode !=
                          v?.getValue()) {
                        EasyLocalization.of(context)?.setLocale(
                            v?.getLocal() ?? ENGLISH_LOCAL);
                        resetAllModules();
                        Navigator.of(context).pop();
                      } else {
                        Navigator.of(context).pop();
                      }
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageDropdownButton2 extends StatelessWidget {
  final String hint;
  final Color? hintColor;
  final LanguageType? value;
  final List<LanguageType> dropdownItems;
  final ValueChanged<LanguageType?>? onChanged;
  final DropdownButtonBuilder? selectedItemBuilder;
  final Alignment? hintAlignment;
  final Alignment? valueAlignment;
  final double? buttonHeight, buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonDecoration;
  final int? buttonElevation;
  final Widget? icon;
  final double? iconSize;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final double? itemHeight;
  final EdgeInsetsGeometry? itemPadding;
  final double? dropdownHeight, dropdownWidth;
  final EdgeInsetsGeometry? dropdownPadding;
  final BoxDecoration? dropdownDecoration;
  final int? dropdownElevation;
  final Radius? scrollbarRadius;
  final double? scrollbarThickness;
  final bool? scrollbarAlwaysShow;
  final Offset? offset;

  const LanguageDropdownButton2({
    required this.hint,
    required this.value,
    required this.dropdownItems,
    required this.onChanged,
    this.selectedItemBuilder,
    this.hintAlignment,
    this.valueAlignment,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonElevation,
    this.icon,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownPadding,
    this.dropdownDecoration,
    this.dropdownElevation,
    this.scrollbarRadius,
    this.scrollbarThickness,
    this.scrollbarAlwaysShow,
    this.offset,
    Key? key,
    this.hintColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<LanguageType>(
        //To avoid long text overflowing.
        isExpanded: true,
        hint: Container(
          alignment: hintAlignment,
          child: Text(
            hint,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: getRegularStyle(
                color: hintColor ?? ColorManager.grey, fontSize: 15.sp),
          ),
        ),
        value: value,
        items: dropdownItems
            .map((item) => DropdownMenuItem<LanguageType>(
          value: item,
          child: Container(
            alignment: valueAlignment,
            child: Text(
              item.getName(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: getRegularStyle(
                  color: Colors.black, fontSize: 15.sp),
            ),
          ),
        ))
            .toList(),
        onChanged: onChanged,
        selectedItemBuilder: selectedItemBuilder,
        icon: icon ?? const Icon(Icons.keyboard_arrow_down),
        iconSize: iconSize ?? 14.sp,
        iconEnabledColor: iconEnabledColor ?? ColorManager.grey,
        iconDisabledColor: iconDisabledColor ?? ColorManager.grey,
        buttonHeight: buttonHeight ?? 49.h,
        buttonWidth: buttonWidth,
        buttonPadding: buttonPadding ??
            EdgeInsets.only(left: 17.w, right: 17.w),
        buttonDecoration: buttonDecoration ??
            BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(11.r),
              boxShadow: [
                BoxShadow(
                    blurRadius: 6.sp,
                    offset: Offset(0.0, 4.h),
                    color: Colors.black.withAlpha(14),
                    blurStyle: BlurStyle.outer),
              ],
            ),
        buttonElevation: buttonElevation,
        itemHeight: itemHeight ?? 49.h,
        itemPadding: itemPadding ??
            EdgeInsets.only(left: 17.w, right: 17.w),
        //Max height for the dropdown menu & becoming scrollable if there are more items. If you pass Null it will take max height possible for the items.
        dropdownMaxHeight: dropdownHeight ?? 200.h,
        dropdownPadding: dropdownPadding,
        dropdownDecoration: dropdownDecoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(11.r),
            ),
        dropdownElevation: dropdownElevation ?? 4.sp.toInt(),
        scrollbarRadius: scrollbarRadius ?? const Radius.circular(40),
        scrollbarThickness: scrollbarThickness,
        scrollbarAlwaysShow: scrollbarAlwaysShow,
        //Null or Offset(0, 0) will open just under the button. You can edit as you want.
        offset: offset,
        dropdownOverButton: false, //Default is false to show menu below button
      ),
    );
  }
}
