import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//
// 画面 B
//
class Genre extends StatelessWidget {
  const Genre({super.key});

  // 進むボタンを押したとき
  push(BuildContext context) {
    // 画面 C へ進む
    context.push('/c');
  }

  // 戻るボタンを押したとき
  back(BuildContext context) {
    // 前の画面 へ戻る
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: const Color.fromARGB(255, 231, 209, 176),
      title: const Text(''),
    );

    // 進むボタン
    final goButton = ElevatedButton(
      onPressed: () => push(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text('進む >'),
    );

    // 戻るボタン
    final backButton = ElevatedButton(
      onPressed: () => back(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text('< 戻る'),
    );

    // 画面全体
    return Scaffold(
      appBar: appBar,

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '検索',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
        ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            backButton,
            goButton,
          ],
        ),
      ),
    );
  }
}