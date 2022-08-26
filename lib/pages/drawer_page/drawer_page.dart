import 'package:flutter/material.dart';
import 'package:tenantsapp/core/config/app_config.dart';
import 'package:tenantsapp/pages/form_input_page/form_input_page.dart';
import 'package:tenantsapp/pages/login_page/login_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            CircleAvatar(
              radius: 84,
              backgroundImage: AssetImage('assets/images/blank_image.png'),
            ),
            SizedBox(height: 16),
            Text(
              'Nama User',
              style: heading4Style,
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Divider(
                thickness: 1,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Menu',
              style: heading2Style.copyWith(color: COLOR_PRIMARY),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormInputPage();
                  }));
                },
                title: Text(
                  'Form Input',
                  style: heading4Style,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                  color: COLOR_PRIMARY,
                ),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
