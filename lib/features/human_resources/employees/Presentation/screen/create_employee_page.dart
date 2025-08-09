import 'package:app_theme/ui/colors.dart';
import 'package:app_theme/ui/typography.dart';
import 'package:app_theme/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeeEdit/employee_edit_bloc.dart';

// ignore: must_be_immutable
class CreateEmployee extends StatelessWidget {
  CreateEmployee({super.key, this.id});
  final String? id;
  TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerWork = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (id != null) {
      context.read<EmployeeEditBloc>().add(EmployeeEditEvent.editContact(id!));
    } else {
      context.read<EmployeeEditBloc>().add(EmployeeEditEvent.started());
    }

    return BlocConsumer<EmployeeEditBloc, EmployeeEditState>(
      listener: (context, state) {
        if (state is EditingEmployee) {
          _controllerName = TextEditingController(text: state.employee.name);
          _controllerEmail = TextEditingController(text: state.employee.email);
          _controllerPhone = TextEditingController(text: state.employee.phone);
        }
      },
      builder: (context, state) {
        if (state is LoadingInfo) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        return Scaffold(
          appBar: AppBar(
            title: (state is EditingEmployee)
                ? Text("Editar Empleado", style: AppTextStyle().appBarTitle)
                : Text("Nuevo Empleado", style: AppTextStyle().appBarTitle),
            backgroundColor: AppColor.appBarBackground,
            actions: [
              IconButton(
                onPressed: () {
                  if (state is EditingEmployee) {
                    context.read<EmployeeEditBloc>().UpdateEmployee(
                      id!,
                      _controllerName.text,
                      _controllerPhone.text,
                      _controllerEmail.text,
                    );
                    
                  } else {
                    context.read<EmployeeEditBloc>().add(
                      EmployeeEditEvent.saveContact(
                        _controllerName.text,
                        _controllerPhone.text,
                        _controllerEmail.text,
                      ),
                    );
                  }

                  GoRouter.of(context).go('/employees');
                },
                icon: Icon(Icons.save),
                color: AppColor.appBarTitle,
              ),
            ],
          ),
          body: BlocBuilder<EmployeeEditBloc, EmployeeEditState>(
            builder: (context, state) {
              return SizedBox(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Container(
                          color: AppColor.appBarBackground,
                          width: 1.sw,
                          height: 20,
                        ),
                        Container(
                          width: 1.sw,
                          height: 0.22.sh,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: <double>[0.5, 0.5],
                              colors: <Color>[
                                AppColor.appBarBackground,
                                AppColor.background,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Container(
                              height: 0.5.sh,
                              width: 0.5.sw,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: MaterialButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: CircleAvatar(
                                  radius: 0.25.sw,
                                  backgroundImage: AssetImage(
                                    'assets/images/contact.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        AppSizeBox.v32,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 0.7.sw,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label: Text(
                                        "Nombre",

                                        style: AppTextStyle().onboardSubTitle
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(width: 1),
                                      ),
                                    ),

                                    controller: _controllerName,

                                    onSubmitted: (value) => context
                                        .read<EmployeeEditBloc>()
                                        .add(EmployeeEditEvent.started()),
                                  ),
                                ),
                              ],
                            ),
                            AppSizeBox.v16,
                            SizedBox(
                              width: 0.7.sw,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      label: Text(
                                        "Cargo",
                                        style: AppTextStyle().onboardSubTitle
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(width: 1),
                                      ),
                                    ),

                                    controller: _controllerWork,

                                    onSubmitted: (value) => context
                                        .read<EmployeeEditBloc>()
                                        .add(EmployeeEditEvent.started()),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        AppSizeBox.v16,
                        Expanded(
                          child: SizedBox(
                            width: 1.sw,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 0.7.sw,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label: Text(
                                        "Teléfono",
                                        style: AppTextStyle().onboardSubTitle
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),

                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(width: 1),
                                      ),
                                    ),

                                    controller: _controllerPhone,

                                    onSubmitted: (value) => context
                                        .read<EmployeeEditBloc>()
                                        .add(EmployeeEditEvent.started()),
                                  ),
                                ),
                                AppSizeBox.v16,

                                SizedBox(
                                  width: 0.7.sw,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      label: Text(
                                        "Correo Electrónico",
                                        style: AppTextStyle().onboardSubTitle
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),

                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(width: 1),
                                      ),
                                    ),

                                    controller: _controllerEmail,

                                    onSubmitted: (value) => context
                                        .read<EmployeeEditBloc>()
                                        .add(EmployeeEditEvent.started()),
                                  ),
                                ),

                                AppSizeBox.v16,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
