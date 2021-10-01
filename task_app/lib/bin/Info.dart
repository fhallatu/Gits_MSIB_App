import 'package:flutter/material.dart';
import 'package:task_app/model/phone.dart';
import 'package:task_app/ui/form.dart';
import 'package:task_app/ui/image.dart';
import 'package:task_app/widget/appbar.dart';
import 'package:task_app/widget/container.dart';
import 'package:task_app/widget/text_form_field.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundcolor: Colors.indigo[700],
        title: Text(
          'Details',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          CustomContainer(
            color: Colors.white,
            height: 200,
            width: 500,
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  labelText: "Nama",
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  labelText: "Harga",
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  labelText: "Warna",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
