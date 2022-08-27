import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tenantsapp/core/config/app_config.dart';
import 'package:tenantsapp/widgets/text_field_widget/text_field_widget.dart';

class FormInputPage extends StatefulWidget {
  FormInputPage({Key? key}) : super(key: key);

  @override
  State<FormInputPage> createState() => _FormInputPageState();
}

class _FormInputPageState extends State<FormInputPage> {
  var formListrikList = <Widget>[];
  var formAirList = <Widget>[];

  var localImage = '';
  var localImageForm = '';

  DateTime dateAwal = DateTime(2022, 1, 1);
  DateTime dateAkhir = DateTime(2022, 1, 1);

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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            style: normalTextStyle,
                            decoration: InputDecoration(
                              enabled: false,
                              hintText:
                                  "${dateAwal.day}/${dateAwal.month}/${dateAwal.year}",
                              hintStyle: TextStyle(fontSize: 14),
                              alignLabelWithHint: true,
                              contentPadding: EdgeInsets.all(paddingL),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          DateTime? newDateAwal = await showDatePicker(
                            context: context,
                            initialDate: dateAwal,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );
                          if (newDateAwal == null) return;
                          setState(() {
                            dateAwal = newDateAwal;
                          });
                        },
                        child: Text('Pilih Tanggal'),
                      )
                    ],
                  ),
                  Text(
                    's/d',
                    style: heading3Style,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            style: normalTextStyle,
                            decoration: InputDecoration(
                              enabled: false,
                              hintText:
                                  "${dateAkhir.day}/${dateAkhir.month}/${dateAkhir.year}",
                              hintStyle: TextStyle(fontSize: 14),
                              alignLabelWithHint: true,
                              contentPadding: EdgeInsets.all(paddingL),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          DateTime? newDateAkhir = await showDatePicker(
                            context: context,
                            initialDate: dateAkhir,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );
                          if (newDateAkhir == null) return;
                          setState(() {
                            dateAkhir = newDateAkhir;
                          });
                        },
                        child: Text('Pilih Tanggal'),
                      )
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
                itemCount: formListrikList.length,
                itemBuilder: (context, index) {
                  return formListrikWidget(context, index);
                },
                separatorBuilder: ((context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                }),
              ),
              formListrikList.isEmpty
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          formListrikList.add(
                            formListrikWidget(context, 0),
                          );
                        });
                      },
                      child: Text('Tambah Form'),
                    )
                  : Container(),
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
                itemCount: formAirList.length,
                itemBuilder: (context, index) {
                  return formAirWidget(context, index);
                },
                separatorBuilder: ((context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                }),
              ),
              formAirList.isEmpty
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          formAirList.add(
                            formAirWidget(context, 0),
                          );
                        });
                      },
                      child: Text('Tambah Form'),
                    )
                  : Container(),
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
                  final pickedImagePath = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  if (pickedImagePath != null) {
                    final croppedImage = await ImageCropper().cropImage(
                      sourcePath: pickedImagePath.path,
                      aspectRatio: const CropAspectRatio(
                        ratioX: 350,
                        ratioY: 170,
                      ),
                      compressQuality: 100,
                    );
                    setState(() {
                      localImage = croppedImage!.path;
                    });
                  }
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
                    child: localImage == ''
                        ? Icon(
                            Icons.upload,
                            size: 36,
                            color: Colors.grey.shade600,
                          )
                        : Image.file(
                            File(localImage),
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

  Widget formListrikWidget(BuildContext context, int index) {
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
              TextFieldWidget(hint: '', inputType: TextInputType.text),
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
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  localImageForm == ''
                      ? Image.asset('assets/images/blank_image_long.png')
                      : Container(
                          height: 200,
                          width: 200,
                          child: Image.file(
                            File(localImageForm),
                            fit: BoxFit.cover,
                          ),
                        ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      primary: COLOR_PRIMARY,
                    ),
                    onPressed: () async {
                      final pickedImagePath = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (pickedImagePath != null) {
                        final croppedImage = await ImageCropper().cropImage(
                          sourcePath: pickedImagePath.path,
                          aspectRatio: const CropAspectRatio(
                            ratioX: 200,
                            ratioY: 200,
                          ),
                          compressQuality: 100,
                        );
                        setState(() {
                          localImageForm = croppedImage!.path;
                        });
                      }
                    },
                    child: const Icon(
                      Icons.upload,
                      size: 28,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              formListrikList.length < 3
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          formListrikList.add(
                            formListrikWidget(context, index),
                          );
                        });
                      },
                      child: Text('Tambah Form'),
                    )
                  : Container(),
              SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 17, 0),
                ),
                onPressed: () {
                  setState(() {
                    formListrikList.removeAt(index);
                  });
                },
                child: Text('Hapus Form'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget formAirWidget(BuildContext context, int index) {
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
              TextFieldWidget(hint: '', inputType: TextInputType.text),
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
              TextFieldWidget(hint: '', inputType: TextInputType.text),
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
              TextFieldWidget(hint: '', inputType: TextInputType.text),
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
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  localImageForm == ''
                      ? Image.asset('assets/images/blank_image_long.png')
                      : Container(
                          height: 200,
                          width: 200,
                          child: Image.file(
                            File(localImageForm),
                            fit: BoxFit.cover,
                          ),
                        ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      primary: COLOR_PRIMARY,
                    ),
                    onPressed: () async {
                      final pickedImagePath = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (pickedImagePath != null) {
                        final croppedImage = await ImageCropper().cropImage(
                          sourcePath: pickedImagePath.path,
                          aspectRatio: const CropAspectRatio(
                            ratioX: 200,
                            ratioY: 200,
                          ),
                          compressQuality: 100,
                        );
                        setState(() {
                          localImageForm = croppedImage!.path;
                        });
                      }
                    },
                    child: const Icon(
                      Icons.upload,
                      size: 28,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              formAirList.length < 3
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          formAirList.add(
                            formAirWidget(context, index),
                          );
                        });
                      },
                      child: Text('Tambah Form'),
                    )
                  : Container(),
              SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 17, 0),
                ),
                onPressed: () {
                  setState(() {
                    formAirList.removeAt(index);
                  });
                },
                child: Text('Hapus Form'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
