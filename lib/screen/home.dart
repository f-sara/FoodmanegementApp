import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void push(BuildContext context) {
    context.push('/genre_a');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> assetsImages = [
      "assets/images/pic0.png",
      "assets/images/pic1.png",
      "assets/images/pic2.png",
      "assets/images/pic3.png",
    ];

    final List<String> genreTexts = [
      "冷蔵庫",
      "キッチン",
      "食卓",
      "買い置き",
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      body: GridView.count(
        padding: const EdgeInsets.only(top: 120, right: 25, left: 25, bottom: 20),
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 0.83,
        shrinkWrap: true,
        children: List.generate(assetsImages.length, (index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                context.push('/0');
              } else if (index == 1) {
                context.push('/1');
              } else if (index == 2) {
                context.push('/2');
              } else if (index == 3) {
                context.push('/3');
              }
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 135,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 20, right: 20, bottom: 7),
                      child: Image.asset(assetsImages[index]),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        genreTexts[index],
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 74, 74, 74),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
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
    );
  }
}
