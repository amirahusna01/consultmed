import 'package:consultmed1/register_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 20), // Adjust the size as needed
            Text(
              'CONSULTMED',
              style: TextStyle(
                fontSize: 32, // Adjust the size as needed
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset('lib/assets/images/img1.png'), // Your image goes here
            Text(
              'Aplikasi Konsultasi\nDengan Dokter Spesialis',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24, // Adjust the size as needed
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Konsultasi Medis Tanpa Ribet! Pantau Riwayat Kesehatan, '
                    'Kirim Pesan ke Dokter, dan Atur Janji Temu dengan Mudah '
                    'Melalui CONSULTMED.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16, // Adjust the size as needed
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Adjust the color as needed
                  minimumSize: Size(double.infinity, 50), // Adjust the size as needed
                ),
              ),
            ),
            SizedBox(height: 20), // Adjust the size as needed
          ],
        ),
      ),
    );
  }
}
