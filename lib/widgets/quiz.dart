import 'package:flutter/material.dart';

class QuizButtom extends StatelessWidget {
  const QuizButtom({
    Key? key,
    required this.tuurabuttonbu,
    required this.baskanda,
    // required this.textBtn,
    // required this.colorbtn,
  }) : super(key: key);
  // final String textBtn;
  // final Color colorbtn;
  final bool tuurabuttonbu;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => baskanda(tuurabuttonbu),
        style: ElevatedButton.styleFrom(
          backgroundColor: tuurabuttonbu ? Colors.blue : Colors.red,
        ),
        child: Text(
          tuurabuttonbu ? 'True' : 'False',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
