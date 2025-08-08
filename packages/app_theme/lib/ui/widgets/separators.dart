import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors.dart';
import '../device.dart';

class AppSeparator {
  static Container get v1h24 => Container(
        height: 1.h,
        margin: EdgeInsets.symmetric(horizontal: AppDimen.h24),
        color: AppColor.grayLightBT,
      );

  static Container get v12h12 => Container(
        margin: EdgeInsets.only(top: AppDimen.v12),
        height: AppDimen.v12,
        color: AppColor.grayLightBT,
      );

  static Container get v1 => Container(
        height: 1.h,
        color: AppColor.grayLightBT,
      );

  static Container get v1h12 => Container(
        height: 1.h,
        margin: EdgeInsets.symmetric(horizontal: AppDimen.h12),
        color: AppColor.grayLightBT,
      );
}
