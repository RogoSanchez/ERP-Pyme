import 'package:app_theme/app_theme.dart';
import 'package:app_theme/ui/colors.dart';
import 'package:app_theme/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeesBloc/employees_bloc.dart';

class SearchingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchingAppBar({super.key, required this.seeker});
  final TextEditingController seeker;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColor.appBarBackground,

      shape: AppBorder.AppBarBorder,
      
      actions: [
        SizedBox(
          width: 0.7.sw,
          child: TextField(
            style: AppTextStyle().appBarTitle.copyWith(
              fontSize: 20.sp
            ),
            decoration: InputDecoration(
              hint: Text("Buscar",
              
              style: AppTextStyle().appBarTitle)
              
            ),
            controller: seeker,
            onChanged: (value) => context.read<EmployeesBloc>().add(
              EmployeesEvent.searchEvent(seeker.text),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            context.read<EmployeesBloc>().add(EmployeesEvent.getAllEvent());
          },
          icon: Icon(Icons.arrow_back_ios_new, color: AppColor.appBarTitle),
        ),
      ],
    );
  }
}
