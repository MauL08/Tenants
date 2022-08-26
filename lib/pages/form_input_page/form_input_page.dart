import 'package:flutter/material.dart';
import 'package:tenantsapp/core/config/app_config.dart';
import 'package:tenantsapp/widgets/text_field_widget/text_field_widget.dart';

class FormInputPage extends StatelessWidget {
  FormInputPage({Key? key}) : super(key: key);

  var formListrikList = [];
  var formAirList = [];

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(
                'Nama Tenant',
                style: heading3Style,
              ),
              SizedBox(height: 4),
              TextFieldWidget(hint: '', inputType: TextInputType.text),
              SizedBox(height: 16),
              Text(
                'Periode Pemakaian',
                style: heading3Style,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Awal'),
                      SizedBox(height: 4),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(paddingL),
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.08),
                          border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.08),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(paddingL)),
                          child: TextField(
                            textInputAction: TextInputAction.search,
                            textAlignVertical: TextAlignVertical.center,
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            onChanged: (v) {},
                            // controller: state.searchText,
                            style: normalTextStyle,
                            // onSubmitted: (v) {
                            //   state.getOrderList(context, 'all');
                            // },
                            decoration: const InputDecoration(
                              // hintText: "Search by No Order",
                              hintStyle: TextStyle(fontSize: 14),
                              alignLabelWithHint: true,
                              contentPadding: EdgeInsets.all(paddingL),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    's/d',
                    style: heading3Style,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Akhir'),
                      SizedBox(height: 4),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(paddingL),
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.08),
                          border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.08),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(paddingL)),
                          child: TextField(
                            textInputAction: TextInputAction.search,
                            textAlignVertical: TextAlignVertical.center,
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            onChanged: (v) {},
                            // controller: state.searchText,
                            style: normalTextStyle,
                            // onSubmitted: (v) {
                            //   state.getOrderList(context, 'all');
                            // },
                            decoration: const InputDecoration(
                              // hintText: "Search by No Order",
                              hintStyle: TextStyle(fontSize: 14),
                              alignLabelWithHint: true,
                              contentPadding: EdgeInsets.all(paddingL),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Tenant PIC',
                style: heading3Style,
              ),
              SizedBox(height: 4),
              TextFieldWidget(hint: '', inputType: TextInputType.text),
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
                'Form Listrik',
                style: heading3Style,
              ),
              SizedBox(height: 8),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama Panel',
                              style: heading4Style,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextFieldWidget(
                                hint: '', inputType: TextInputType.text),
                          ],
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pencatatan Meteran',
                              style: heading4Style,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextFieldWidget(
                              hint: '',
                              inputType: TextInputType.text,
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Photo',
                              style: heading4Style,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(paddingL),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withOpacity(0.08),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withOpacity(0.08),
                                    ),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                        borderRadius:
                                            BorderRadius.circular(paddingL)),
                                    child: TextField(
                                      textInputAction: TextInputAction.search,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      onChanged: (v) {},
                                      // controller: state.searchText,
                                      style: normalTextStyle,
                                      // onSubmitted: (v) {
                                      //   state.getOrderList(context, 'all');
                                      // },
                                      decoration: const InputDecoration(
                                        // hintText: "Search by No Order",
                                        hintStyle: TextStyle(fontSize: 14),
                                        alignLabelWithHint: true,
                                        contentPadding:
                                            EdgeInsets.all(paddingL),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(10),
                                    primary: COLOR_PRIMARY,
                                  ),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.upload,
                                    size: 28,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: ((context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                }),
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
                'Form Air',
                style: heading3Style,
              ),
              SizedBox(height: 8),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: heading4Style,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextFieldWidget(
                                hint: '', inputType: TextInputType.text),
                          ],
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No. Seri',
                              style: heading4Style,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextFieldWidget(
                                hint: '', inputType: TextInputType.text),
                          ],
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pencatatan Meteran Air',
                              style: heading4Style,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            TextFieldWidget(
                                hint: '', inputType: TextInputType.text),
                          ],
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Photo',
                              style: heading4Style,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(paddingL),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withOpacity(0.08),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withOpacity(0.08),
                                    ),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                        borderRadius:
                                            BorderRadius.circular(paddingL)),
                                    child: TextField(
                                      textInputAction: TextInputAction.search,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      onChanged: (v) {},
                                      // controller: state.searchText,
                                      style: normalTextStyle,
                                      // onSubmitted: (v) {
                                      //   state.getOrderList(context, 'all');
                                      // },
                                      decoration: const InputDecoration(
                                        // hintText: "Search by No Order",
                                        hintStyle: TextStyle(fontSize: 14),
                                        alignLabelWithHint: true,
                                        contentPadding:
                                            EdgeInsets.all(paddingL),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(10),
                                    primary: COLOR_PRIMARY,
                                  ),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.upload,
                                    size: 28,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: ((context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                }),
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
                'TTD Tenant',
                style: heading3Style,
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: (() async {
                  // final pickedImagePath = await ImagePicker()
                  //     .pickImage(source: ImageSource.gallery);
                  // if (pickedImagePath != null) {
                  //   inspect(pickedImagePath);
                  //   subscriptionState.buktiBayarImagePath.value =
                  //       pickedImagePath.path;
                  // }
                }),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(
                        255,
                        175,
                        175,
                        175,
                      ),
                    ),
                  ),
                  padding: const EdgeInsets.all(paddingXL),
                  margin: const EdgeInsets.symmetric(horizontal: padding2XL),
                  width: double.infinity,
                  height: 150,
                  child: Center(
                    child: Icon(
                      Icons.upload,
                      size: 36,
                      color: Colors.grey.shade600,
                    ),
                  ),
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFE95425),
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: heading4Style,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
