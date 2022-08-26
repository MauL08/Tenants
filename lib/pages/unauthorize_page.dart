import 'package:flutter/material.dart';
import 'package:tenantsapp/pages/login_page/login_page.dart';

class UnauthorizePage extends StatelessWidget {
  const UnauthorizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Session anda telah berakhir, silahkan login kembali.'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
