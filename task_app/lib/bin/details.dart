import 'package:flutter/material.dart';
import 'package:task_app/model/phone.dart';

import 'package:task_app/widget/appbar.dart';
import 'package:task_app/widget/text_form_field.dart';

class Details extends StatefulWidget {
  Details({Key? key, this.phone}) : super(key: key);

  final Phone? phone;

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _harga = TextEditingController();
  final TextEditingController _warna = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.phone != null) {
      _name.text = widget.phone!.name;
      _harga.text = widget.phone!.harga!;
      _warna.text = widget.phone!.warna!;
    } else {}
  }

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
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                ),
                CustomTextFormField(
                  controller: _name,
                  labelText: "Nama",
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                ),
                CustomTextFormField(
                  controller: _harga,
                  labelText: "Harga",
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                ),
                CustomTextFormField(
                  controller: _warna,
                  labelText: "Warna",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
