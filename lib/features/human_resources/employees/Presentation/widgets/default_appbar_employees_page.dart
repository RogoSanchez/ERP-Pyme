import 'package:app_theme/ui/colors.dart';
import 'package:app_theme/ui/theme.dart';
import 'package:app_theme/ui/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeesBloc/employees_bloc.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColor.appBarBackground,

      shape: AppBorder.AppBarBorder,
      title: Text("Empleados", style: AppTextStyle().appBarTitle),
      actions: [
        IconButton(
          onPressed: () {
            context.read<EmployeesBloc>().add(EmployeesEvent.searchEvent(''));
          },
          icon: Icon(Icons.search, color: AppColor.appBarTitle),
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push('/createEmployee');
          },
          icon: Icon(Icons.add, color: AppColor.appBarTitle),
        ),
      ],
    );
  }
}
