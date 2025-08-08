import 'package:app_theme/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.primary),
      drawer: Drawer(
        backgroundColor: AppColor.bodyText,
        child: ListView(
          children: [
            TextButton(
              onPressed: () {
                GoRouter.of(context).push('/hr');
              },
              child: Text("Recursos Humanos"),
            ),
          ],
        ),
      ),
    );
  }
}
