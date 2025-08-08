import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static final fontFamily = "Poppins";
  // static final fontFamily = GoogleFonts.averiaLibre().fontFamily;
  static const secondaryFontFamily = 'Montserrat';
  static const thirdFontFamily = 'JackRollDemoRegular';

  // Custom text theme overriding material 3 properties.
  // This class has few implemented styles and by default is not applied to the theme.
  TextTheme textTheme(TextTheme theme) => theme.copyWith(
        titleMedium: switchListTile,
      );

  /// Base Text Style
  static final _default = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  /// Display Text Style
  TextStyle get display => _default.copyWith(
        fontSize: 57,
        fontWeight: FontWeight.bold,
        height: 1.12,
        letterSpacing: -0.25,
      );
  TextStyle get emptyData => _default.copyWith(
        fontWeight: FontWeight.w400,
        letterSpacing: -0.25,
      );

  TextStyle get drawerUsername => _default.copyWith(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        height: 1.12,
        letterSpacing: -0.25,
      );

  TextStyle get snackBar => _default.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      );

  TextStyle get onboardTitle => _default.copyWith(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        letterSpacing: -.8,
        height: 1.15,
        fontFamily: fontFamily,
      );

  TextStyle get onboardSubTitle => _default.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        
        height: 1.3,
      );

  TextStyle get appBarTitle => _default.copyWith(
        fontSize: 22.h,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        height: 1.3,
        color: AppColor.appBarTitle
      );

  TextStyle get tableTitle => _default.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        letterSpacing: 0,
        // height: 1.3,
      );

  TextStyle get tabBarSelected => _default.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: AppColor.primary,
        letterSpacing: 0,
        height: 1.3,
      );

  TextStyle get tabBarUnselected => _default.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        letterSpacing: 0,
        height: 1.3,
      );

  TextStyle get frostButton => const TextStyle(
        fontFamily: secondaryFontFamily,
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      );

  TextStyle get searchBar => labelMedium;

  TextStyle get labelMedium => _default.copyWith(
        fontSize: 11,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: AppColor.headerText,
      );

  TextStyle get settings => _default.copyWith(
        fontSize: 11,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        color: AppColor.settingsTitleText,
      );

  TextStyle get switchListTile => _default.copyWith(
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: AppColor.headerText,
      );

  TextStyle get profileEmail => _default.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColor.headerText,
        letterSpacing: -.6,
      );

  TextStyle get categoryCard => _default.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColor.headerText,
        letterSpacing: -.6,
      );

  TextStyle get primaryButtonLeading => _default.copyWith(
        fontSize: 15,
        letterSpacing: -.2,
        fontWeight: FontWeight.w500,
        height: .9,
      );

  TextStyle get primaryButtonTrailing => _default.copyWith(
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get profilePublication => _default.copyWith(
        fontSize: 12,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      );
  TextStyle get textPublication => _default.copyWith(
        fontSize: 12,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
      );
  TextStyle get textButton => _default.copyWith(
        fontSize: 12,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  TextStyle get likesAndChat => _default.copyWith(
        fontSize: 14,
        letterSpacing: 0,
        color: Colors.grey,
        fontWeight: FontWeight.w500,
      );

  TextStyle get dialogTitle => _default.copyWith(
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get petDetailsName => _default.copyWith(
        fontSize: 24,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get petDetailsBreed => _default.copyWith(
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      );

  TextStyle get petDetailsDescription => _default.copyWith(
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      );

  TextStyle get matchTime => _default.copyWith(
        fontSize: 30,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
      );

  TextStyle get newsTitle => _default.copyWith(
        fontSize: 17,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  TextStyle get time => _default.copyWith(
        fontSize: 13,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      );

  TextStyle get squadName => _default.copyWith(
        fontSize: 17,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
      );

  TextStyle get tournamentStatsPlayerTitle => _default.copyWith(
        fontSize: 17,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  TextStyle get tournamentResults => _default.copyWith(
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
      );

  TextStyle get matchResult => _default.copyWith(
        fontSize: 30,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
      );

  TextStyle get matchStatus => _default.copyWith(
        fontSize: 12,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      );

  TextStyle get dateTimeMatch => _default.copyWith(
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get matchSummaryEvent => _default.copyWith(
        fontSize: 13,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get datePicker => _default.copyWith(
        fontSize: 12,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get sliverAppBar => _default.copyWith(
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );

  TextStyle get bottomSheetTitle => _default.copyWith(
        fontSize: 18,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get profileSectionTitle => _default.copyWith(
        fontSize: 15,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
      );

  TextStyle get subscriptionPrice => _default.copyWith(
        fontSize: 15,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
      );

  TextStyle get teamMatch => _default.copyWith(
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get a =>
      GoogleFonts.poppins(decoration: TextDecoration.none);

  static TextStyle get a10400 => a.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 10,
      );

  static TextStyle get a10500 => a.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 10,
      );

  static TextStyle get a10600 => a.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 10,
      );

  static TextStyle get a10600Gray => a10600.copyWith(color: AppColor.gray);

  static TextStyle get a10700 => a.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 10,
      );

  static TextStyle get a10700Gray => a10700.copyWith(color: AppColor.gray);

  static TextStyle get a12400 => a.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 12,
      );

  static TextStyle get a12400Gray => a12400.copyWith(color: AppColor.gray);

  static TextStyle get a12500 => a.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get a12600 => a.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 12,
      );

  static TextStyle get a12700 => a.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 12,
      );

  static TextStyle get a12700Gray => a12700.copyWith(color: AppColor.gray);

  static TextStyle get a14400 =>
      a.copyWith(fontWeight: FontWeight.w400, fontSize: 14);

  static TextStyle get a14400Gray => a14400.copyWith(color: AppColor.gray);

  static TextStyle get a14500 =>
      a.copyWith(fontWeight: FontWeight.w500, fontSize: 14);

  static TextStyle get a14700 =>
      a.copyWith(fontWeight: FontWeight.w700, fontSize: 14);

  static TextStyle get a14700Gray => a.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: AppColor.gray,
      );

  static TextStyle get a16400 =>
      a.copyWith(fontWeight: FontWeight.w400, fontSize: 16);

  static TextStyle get a16500 =>
      a.copyWith(fontWeight: FontWeight.w500, fontSize: 16);


  static TextStyle get a16600 =>
      a.copyWith(fontWeight: FontWeight.w600, fontSize: 16);

  static TextStyle get a16700 =>
      a.copyWith(fontWeight: FontWeight.w700, fontSize: 16);

  static TextStyle get a17500 =>
      a.copyWith(fontWeight: FontWeight.w500, fontSize: 17);

  static TextStyle get a17700 =>
      a.copyWith(fontWeight: FontWeight.w700, fontSize: 17);

  static TextStyle get a20500 =>
      a.copyWith(fontWeight: FontWeight.w500, fontSize: 20);

  static TextStyle get a20600 =>
      a.copyWith(fontWeight: FontWeight.w600, fontSize: 20);

  static TextStyle get a20700 =>
      a.copyWith(fontWeight: FontWeight.w700, fontSize: 20);

  static TextStyle get a24300 => a.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: 24,
      );

  static TextStyle get a24400 => a.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 24,
      );

  static TextStyle get a24600 => a.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );

  static TextStyle get a24700 => a.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 24,
      );

  static TextStyle get a30700 => a.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 30,
      );

  static TextStyle get a34600 => a.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 34,
      );

  static TextStyle get a16400DarkBackground => a16400.copyWith(
        color: AppColor.darkBackground,
      );

  static TextStyle get a14400DarkBackground => a14400.copyWith(
        color: AppColor.darkBackground,
      );

  static TextStyle get a16400TextPrimary => a16400.copyWith(
        color: AppColor.black,
      );

  static TextStyle get a17500White => a17500.copyWith(
        color: AppColor.white,
      );

  static TextStyle get a17500ButtonTextSecondary => a17500.copyWith(
        color: AppColor.buttonTextSecondary,
      );

  static TextStyle get a17500ButtonTextPrimaryDisable => a17500.copyWith(
        color: AppColor.white,
      );

  static TextStyle get a16700Accent => a16700.copyWith(color: AppColor.primary);

 

  static TextStyle a12400DarkBackground(BuildContext context) =>
      a12400.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle get a16400Placeholder => a16400.copyWith(
        color: AppColor.placeholder,
      );

  TextStyle get body =>
      _default.copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  TextStyle get bodyMedium =>
      _default.copyWith(fontSize: 18, fontWeight: FontWeight.w400);

  TextStyle get bodyLarge =>
      _default.copyWith(fontSize: 22, fontWeight: FontWeight.w400);

  TextStyle get title =>
      _default.copyWith(fontSize: 28, fontWeight: FontWeight.w400);

  TextStyle get label =>
      _default.copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  TextStyle headline =
      _default.copyWith(fontSize: 35, fontWeight: FontWeight.w700);
}
