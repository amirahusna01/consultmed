import 'package:consultmed1/sign_in_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100), // Adjust the spacing as needed
                Text(
                  'CONSULTMED',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50), // Adjust the spacing as needed
                Text(
                  'Register With Us!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Your Information is safe with us',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30), // Adjust the spacing as needed
                TextField(
                  decoration: InputDecoration(labelText: 'Enter your full name'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Enter your email'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Enter your password'),
                  obscureText: true,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Confirm your password'),
                  obscureText: true,
                ),
                SizedBox(height: 30), // Adjust the spacing as needed
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text('Already have an account? Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
