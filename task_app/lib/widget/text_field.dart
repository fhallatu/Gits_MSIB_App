import 'package:flutter/material.dart';

class TextSearch extends StatelessWidget {
  const TextSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.indigo[700]),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.indigo[700]),
        prefixIcon: Icon(Icons.search, color: Colors.indigo[700]),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
