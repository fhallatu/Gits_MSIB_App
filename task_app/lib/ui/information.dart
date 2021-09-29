import 'package:flutter/material.dart';
import 'package:task_app/widget/container.dart';

class InformationBar extends StatefulWidget {
  InformationBar({Key? key}) : super(key: key);

  @override
  _InformationBarState createState() => _InformationBarState();
}

class _InformationBarState extends State<InformationBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomContainer(
          height: 50,
          width: 500,
          color: Colors.indigo[700],
          margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(3, 6), blurRadius: 5),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Center(
            child: Text(
              'FLUTTER PHONE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        CustomContainer(
          height: 40,
          width: 500,
          color: Colors.white,
          margin: EdgeInsets.only(left: 15, right: 15),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(3, 6), blurRadius: 5),
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star_border_rounded,
                    color: Colors.indigo,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Status',
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Basic')
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.grid_view_rounded,
                    color: Colors.indigo,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Voucher',
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Basic')
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.indigo,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Poin',
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('0')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
