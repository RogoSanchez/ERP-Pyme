import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabajadores/features/human_resources/Presentation/card_widget.dart';

class HumanResources extends StatelessWidget {
  const HumanResources({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColor.appBarTitle,
          onPressed: () => GoRouter.of(context).go('/home'),
        ),
        centerTitle: true,
        shape: AppBorder.AppBarBorder,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: AppColor.appBarTitle,
          ),
        ],
        title: Text("Recursos Humanos", style: AppTextStyle().appBarTitle),
        backgroundColor: AppColor.primary,
      ),
      body: Container(
        color: AppColor.scaffoldBackground,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppSizeBox.v12,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppCard(
                    icon: (Icons.person),
                    title: "Empleados",
                    route: '/employees',
                  ),
                  AppSizeBox.h10,
                  AppCard(
                    icon: (Icons.watch_later_outlined),
                    title: "Asistencia",
                    iconColor: AppColor.buttonPrimary,
                    route: '/assist',
                  ),
                ],
              ),
              AppSizeBox.v12,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppCard(
                    icon: Icons.calendar_today,
                    title: "Permisos",
                    route: '/permision',
                  ),
                  AppSizeBox.h10,
                  AppCard(
                    icon: Icons.request_quote_sharp,
                    title: "Nómina",
                    iconColor: AppColor.buttonSecondary,
                    route: '/roster',
                  ),
                ],
              ),
              AppSizeBox.v12,

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppCard(
                    icon: Icons.contact_page_outlined,
                    title: "Contrato",
                    route: '/contract',
                  ),
                  AppSizeBox.h10,
                  AppCard(
                    icon: Icons.notifications_none,
                    title: "Notificaciones",
                    iconColor: AppColor.buttonThree,
                    route: '/notification',
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
