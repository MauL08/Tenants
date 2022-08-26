import 'package:flutter/material.dart';
import 'package:tenantsapp/core/config/app_config.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Text(
              'Menu App',
              style: heading2Style,
            ),
            Column(
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('History'),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Form Input'),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
