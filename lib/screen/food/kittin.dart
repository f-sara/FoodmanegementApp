import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:work1/list.dart';

class Kittin extends StatelessWidget {
  const Kittin({Key? key}) : super(key: key);

  void push(BuildContext context) {
    context.push('/food_a');
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      title: const Text('キッチン', style: TextStyle(color: Colors.black)),
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.black),
    );

    final items = List.generate(kittin.length, (index) {
      final assetsImage = kittin[index];
      Image timerImage = kittintimer[index];
      final genreText = kittinTexts[index];

      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                  bottom: 7,
                ),
                child: Stack(
                  children: [
                    Image.asset(assetsImage),
                    timerImage,
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2.0),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  genreText,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 74, 74, 74),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      appBar: appBar,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        notchMargin: 6.0,
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(
            side: BorderSide(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 124, 124, 124),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 124, 124, 124),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => push(context),
        backgroundColor: const Color.fromARGB(255, 231, 209, 176),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: GridView.count(
        padding: const EdgeInsets.only(top: 20, right: 25, left: 25, bottom: 20),
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 0.83,
        shrinkWrap: true,
        children: items,
      ),
    );
  }
}
