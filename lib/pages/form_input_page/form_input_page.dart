import 'package:flutter/material.dart';
import 'package:tenantsapp/core/config/app_config.dart';
import 'package:tenantsapp/pages/drawer_page/drawer_page.dart';

class FormInputPage extends StatelessWidget {
  const FormInputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: COLOR_PRIMARY,
        title: Text('Form Input'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
