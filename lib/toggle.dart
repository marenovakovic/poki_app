import 'package:flutter/material.dart';

enum UiContent {
  SIGN_IN,
  SIGN_UP,
}

class Toggle extends StatefulWidget {
  @override
  _ToggleState createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  var _content = UiContent.SIGN_IN;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            value: _content == UiContent.SIGN_IN,
            onChanged: (isChecked) {
              setState(() =>
              _content = isChecked ? UiContent.SIGN_IN : UiContent.SIGN_UP);
            },
          ),
          SizedBox(height: 16.0),
          _content == UiContent.SIGN_UP ? SignUpScreen() : SignInScreen(),
        ],
      ),
    );
  }
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Sign In');
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Sign Up');
  }
}
