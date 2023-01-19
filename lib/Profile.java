import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Nama : Beni Permadani \n'
                  'NPM : 2010020029 \n'
                  'Kelas : SI 5 Nonreg Banjarbaru \n'
                  'Kontak : 085246478907 \n'
                  'Alamat : Jl.Sekumpul Gg. Al Rayid no07 Sei. kacang'
            ),
          ),
        ],
      ),
    );
  }
}