import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GenreAdd extends StatelessWidget {

  const GenreAdd({Key? key}) : super(key: key);

  void push(BuildContext context) {
    context.push('/genre_a');
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      title: const Text('ジャンル追加', style: TextStyle(color: Colors.black),),
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.black),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      appBar: appBar,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [GestureDetector(
            onTap: () => context.push('/foodlist'),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(15)
              ),
              child:const Icon(
                Icons.camera_alt,
                size: 100,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            height: 65,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 0.2
                ),
              borderRadius: BorderRadius.circular(5)
            ),
            child: const TextField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                hintText: 'ジャンル名を入力',
                border: InputBorder.none
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () => push(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 231, 209, 176),
              minimumSize: const Size(170, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(999)
              ),
            ),
            child: const Text('追加', style: TextStyle(fontSize: 20),),
          ),
          const SizedBox(
            height: 120,
          )
          ],
        ),
      ),
    );
  }
}
