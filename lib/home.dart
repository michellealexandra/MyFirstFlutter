import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//column itu yg kebawah
//row itu yg kesamping

bool check = false;
Color on = Colors.grey[400];

class _HomeState extends State<Home> {
  void press() {
    setState(() {
      if (check == false) {
        check = true;
        on = Colors.pink[600];
      } else {
        check = false;
        on = Colors.grey[400];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text("Dribbble"),
      ),
      body: Stack(
        children: <Widget>[
          //background
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                Color(0xffffd7a9),
                Color(0xffffd1d6),
                Color(0xfff5ddff)
              ]))),
          Column(
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Container(
                    child: Image(
                  image: AssetImage("images/ramen.gif"),
                )),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xfff7a7a7),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.fromLTRB(3.5, 0, 3.5, 0),
                        width: 90,
                        height: 90,
                        child: Image(
                          image: AssetImage("images/peach.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        margin: EdgeInsets.only(top: 5, left: 5),
                        padding: EdgeInsets.fromLTRB(3.5, 0, 3.5, 0),
                        width: 90,
                        height: 90,
                        child: Image(
                          image: AssetImage("images/potato.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        margin: EdgeInsets.only(top: 5, left: 5),
                        padding: EdgeInsets.fromLTRB(3.5, 0, 3.5, 0),
                        width: 90,
                        height: 90,
                        child: Image(
                          image: AssetImage("images/brocol.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffa7d0e5),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        margin: EdgeInsets.only(top: 5, left: 5),
                        padding: EdgeInsets.fromLTRB(3.5, 0, 3.5, 0),
                        width: 90,
                        height: 90,
                        child: Image(
                          image: NetworkImage(
                              "https://cdn.dribbble.com/users/1092276/screenshots/11552963/media/b289ef4206465707d073f28e29882f12.gif"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 0,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Sarah Wu",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.pinkAccent[700]),
                      ),
                      Text(
                        "Brand / Graphic Design, Illustration, Product Design",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: 15, left: 12, right: 12, bottom: 10),
                      child: Column(
                        children: <Widget>[
                          Text("All credit goes to Sarah Wu"),
                          Text(""),
                          Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                          Text(""),
                          Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 12, 12, 0),
              child: FloatingActionButton(
                onPressed: press,
                child: Icon(
                  Icons.favorite,
                  color: on,
                ),
                elevation: 10,
                backgroundColor: Colors.red[50],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
