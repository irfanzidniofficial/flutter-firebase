import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({
    Key? key,
    required this.child,
    required this.color,
    this.borderRadius = 2.0,
    this.height = 50,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final double height;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
        child: child,
      ),
    );
  }
}
