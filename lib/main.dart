import 'package:flutter/material.dart';
import 'package:scholar/screens/pdf.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pdf Reader",
       home:PdfScreen(),
    );
  }
}