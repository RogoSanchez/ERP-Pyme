import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Different categories a device screen can be associated.
// One could add more types if necessary these three should suffice for most apps
enum ScreenSize {
  mobile,
  tablet,
  desktop;

  T map<T>({required T mobile, required T desktop, required T tablet}) {
    switch (this) {
      case ScreenSize.mobile:
        return mobile;
      case ScreenSize.tablet:
        return tablet;
      case ScreenSize.desktop:
        return desktop;
    }
  }
}

extension ScreenSizeX on BuildContext {
  /// {@macro BreakPoint.screenType}
  // By altering the default value of the breakpoint, one can modify the breakpoint being used.
  ScreenSize screenSize([BreakPoint? breakpoint]) {
    breakpoint ??= BreakPoint.instance;
    return breakpoint.screenType(MediaQuery.of(this).size.shortestSide);
  }

  /// {@macro BreakPoint.isMobile}
  bool get isMobile => screenSize() == ScreenSize.mobile;

  /// {@macro BreakPoint.isTablet}
  bool get isTablet => screenSize() == ScreenSize.tablet;

  /// True if the device screen size is a tablet or desktop.
  bool get isTabletOrLarger =>
      screenSize() == ScreenSize.tablet || screenSize() == ScreenSize.desktop;

  /// {@macro BreakPoint.isDesktop}
  bool get isDesktop => screenSize() == ScreenSize.desktop;

  /// True If the keyboard is visible in the screen
  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom > 100;

  /// Default and responsive horizontal padding that lists and other elements should have in the main view port
  EdgeInsets get responsiveContentPadding {
    final screen = screenSize();
    switch (screen) {
      case ScreenSize.mobile:
      case ScreenSize.tablet:
      case ScreenSize.desktop:
        return const EdgeInsets.symmetric(
          horizontal: 1.0 * Sizes.unit,
          vertical: .5 * Sizes.unit,
        );
    }
  }
}

/// A Breakpoint describes (in density) pixels certain points in which the UI should alter its appeal.
/// If a device screen size is greater than [desktop] it should be presented a desktop layout.
/// if its greater than [tablet] a tablet layout, else a [mobile] layout.
/// These breakpoints help to centralize in a place the different rules we apply to adapt apps
/// to different screen sizes.
///
/// See also [Device] as to segment the user experience based on the actual OS running in the device
/// not just the screen.
class BreakPoint {
  final num tablet;
  final num desktop;

  static BreakPoint? _instance;

  static BreakPoint get instance {
    return _instance ?? const BreakPoint.material();
  }

  /// Changes the default BreakPoint [instance] to [breakPoint].
  static void setDefaultBreakPoint(BreakPoint breakPoint) {
    _instance = breakPoint;
  }

  const BreakPoint({required this.tablet, required this.desktop});

  //https://developer.android.com/guide/topics/large-screens/support-different-screen-sizes
  const BreakPoint.android() : this(tablet: 600, desktop: 840);

  // https://m1.material.io/layout/responsive-ui.html#responsive-ui-breakpoints
  const BreakPoint.material() : this(tablet: 600, desktop: 960);

  // https://learn.microsoft.com/en-us/windows/apps/design/layout/screen-sizes-and-breakpoints-for-responsive-design
  const BreakPoint.windows() : this(tablet: 640, desktop: 1007);

  // https://developer.apple.com/design/human-interface-guidelines/foundations/layout/
  const BreakPoint.cupertino() : this(tablet: 767, desktop: 1024);

  /// {@template BreakPoint.isMobile}
  /// True if the device screen size is a mobile device according to a [BreakPoint]
  /// {@endtemplate}
  bool isMobile(double size) => size < tablet;

  /// {@template BreakPoint.isTablet}
  /// True if the device screen size is a tablet according to a [BreakPoint].
  /// {@endtemplate}
  bool isTablet(double size) => size > tablet && size < desktop;

  /// {@template BreakPoint.isDesktop}
  /// True if the device screen size is a tablet according to a [BreakPoint].
  /// {@endtemplate}
  bool isDesktop(double size) => size > desktop;

  /// {@template BreakPoint.screenType}
  /// Returns a devices [ScreenSize] according to it's shortest side in pixels.
  /// Note: that [ScreenSize] only refers to the screen attributes, one could have
  /// a desktop computer with a small screen. So use this only to assist UI decisions.
  /// {@endtemplate}
  ScreenSize screenType(double shortestSide) {
    if (shortestSide > desktop) return ScreenSize.desktop;
    if (shortestSide > tablet) return ScreenSize.tablet;
    return ScreenSize.mobile;
  }
}

///Holds common sizes for icons, images, paddings, corners etc
// Change the base [unit] if necessary to accommodate to the design
class Sizes {
  static const unit = 16;
  static const xxs = 0.125 * unit;
  static const xs = 0.25 * unit;
  static const sm = 0.5 * unit;
  static const md = 0.75 * unit;
  static const lg = unit;
  static const xl = 1.5 * unit;
  static const xxl = 2 * unit;

  /// Edge insets and margins for phone breakpoint size.
  static const double edgeInsetsPhone = sm;

  /// Edge insets and margins for tablet breakpoint size.
  static const double edgeInsetsTablet = md;

  /// Edge insets and margins for desktop and medium desktop breakpoint sizes.
  static const double edgeInsetsDesktop = xl;

  static double responsiveInsets(BuildContext context) {
    final screen = context.screenSize();

    switch (screen) {
      case ScreenSize.mobile:
        return edgeInsetsPhone;
      case ScreenSize.tablet:
        return edgeInsetsTablet;
      case ScreenSize.desktop:
        return edgeInsetsDesktop;
    }
  }
}

/// Workaround to securely asses the underlying Operating System in which the flutter app is executing
// See https://github.com/flutter/flutter/issues/50845
class Device {
  static final isMobileDevice =
      !kIsWeb && (Platform.isIOS || Platform.isAndroid);
  static final isAndroid = !kIsWeb && Platform.isAndroid;
  static final isIOS = !kIsWeb && Platform.isIOS;

  static final isDesktopDevice =
      !kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);
  static final isLinux = !kIsWeb && Platform.isLinux;
  static final isMacOS = !kIsWeb && Platform.isMacOS;
  static final isWindows = !kIsWeb && Platform.isWindows;

  static const isWeb = kIsWeb;
}

class AppDimen {
  static double get screenWidth => 375;

  static double get appBarHeight => 52.h;

  static double get screenHeight => 812;

  static double get fieldHeight => 44.h;

  static double get r2 => 3.r;

  static double get v3 => 3.h;

  static double get r4 => 4.r;

  static double get h4 => 4.w;

  static double get r6 => 6.r;

  static double get v4 => 4.h;

  static double get v6 => 6.h;

  static double get v7 => 7.h;

  static double get v8 => 8.h;

  static double get h8 => 8.w;

  static double get r10 => 10.r;

  static double get h10 => 10.w;

  static double get v10 => 10.h;

  static double get r12 => 12.r;

  static double get r13 => 13.r;

  static double get v12 => 12.h;

  static double get h13 => 12.w;

  static double get v14 => 14.h;

  static double get v20 => 20.h;

  static double get v72 => 72.h;

  static double get h12 => 12.w;

  static double get h16 => 16.w;

  static double get v16 => 16.h;

  static double get h20 => 20.w;

  static double get r20 => 20.r;

  static double get h24 => 24.w;

  static double get v24 => 24.h;

  static double get r24 => 24.r;

  static double get h28 => 28.w;

  static double get h32 => 32.w;

  static double get v38 => 38.w;

  static double get v36 => 36.h;

  static double get h40 => 40.h;

  static double get v40 => 40.h;

  static double get h48 => 48.h;

  static double get h44 => 44.w;

  static double get v44 => 44.h;

  static double get r44 => 44.r;

  static double get h50 => 50.w;

  static double get v60 => 60.h;

  static double get h60 => 60.w;

  static double get h70 => 70.w;

  static double get h71 => 71.w;

  static double get r72 => 72.r;

  static double get h78 => 78.h;

  static double get h80 => 80.w;

  static double get v87 => 87.h;

  static double get h90 => 90.w;

  static double get v100 => 100.h;

  static double get h104 => 104.w;

  static double get h110 => 110.w;

  static double get h176 => 176.w;

  static double get smallButtonWidth => 150.w;

  static double get mediumButtonWidth => 200.w;

  static double get largeButtonWidth => 500.w;

  static double get mediumButtonHeight => 36.w;

  static double get smallButtonHeight => 30.w;

  static double get largeButtonHeight => 44.h;

  static double get searchBarHeight => v60;

  static double get panelHeaderRightWidth => 96.h;

  static double get cellRightWidth => 96.h;

  static double get cellLeftWidth => 96.h;
}

class AppSize {
  static Size get screen => Size(AppDimen.screenWidth, AppDimen.screenHeight);

  static Size get appBar => Size.fromHeight(AppDimen.appBarHeight);

  static Size get searchAppBar =>
      Size.fromHeight(AppDimen.appBarHeight + AppDimen.searchBarHeight);
}
