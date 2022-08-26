import 'package:flutter/material.dart';
import 'package:tenantsapp/core/config/app_config.dart';

class TenantPage extends StatelessWidget {
  const TenantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: COLOR_PRIMARY,
        title: const Text('Nama Tenant'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detail',
                style: heading3Style.copyWith(color: Colors.grey.shade600),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Tenant',
                          style: heading4Style,
                        ),
                        Text('value'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Periode Pemakaian',
                          style: heading4Style,
                        ),
                        Text('value'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tenant PIC',
                          style: heading4Style,
                        ),
                        Text('value'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Divider(
                  thickness: 1,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Detail Listrik',
                style: heading3Style.copyWith(color: Colors.grey.shade600),
              ),
              SizedBox(height: 8),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: 3,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nama Panel',
                              style: heading4Style,
                            ),
                            Text('value'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pencatatan Meteran',
                              style: heading4Style,
                            ),
                            Text('value'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Photo',
                              style: heading4Style,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Show'),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Divider(
                  thickness: 1,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Detail Air',
                style: heading3Style.copyWith(color: Colors.grey.shade600),
              ),
              SizedBox(height: 8),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: 3,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lokasi',
                              style: heading4Style,
                            ),
                            Text('value'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'No. Seri',
                              style: heading4Style,
                            ),
                            Text('value'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pencatatan Meteran Air',
                              style: heading4Style,
                            ),
                            Text('value'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Photo',
                              style: heading4Style,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Show'),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Divider(
                  thickness: 1,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'History Invoice',
                style: heading3Style.copyWith(color: Colors.grey.shade600),
              ),
              SizedBox(height: 18),
              Center(
                child: Text(
                  '-',
                  style: heading3Style.copyWith(color: Colors.grey.shade600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
