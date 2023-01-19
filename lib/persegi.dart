import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:easy_rich_text/easy_rich_text.dart';

class Persegi extends StatelessWidget {
  const Persegi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Hitung Luas Persegi',
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 280,
                      height: 47,
                      child: MaterialButton(
                        color: Colors.blue,
                        child: Text("Hitung Luas",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontFamily: "Acme"
                          ),
                        ),
                        onPressed: () {
                          Route route = MaterialPageRoute(builder: (context) => LuasApp());
                          Navigator.push(context, route);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LuasApp extends StatefulWidget {
  @override
  _LuasAppState createState() => _LuasAppState();
}

class _LuasAppState extends State<LuasApp> {
  double sisi = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Hitung Luas Persegi',
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.grey,
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(top:20),
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                          onChanged: (txt){
                            setState(() {
                              sisi = double.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              labelText: "Input Sisi",
                              border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(10)
                              ),
                              hintText: "Sisi"
                          ),
                        )
                    ),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top:20),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 20
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      var route = new MaterialPageRoute(
                        builder: (BuildContext)=>
                        new LuasPage(input_sisi: sisi),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Hitung Luas",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LuasPage extends StatelessWidget {

  LuasPage({required this.input_sisi});
  final double input_sisi;

  int thasil = 0;
  int hasil = 0;

  @override
  Widget build(BuildContext context) {
    double hasil = (input_sisi * input_sisi);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text("Sisi : $input_sisi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text("Luas Persegi Nya : ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"
              ),
            ),
            EasyRichText('$hasil',
              patternList: [
                EasyRichTextPattern(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  targetString: '$hasil',
                ),
                EasyRichTextPattern(
                  targetString: '2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  superScript: true,
                  matchWordBoundaries: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}