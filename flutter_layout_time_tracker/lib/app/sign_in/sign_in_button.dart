import 'package:flutter/material.dart';
import 'package:flutter_layout_time_tracker/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    Key? key,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          color: color,
          borderRadius: 8.0,
          onPressed: onPressed,
        );
}
