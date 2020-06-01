import 'package:flutter/material.dart';
import './first_page.dart';
import './second_page.dart';

final TextEditingController controller = TextEditingController();
final ScrollController scrollController = ScrollController();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: OrientationBuilder(
        builder: (_, orien) => SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black,
                height: orien == Orientation.portrait
                    ? MediaQuery.of(context).size.height / 5
                    : MediaQuery.of(context).size.height / 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        child: TextField(
                          scrollController: scrollController,
                          controller: controller,
                          enabled: false,
                          readOnly: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(8)),
                          style: TextStyle(fontSize: 35, color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    if (orien == Orientation.landscape)
                      Expanded(child: DeleteButton()),
                  ],
                ),
              ),
              if (orien == Orientation.portrait)
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffdddddd),
                              border: Border.all(
                                  width: 0.6, color: Colors.black54)),
                        ),
                      ),
                      Expanded(
                        child: DeleteButton(),
                      )
                    ],
                  ),
                ),
              Expanded(
                  flex: 8,
                  child: PageView(
                    children: <Widget>[
                      FirstPage(orien == Orientation.portrait),
                      SecondPage(orien == Orientation.portrait)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class DeleteButton extends StatelessWidget {
  static bool resetTextField = false;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(2),
      shape: Border.all(width: 0.6, color: Colors.black54),
      color: Colors.orange[600],
      onPressed: () {
        if (resetTextField) {
          controller.clear();
          resetTextField = false;
        } else if (controller.text.isNotEmpty)
          controller.text =
              controller.text.substring(0, controller.text.length - 1);
      },
      onLongPress: () => controller.clear(),
      child: Text(
        'DELETE',
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontFamily: 'Sawasdee'),
      ),
    );
  }
}
