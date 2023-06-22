import 'package:flutter/material.dart';
import 'package:paystack_manager/utils/ui_color.dart';

class AccentButton extends StatefulWidget {
  AccentButton({Key key, this.title, this.onPressed}) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  _AccentButtonState createState() => _AccentButtonState();
}

class _AccentButtonState extends State<AccentButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(UIColors.accentColor)),
      onPressed: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
