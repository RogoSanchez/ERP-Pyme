import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trabajadores/features/human_resources/employees/Presentation/blocs/employeesBloc/employees_bloc.dart';
import 'package:trabajadores/features/human_resources/employees/Presentation/widgets/contact_card_widget.dart';

class EmployeesPage extends StatelessWidget {
  EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.appBarBackground,
        leading: BackButton(
          color: AppColor.appBarTitle,
          onPressed: () => GoRouter.of(context).push('/hr'),
        ),
        shape: AppBorder.AppBarBorder,
        title: Text("Empleados", style: AppTextStyle().appBarTitle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: AppColor.appBarTitle),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/createEmployee');
            },
            icon: Icon(Icons.add, color: AppColor.appBarTitle),
          ),
        ],
      ),
      body: Container(
        color: AppColor.scaffoldBackground,
        child: BlocBuilder<EmployeesBloc, EmployeesState>(
          builder: (context, state) {
            context.read<EmployeesBloc>().add(EmployeesEvent.getAllEvent());
            if (state is Loaded) {
              return ListView.builder(
                itemCount: state.employees.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: ContactWidget(employee: state.employees[index]),
                  );
                },
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
