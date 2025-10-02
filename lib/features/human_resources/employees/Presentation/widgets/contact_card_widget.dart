import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pyme_erp/features/human_resources/employees/Presentation/blocs/employeesBloc/employees_bloc.dart';
import 'package:pyme_erp/features/human_resources/employees/domain/entities/employee.dart';

// ignore: must_be_immutable
class ContactWidget extends StatelessWidget {
  ContactWidget({
    super.key,
    this.employeeImage,
    required this.employee,
    required this.idEmployee,
    required this.SelectedCard,
    required this.idCard,
  });
  final Employee employee;
  final AssetImage? employeeImage;
  final int idEmployee;
  final int idCard;
  bool SelectedCard;

  @override
  Widget build(BuildContext context) {
    debugPrint('$SelectedCard');

    return Container(
      height: 0.105.sh,
      width: 0.65.sw,
      decoration: BoxDecoration(
        color: (!SelectedCard) ? AppColor.background : AppColor.cardSlected,
        borderRadius: AppBorder.AppBoxBorder,
      ),
      child: MaterialButton(
        shape: AppBorder.ContactBorder,
        onLongPress: () {
          context.read<EmployeesBloc>().add(
            EmployeesEvent.markEmployee(idEmployee, idCard),
          );
        },
        onPressed: () {
          GoRouter.of(context).push('/editEmployee/${employee.id}');
        },
        child: Padding(
          padding: EdgeInsets.only(left: 0.01.sw, right: 0.01.sw),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    employeeImage ?? AssetImage('assets/images/contact.png'),
              ),
              AppSizeBox.h12,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSizeBox.v12,
                  Expanded(
                    child: SizedBox(
                      width: 0.65.sw,
                      child: Text(
                        employee.name,
                        style: AppTextStyle.a20700.copyWith(fontSize: 17.sp),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 0.65.sw, // Ajusta este valor según necesites
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          employee.phone!,
                          style: AppTextStyle.a.copyWith(fontSize: 0.035.sw),
                        ),
                        Text(
                          'Comunnity Manager',
                          style: AppTextStyle.a.copyWith(fontSize: 0.035.sw),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
