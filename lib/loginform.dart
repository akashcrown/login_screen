import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool ishiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.headline3,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email/user name',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            TextField(
              obscureText: ishiddenpassword,
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                      onTap: _togglepasswordveiw,
                      child: Icon(Icons.visibility))),
            ),
            SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {},
              child: Text(
                'sign in',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _togglepasswordveiw() {
    if (ishiddenpassword == true) {
      ishiddenpassword = false;
    } else {
      ishiddenpassword = true;
    }
    setState(() {});
  }
}
