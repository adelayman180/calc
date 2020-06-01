import 'package:flutter/material.dart';
import './buttons.dart';

class SecondPage extends StatelessWidget {
  final bool rotate;
  SecondPage(this.rotate);
  @override
  Widget build(BuildContext context) {
    return rotate
        ? Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton2('sin'),
                    MakeButton2('cos'),
                    MakeButton2('tan'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton2('ln'),
                    MakeButton2('log'),
                    MakeButton2('%'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton2('π'),
                    MakeButton2('e'),
                    MakeButton2('^'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton2('('),
                    MakeButton2(')'),
                    MakeButton2('√'),
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
                    MakeButton2('sin'),
                    MakeButton2('cos'),
                    MakeButton2('tan'),
                    MakeButton2('π'),
                    MakeButton2('%'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MakeButton2('ln'),
                    MakeButton2('log'),
                    MakeButton2('e'),
                    MakeButton2('^'),
                    MakeButton2('√'),
                  ],
                ),
              ),
            ],
          );
  }
}
