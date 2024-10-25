import 'package:first_project/contentPage.dart';
import 'package:first_project/register.dart';
import 'package:first_project/api/shopPage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LikePage()
    );
  }
}

