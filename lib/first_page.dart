import 'package:flutter/material.dart';
import './buttons.dart';

class FirstPage extends StatelessWidget {
  final bool rotate;
  FirstPage(this.rotate);
  @override
  Widget build(BuildContext context) {
    return rotate
        ? Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton('7'),
                    MakeButton('8'),
                    MakeButton('9'),
                    MakeButton('÷')
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton('4'),
                    MakeButton('5'),
                    MakeButton('6'),
                    MakeButton('×')
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton('1'),
                    MakeButton('2'),
                    MakeButton('3'),
                    MakeButton('-')
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton('.'),
                    MakeButton('0'),
                    MakeButton('='),
                    MakeButton('+')
                  ],
                ),
              ),
            ],
          )
        : Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton('7'),
                    MakeButton('8'),
                    MakeButton('9'),
                    MakeButton('('),
                    MakeButton(')'),
                    MakeButton('×')
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton('4'),
                    MakeButton('5'),
                    MakeButton('6'),
                    MakeButton('.'),
                    MakeButton('÷'),
                    MakeButton('-'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton('1'),
                    MakeButton('2'),
                    MakeButton('3'),
                    MakeButton('0'),
                    MakeButton('='),
                    MakeButton('+'),
                  ],
                ),
              ),
            ],
          );
  }
}
