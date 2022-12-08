import 'package:flutter/material.dart';
import 'package:flutter_layout_time_tracker/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    Key? key,
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(opacity: 0.0, child: Image.asset(assetName)),
            ],
          ),
          color: color,
          borderRadius: 8.0,
          onPressed: onPressed,
        );
}
