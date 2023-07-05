import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Start extends StatelessWidget {
  const Start({super.key});

    push(BuildContext context) {
    context.push('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      appBar: AppBar(
        title: const Text('ログイン', style: TextStyle(color: Colors.black),),
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'ユーザー名',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'パスワード',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                context.push('/home');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('ログイン'),
            ),
          ],
        ),
      ),
    );
  }
}

