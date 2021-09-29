import 'package:flutter/material.dart';
import 'package:task_app/model/phone.dart';
import 'package:task_app/widget/container.dart';

class ImageBar extends StatelessWidget {
  const ImageBar(this.phone, {Key? key}) : super(key: key);

  final Phone phone;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 200,
      width: 500,
      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      child: Image(image: AssetImage(phone.image)),
    );
  }
}
