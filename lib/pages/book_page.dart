import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  @override
  BookPageState createState() => BookPageState();
}

class BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('书单'),
      ),
    );
  }
}
