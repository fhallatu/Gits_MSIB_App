import 'package:flutter/material.dart';
import 'package:task_app/widget/container.dart';

class PromotionBar extends StatefulWidget {
  PromotionBar({Key? key}) : super(key: key);

  @override
  _PromotionBarState createState() => _PromotionBarState();
}

class _PromotionBarState extends State<PromotionBar> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 200,
      width: 500,
      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
      boxShadow: [
        BoxShadow(color: Colors.grey, offset: Offset(3, 6), blurRadius: 5),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      child: Image(
        image: AssetImage('assets/images/apple_ipad_pro.png'),
      ),
    );
  }
}
