import 'package:flutter/material.dart';
import 'package:task_app/model/phone.dart';
import 'package:task_app/ui/form.dart';
import 'package:task_app/ui/image.dart';
import 'package:task_app/widget/appbar.dart';

class Details extends StatelessWidget {
  const Details(this.phone, {Key? key}) : super(key: key);

  final Phone phone;

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
          ImageBar(phone),
          FormBar(phone),
        ],
      ),
    );
  }
}
