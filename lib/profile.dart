import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Profile Developer',
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
                'Nama : Muhammad Lintang Herlambang \n'
                    'NPM : 2010020067 \n'
                    'Kelas : SI 5 Nonreg Banjarbaru \n'
                    'Kontak : 082251020822 \n'
                    'Alamat : Jl. Kemuning Ujung Gg. Rosella'
            ),
          ),
        ],
      ),
    );
  }
}