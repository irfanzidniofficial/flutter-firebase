import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_time_tracker/app/home_page.dart';
import 'package:flutter_layout_time_tracker/app/sign_in/sign_in_page.dart';
import '../services/auth.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.auth});
  final AuthBase auth;
  

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User? _user;

  @override
  void initState() {
    super.initState();
    _updateUser(widget.auth.currentUser);
  }

  void _updateUser(User? user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        auth: widget.auth,
        onSignIn: _updateUser,
      );
    }
    return HomePage(
      auth: widget.auth,
      onSignOut: (() => _updateUser(null)),
    );
  }
}
