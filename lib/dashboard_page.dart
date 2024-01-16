import 'package:consultmed1/detail_dokter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Hello, Asa!'),
        backgroundColor:
            Colors.blue, // Set the background color of AppBar to blue
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Dokter',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text('Dokter',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            // ScrollView horizontal untuk kategori dokter
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCategoryChip('Spesialis Bedah'),
                  _buildCategoryChip('Cardiologi'),
                  _buildCategoryChip('Gastroenterologi'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            // ScrollView horizontal untuk Card dokter
            Container(
              height: 280, // Tinggi container disesuaikan dengan kebutuhan
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildDoctorCard(context, 'Dr. Mosia Gloria',
                      'Sp. Bedah Umum', 'lib/assets/images/img3.png', 4),
                  _buildDoctorCard('Dr. Margret Dini', 'Sp. Bedah Plastik',
                      'lib/assets/images/img4.png', 5),
                ],
              ),
            ),
            // Card khusus untuk Rekomendasi Dokter
            RecommendationCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors
                .blue, // Set the background color of BottomNavigationBar to blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: Colors
                .blue, // Set the background color of BottomNavigationBar to blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors
                .blue, // Set the background color of BottomNavigationBar to blue
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.blue.shade100,
      ),
    );
  }

  Widget _buildDoctorCard(
      String name, String specialty, String imagePath, int rating) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context as BuildContext,
          MaterialPageRoute(
              builder: (context) => DetailDokterPage(
                    name: name,
                    specialty: specialty,
                    imagePath: imagePath,
                    rating: rating,
                    patientCount: 10,
                    experienceYears: 3,
                    about: "nothing",
                  )),
        )
      },
      child: Container(
        width: 180, // Lebar card disesuaikan dengan kebutuhan
        child: Card(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  imagePath, // Ganti dengan imagePath yang sesuai
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(specialty),
                    RatingBar.builder(
                      initialRating: rating.toDouble(),
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20.0,
                      itemBuilder: (context, _) =>
                          Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Rekomendasi Dokter',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 6),
                    Text('Konsultasi dengan dokter yang sering dicari.',
                        style: TextStyle(fontSize: 14)),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Aksi untuk rekomendasi
                      },
                      child: Text('Baca selengkapnya'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/img5.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
