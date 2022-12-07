import 'package:flutter/material.dart';
import 'package:flutter_layout_time_tracker/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Time Tracker'),
          elevation: 10.0,
        ),
        body: _buildContent());
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Sign Inn',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              debugPrint('Button Pressed');
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0))),
            child: const Text(
              'Sign In with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
          ),
          const SizedBox(height: 8.0),
          const CustomRaisedButton()
        ],
      ),
    );
  }
}
