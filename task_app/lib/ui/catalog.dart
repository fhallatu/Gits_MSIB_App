import 'package:flutter/material.dart';
import 'package:task_app/bin/details.dart';
import 'package:task_app/model/phone.dart';
import 'package:task_app/widget/container.dart';

class CatalogBar extends StatefulWidget {
  CatalogBar({Key? key}) : super(key: key);

  @override
  _CatalogBarState createState() => _CatalogBarState();
}

class _CatalogBarState extends State<CatalogBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        /*child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CustomContainer(
                height: 250,
                width: 175,
                color: Colors.white,
                margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(3, 6), blurRadius: 5),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Image(
                        image: AssetImage(hp[1].image),
                        height: 125,
                        width: 170,
                      ),
                    ),
                    Center(
                      child: Text(
                        hp[1].name,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(hp[0]),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo)),
                      child: Text(
                        'Details',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              CustomContainer(
                height: 250,
                width: 175,
                color: Colors.white,
                margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(3, 6), blurRadius: 5),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Image(
                        image: AssetImage(hp[0].image),
                        height: 125,
                        width: 170,
                      ),
                    ),
                    Center(
                      child: Text(
                        hp[0].name,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(hp[1]),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo)),
                      child: Text(
                        'Details',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),*/
        );
  }
}
