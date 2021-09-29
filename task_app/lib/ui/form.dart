import 'package:flutter/material.dart';
import 'package:task_app/model/phone.dart';
import 'package:task_app/widget/text_form_field.dart';

class FormBar extends StatelessWidget {
  const FormBar(this.phone, {Key? key}) : super(key: key);

  final Phone phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
          ),
          CustomTextFormField(
            controller: TextEditingController(text: phone.name),
            labelText: "Nama",
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
          ),
          CustomTextFormField(
            controller: TextEditingController(text: 'Rp. ${phone.harga}'),
            labelText: "Harga",
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
          ),
          CustomTextFormField(
            controller: TextEditingController(text: phone.warna),
            labelText: "Warna",
          ),
        ],
      ),
    );
  }
}
