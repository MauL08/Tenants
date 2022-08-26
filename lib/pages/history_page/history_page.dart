import 'package:flutter/material.dart';
import 'package:tenantsapp/core/config/app_config.dart';
import 'package:tenantsapp/pages/drawer_page/drawer_page.dart';
import 'package:tenantsapp/pages/tenant_page/tenant_page.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: COLOR_PRIMARY,
        title: const Text('History'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
        ),
      ),
      drawer: DrawerPage(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          primary: false,
          shrinkWrap: true,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TenantPage();
                  }));
                },
                title: Text(
                  'Nama Tenant',
                  style: heading4Style,
                ),
                subtitle: Text(
                  'jam:mnt: dtk dd-mm-yyyy',
                  style: normalTextStyle.copyWith(
                    fontSize: 11,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Approve SPV',
                        style: normalTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: COLOR_PRIMARY,
                    ),
                  ],
                ),
              ),
            );
          }),
          itemCount: 20,
        ),
      ),
    );
  }
}
