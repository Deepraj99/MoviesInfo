import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:moviesinfo/common/screenutil/screenutil.dart';

extensions SizeExtensions on num {
  num get w => ScreenUtil().setWidth(this);
  num get h => ScreenUtil().setHeight(this);
  num get sp => ScreenUtil().setSp(this);
}