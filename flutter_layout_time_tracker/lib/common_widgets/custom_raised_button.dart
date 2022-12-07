import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({super.key});

  // CustomRaisedButton({
  //   required this.child,
  //   required this.color,
  //   required this.borderRadius,
  //   required this.onPressed,
  // })
  // final Widget child;
  // final Color color;
  // final double borderRadius;
  // final VoidCallback onPressed;



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('Button Pressed');
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
      child: const Text(
        'Sign In with Google',
        style: TextStyle(color: Colors.black87, fontSize: 15.0),
      ),
    );
  }
}
