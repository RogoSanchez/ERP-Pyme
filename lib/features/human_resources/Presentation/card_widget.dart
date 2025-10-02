import 'package:app_theme/ui/colors.dart';
import 'package:app_theme/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class AppCard extends StatelessWidget {
  AppCard({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    required this.route,
  });
  final IconData icon;
  final String title;
  final String route;
  Color? iconColor = AppColor.iconPrimary;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135.h,
      height: 135.h,
      decoration: BoxDecoration(
        color: AppColor.cardBackground,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: MaterialButton(
        shape: AppBorder.ContactBorder,
        onPressed: () => GoRouter.of(context).push(route),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 70.h, color: iconColor),
            Text(title, style: TextStyle(fontSize: 16.8.h)),
          ],
        ),
      ),
    );
  }
}
