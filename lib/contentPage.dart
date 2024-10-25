import 'package:first_project/mainPage.dart';
import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage("Myimage/main.jpg"), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                  top: 40,
                  right: 20,
                  child: Icon(
                    Icons.favorite,
                    size: 40,
                    color: Colors.red,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
