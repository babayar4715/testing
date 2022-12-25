import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.tuuraicon,
  }) : super(key: key);
  final bool tuuraicon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      tuuraicon ? Icons.check : Icons.close,
      color: tuuraicon ? Colors.green : Colors.red,
    );
  }
}
