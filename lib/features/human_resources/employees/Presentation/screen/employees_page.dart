import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeesBloc/employees_bloc.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/widgets/contact_card_widget.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/widgets/default_appbar_employees_page.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/widgets/searching_appbar.dart';

class EmployeesPage extends StatelessWidget {
  EmployeesPage({super.key});
  final Seeker = TextEditingController();

  @override
  Widget build(BuildContext context) {
    context.read<EmployeesBloc>().getEmployees();
    context.read<EmployeesBloc>().add(EmployeesEvent.getAllEvent());
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
                        child: ContactWidget(
                          employee: state.employees[index],
                          idEmployee: index,
                          SelectedCard: context
                              .read<EmployeesBloc>()
                              .selectedCard[index],
                          idCard: index,
                        ),
                      );
                    },
                  )
                : (state is Searching)
                ? ListView.builder(
                    itemCount: state.employees.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ContactWidget(
                          employee: state.employees[index],
                          idEmployee: index,
                          SelectedCard: context
                              .read<EmployeesBloc>()
                              .selectedCard[index],
                          idCard: index,
                        ),
                      );
                    },
                  )
                : (state is Deleting)
                ? ListView.builder(
                    itemCount: state.employees.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ContactWidget(
                          employee: state.employees[index],
                          idEmployee: state.employees[index].id!,
                          SelectedCard: context
                              .read<EmployeesBloc>()
                              .selectedCard[index],
                          idCard: index,
                        ),
                      );
                    },
                  )
                : (state is Loading)
                ?  Center(
                  child: CircularProgressIndicator(),
                )
                : SizedBox.shrink(),
          ),
          bottomNavigationBar: (state is Deleting)
              ? SizedBox(
                
                  height: 0.1.sh,
                  child: MaterialButton(
                    shape: AppBorder.NavBarBorder,
                    color: AppColor.appBarBackground,
                    onPressed: () {
                      context.read<EmployeesBloc>().add(
                        EmployeesEvent.deleteMarkedEvent(),
                      );
                    },
                    child: Text("Borrar",
                    style: AppTextStyle().appBarTitle,),
                  ),
                )
              : SizedBox.shrink(),
        );
      },
    );
  }
}
