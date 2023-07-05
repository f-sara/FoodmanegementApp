import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:work1/list.dart';

class FoodAdd extends StatefulWidget {
  const FoodAdd({Key? key}) : super(key: key);
  

  @override
  FoodAddState createState() => FoodAddState();
}

class FoodAddState extends State<FoodAdd> {
  DateTime? selectedDate;
  TextEditingController textFieldController1 = TextEditingController();
  //TextEditingController textFieldController2 = TextEditingController();

  void push(BuildContext context) {
    context.push('/0');
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showModalBottomSheet<DateTime>(
      context: context,
      builder: (BuildContext builder) {
        return SizedBox(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime.now(),
            dateOrder: DatePickerDateOrder.ymd,
            onDateTimeChanged: (DateTime newDate) {
              setState(() {
                selectedDate = newDate;
              });
            },
          ),
        );
      },
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      title: const Text(
        '食材追加',
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.black),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      appBar: appBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => context.push('/foodlist'),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: imagesave != null
                  ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: imagesave!)
                  : const Icon(
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
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                controller: textFieldController1,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                    hintText: '食材名を入力', border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 65,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: GestureDetector(
                onTap: () => selectDate(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      hintText: '日付を選択',
                      border: InputBorder.none,
                    ),
                    //controller: textFieldController2,
                    controller: TextEditingController(
                      text: selectedDate != null
                          ? '${selectedDate!.year}/${selectedDate!.month}/${selectedDate!.day}'
                          : '',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                push(context);
                reizouko.add(imagesave!);
                reizoukoTexts.add(textFieldController1.text);
                //reizoukolimit.add(textFieldController2.text as DateTime);
                reizoukotimer.add(timerImages[0]);
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 231, 209, 176),
                minimumSize: const Size(170, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999)),
              ),
              child: const Text(
                '追加',
                style: TextStyle(fontSize: 20),
                
              ),
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
