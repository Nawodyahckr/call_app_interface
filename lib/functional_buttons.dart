import 'package:flutter/material.dart';

class FunctionalButton extends StatefulWidget {
  final title;
  final icon;
  final Function() onPressed;

  const FunctionalButton({Key key, this.title, this.icon, this.onPressed})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FunctionalButtonState();
  }
}

class _FunctionalButtonState extends State<FunctionalButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RawMaterialButton(
          onPressed: widget.onPressed,
          splashColor: Colors.deepPurpleAccent,
          fillColor: Colors.white,
          elevation: 15.0,
          shape: CircleBorder(side: BorderSide(color: Colors.deepPurpleAccent)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              widget.icon,
              size: 30,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2.0),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 15, color: Colors.deepPurpleAccent),
          ),
        )
      ],
    );
  }
}
