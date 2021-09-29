import 'package:flutter/material.dart';
import 'package:task_app/model/phone.dart';
import 'package:task_app/widget/container.dart';
import 'package:task_app/widget/text_field.dart';

import '../widget/appbar.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundcolor: Colors.indigo[700],
        title: Stack(
          children: <Widget>[
            CustomContainer(
              height: 35,
              child: TextSearch(),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.favorite_border, color: Colors.white),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.mail_outline, color: Colors.white),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return CustomContainer(
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
            child: Wrap(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Card(
                      child: Image(
                        image: AssetImage(phone[index].image),
                        height: 125,
                        width: 170,
                      ),
                    ),
                    Center(
                      child: Text(
                        phone[index].name,
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
                            builder: (context) => Details(phone[index]),
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
              ],
            ),
          );
        },
        itemCount: phone.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(phone[2]),
            ),
          );
        },
        backgroundColor: Colors.indigo,
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
