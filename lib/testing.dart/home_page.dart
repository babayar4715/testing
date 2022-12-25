import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_28/model/model.dart';
import 'package:flutter_application_28/widgets/quiz.dart';
import 'package:flutter_application_28/widgets/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List jooptor = <bool>[];
  List tuurajooptor = <bool>[];
  List katajoopto = <bool>[];

  void teksher(bool value) {
    if (quizder[index].answer == value) {
      jooptor.add(true);
      tuurajooptor.add(true);
    } else {
      jooptor.add(false);
      katajoopto.add(false);
    }
    setState(() {
      if (quizder[index] == quizder.last) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('your scores...'),
                content: Text(
                  'Correct answers ${tuurajooptor.length}.uncorrect answers ${katajoopto.length}',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                        jooptor.clear();
                        Navigator.pop(context);
                      });
                    },
                    child: Text('Try again'),
                  ),
                ],
              );
            });
        index = 0;
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: appBar(),
      body: padding(),
    );
  }

  Padding padding() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: column(),
    );
  }

  Column column() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text(
          quizder[index].question,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        const Spacer(),
        QuizButtom(
          tuurabuttonbu: true,
          baskanda: (maani) {
            teksher(maani);
          },
        ),
        const SizedBox(height: 20),
        QuizButtom(
          tuurabuttonbu: false,
          baskanda: (maani) {
            teksher(maani);
          },
        ),
        const SizedBox(height: 50),
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: jooptor.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return jooptor[index]
                  ? const NewWidget(tuuraicon: true)
                  : const NewWidget(tuuraicon: false);
            },
          ),
        ),
        const SizedBox(height: 30),
        // Row(
        //   children: const [
        //     NewWidget(
        //       tuuraicon: true,
        //     ),
        //     NewWidget(
        //       tuuraicon: false,
        //     ),
        //   ],
        // ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white54,
      title: const Text(
        'the seventh task',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
