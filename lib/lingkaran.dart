import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:easy_rich_text/easy_rich_text.dart';

class Lingkaran extends StatelessWidget {
  const Lingkaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Hitung Luas Lingkaran',
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
                        child: Text("Hitung Luas Lingkaran",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontFamily: "Acme"
                          ),
                        ),
                        onPressed: () {
                          Route route = MaterialPageRoute(builder: (context) => LuasAppLingkaran());
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

class LuasAppLingkaran extends StatefulWidget {
  @override
  _LuasAppLingkaranState createState() => _LuasAppLingkaranState();
}

class _LuasAppLingkaranState extends State<LuasAppLingkaran> {
  double jari_jari = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Hitung Luas Lingkaran',
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
                              jari_jari = double.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              labelText: "Input Jari Jari",
                              border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(10)
                              ),
                              hintText: "Jari Jari"
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
                        new LuasPage(input_r: jari_jari),
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

  LuasPage({required this.input_r});
  final double input_r;

  int thasil = 0;
  int hasil = 0;

  @override
  Widget build(BuildContext context) {
    double hasil = (3.14 * (input_r * input_r));
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
            Text("Jari Jari : $input_r",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text("Luas Lingkaran Nya : ",
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
                  stringBeforeTarget: 'm',
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