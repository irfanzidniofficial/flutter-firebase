import 'package:flutter/material.dart';
import 'package:flutter_layout_time_tracker/app/sign_in/sign_in_button.dart';
import 'package:flutter_layout_time_tracker/app/sign_in/social_sign_in_button.dart';
import 'package:flutter_layout_time_tracker/services/auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key, required this.auth}) : super(key: key);
  final AuthBase auth;

  Future<void> _signInAnonymously() async {
    try {
      await auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
    }
  }

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
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 30.0),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            color: Colors.white,
            onPressed: () {},
            text: "Sign In Google",
            textColor: Colors.black87,
          ),
          SizedBox(height: 8.0),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            color: Color(0xFF334D92),
            onPressed: () {},
            text: "Sign In Facebook",
            textColor: Colors.white,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            color: Colors.teal,
            onPressed: () {},
            text: "Sign In Email",
            textColor: Colors.white,
          ),
          SizedBox(height: 8.0),
          Text(
            'or',
            style: TextStyle(fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            color: Colors.lime,
            onPressed: _signInAnonymously,
            text: "Sign In Anonymous",
            textColor: Colors.black87,
          ),
        ],
      ),
    );
  }
}
