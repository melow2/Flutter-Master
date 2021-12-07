import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback selectHandler;

  AnswerButton(this.selectHandler);

  var temp = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: RaisedButton(
          color: Colors.blue,
          child: Text('정답'),
          textColor: Colors.white,
          onPressed: selectHandler,
        ));
  }
}
