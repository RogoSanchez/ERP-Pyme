import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeesBloc/employees_bloc.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/widgets/contact_card_widget.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/widgets/default_appbar_employees_page.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/widgets/searching_appbar.dart';

class EmployeesPage extends StatelessWidget {
  EmployeesPage({super.key});
  final Seeker = TextEditingController();
  static bool _loaded = false; // bandera estática

  @override
  Widget build(BuildContext context) {
    if (!_loaded) {
        context.read<EmployeesBloc>().getEmployees();
      context.read<EmployeesBloc>().add(EmployeesEvent.getAllEvent());
      _loaded = true;
    }
    return BlocBuilder<EmployeesBloc, EmployeesState>(
      builder: (context, state) {
        return Scaffold(
          appBar: (state is Searching)
              ? SearchingAppBar(seeker: Seeker)
              : DefaultAppBar(),
          body: Container(
            color: AppColor.scaffoldBackground,
            child: (state is Loaded)
                ? ListView.builder(
                    itemCount: state.employees.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ContactWidget(employee: state.employees[index]),
                      );
                    },
                  )
                : (state is Searching) 
                ? ListView.builder(
                    itemCount: state.employees.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ContactWidget(employee: state.employees[index]),
                      );
                    },
                  )
                : SizedBox.shrink()
          ),
        );
      },
    );
  }
}
