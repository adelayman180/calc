import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import './home_page.dart';

class MakeButton extends StatelessWidget {
  final String title;
  MakeButton(this.title);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        shape: Border.all(width: 0.6, color: Colors.black54),
        color: double.tryParse(title) == null
            ? title == '.' ? Color(0xffdddddd) : Colors.orange[600]
            : Color(0xffdddddd),
        onPressed: () {
          if (title != '=' && DeleteButton.resetTextField) {
            controller.clear();
            DeleteButton.resetTextField = false;
          }
          switch (title) {
            case '×':
              controller.text += '*';
              break;
            case '÷':
              controller.text += '/';
              break;
            case '=':
              eval();
              break;
            default:
              controller.text += title;
          }
          if (title != '=')
            scrollController.position.jumpTo(scrollController.offset + 25);
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 40,
              color: double.tryParse(title) == null
                  ? title == '.' ? Colors.black45 : Colors.white
                  : Colors.black45,
              fontFamily: 'Sawasdee'),
        ),
      ),
    );
  }

  void eval() {
    if (!DeleteButton.resetTextField) {
      try {
        Parser paresr = Parser();
        Expression expression = paresr.parse(controller.text);
        double n = expression.evaluate(EvaluationType.REAL,
            ContextModel()..bindVariable(Variable('π'), Number(math.pi)));

        n.toString().contains('.0')
            ? controller.text = n.toInt().toString()
            : controller.text = n.toString();
      } catch (_) {
        controller.text = 'Error';
      }
    }
    DeleteButton.resetTextField = true;
    scrollController.position.jumpTo(0);
  }
}

class MakeButton2 extends StatelessWidget {
  final String title;
  MakeButton2(this.title);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        shape: Border.all(width: 0.6, color: Colors.black54),
        color: Color(0xffdddddd),
        onPressed: () {
          if (DeleteButton.resetTextField) {
            controller.clear();
            DeleteButton.resetTextField = false;
          }
          switch (title) {
            case '√':
              controller.text += 'sqrt';
              break;
            default:
              controller.text += title;
          }
          scrollController.position.jumpTo(scrollController.offset + 60);
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 35, fontFamily: 'Sawasdee', color: Colors.black45),
        ),
      ),
    );
  }
}
