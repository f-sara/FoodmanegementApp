import 'dart:core';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:work1/list.dart';

class Foodlist extends StatefulWidget {
  const Foodlist({Key? key}) : super(key: key);

  void push(BuildContext context) {
    context.push('/foodlist');
  }


  @override
  FoodlistState createState() => FoodlistState();
}

class FoodlistState extends State<Foodlist> {



  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      title: const Text('アイコンの選択', style: TextStyle(color: Colors.black),),
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.black),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      appBar: appBar,
      
      body: Container(
        margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 列数
            crossAxisSpacing: 30.0, // 横
            mainAxisSpacing: 30.0, // 縦
          ),
          itemCount: iconlist.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                context.push('/food_a');
                imagesave = Image.asset(iconlist[index]);
              },
              child: SizedBox(
                child: Image.asset(iconlist[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
