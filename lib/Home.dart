import 'persegi.dart';
import 'profile.dart';
import 'lingkaran.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Hai, Selamat Datang!',
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                minimumSize: const Size.fromHeight(100), // NEW
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LuasApp()),
                );
              },
              child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'HITUNG LUAS PERSEGI',
                        style: TextStyle(
                          fontSize: 20,
                          height: 1,
                        ),

                      ),
                    ),
                    Container(
                      child: Text(
                        'Pilih Untuk Mulai Menghitung Luas Persegi',
                        style: TextStyle(
                          fontSize: 13,
                          height: 2,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                minimumSize: const Size.fromHeight(100), // NEW
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LuasAppLingkaran()),
                );
              },
              child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'HITUNG LUAS LINGKARAN',
                        style: TextStyle(
                          fontSize: 20,
                          height: 1,
                        ),

                      ),
                    ),
                    Container(
                      child: Text(
                        'Pilih Untuk Mulai Menghitung Luas Lingkaran',
                        style: TextStyle(
                          fontSize: 13,
                          height: 2,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                minimumSize: const Size.fromHeight(100), // NEW
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'PROFILE DEVELOPER',
                        style: TextStyle(
                          fontSize: 20,
                          height: 1,
                        ),

                      ),
                    ),
                    Container(
                      child: Text(
                        'Pilih Untuk Melihat Developer',
                        style: TextStyle(
                          fontSize: 13,
                          height: 2,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}