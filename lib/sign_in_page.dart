import 'package:consultmed1/dashboard_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
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
                SizedBox(height: 60), // Adjust the spacing as needed
                Text(
                  'CONSULTMED',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 80), // Adjust the spacing as needed
                Text(
                  'Welcome Back !',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                Image.asset('lib/assets/images/img2.png'), // Placeholder for graphic
                SizedBox(height: 60),
                TextField(
                  decoration: InputDecoration(labelText: 'Enter your email'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Enter your password'),
                  obscureText: true,
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Add Forgot Password functionality
                  },
                  child: Text('Forgot Password'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  },
                  child: Text('Sign In'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the registration page
                  },
                  child: Text('Dont have an account? Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
