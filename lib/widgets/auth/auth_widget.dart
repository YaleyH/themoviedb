import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Login to youe account',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          const _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          const _FormWidget(),
          const SizedBox(height: 25),
          const Text(
            style: textStyle,
            'To use TMDB\'s editing and rating capabilities, and receive personalized recommendations, you must be logged in to your account. If you don\'t have an account, registering is free and easy. Click here to get started.',
          ),
          const SizedBox(height: 5),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: const Text('Register'),
          ),
          const SizedBox(height: 25),
          const Text(
            style: textStyle,
            'If you registered but did not receive a confirmation email, click here to resend the email.',
          ),
          const SizedBox(height: 5),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {},
              child: const Text('Verify email')),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextConroller = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? _errorText = null;

  void _auth() {
    final login = _loginTextConroller.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      _errorText = null;
    } else {
      _errorText = 'Не верный логин или пароль';
      print('show error');
    }
    setState(() {});
  }

  void _resetPassword() {}
  @override
  Widget build(BuildContext context) {
    final _errorText = this._errorText; // Получили значение присвоенное выше

    final textStyle = const TextStyle(
      fontSize: 16,
      color: Color(0xff212529),
    );
    const textFieldDecoration = InputDecoration(
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      border: OutlineInputBorder(),
    );
    final color = const Color(0xff01b4e4);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_errorText != null) ...[
          Text(
            _errorText,
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
          SizedBox(height: 5),
        ],
        Text(
          'Username',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
            controller: _loginTextConroller, decoration: textFieldDecoration),
        const SizedBox(height: 20),
        Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              onPressed: _auth,
              child: const Text('Login'),
            ),
            SizedBox(width: 10),
            TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: _resetPassword,
              child: const Text('Reset password'),
            ),
          ],
        )
      ],
    );
  }
}
