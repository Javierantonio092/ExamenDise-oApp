import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Principal();
}

class _Principal extends State<Principal> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        backgroundColor: Colors.green,
        actions: <Widget>[Icon(Icons.video_call)],
        elevation: 90.0,
        leading: Icon(Icons.remove_red_eye),
      ),
      //backgroundColor: Colors.grey,
      body: Center(
        child: ListView(children: <Widget>[
          Card(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: new ListTile(
                leading: new Icon(Icons.search),
                title: new TextField(
                  controller: myController,
                  decoration: new InputDecoration(
                      hintText: 'Search', border: InputBorder.none),
                ),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    myController.clear();
                  },
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(110, 20, 10, 20),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/star.png', height: 60, width: 60),
                      Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text(
                            'Popular Now',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/arrow.png', height: 60, width: 60),
                      Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 29),
                          child: Text(
                            'Popular Now',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  )
                ],
              )),
          Center(
              child: Text('Channels',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22))),
          Container(
            height: 110,
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(color: Colors.pink),
            child: ListTile(
              leading: Image.asset(
                'images/comedy.png',
                scale: 2,
              ),
              title: Text(
                'Comedy',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 110,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(color: Colors.orangeAccent),
            child: ListTile(
              leading: Image.asset('images/art.png', scale: 3),
              title: Text(
                'Art & Experimental',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 110,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(color: Colors.blue),
            child: ListTile(
              leading: Image.asset(
                'images/cat.png',
                scale: 2,
              ),
              title: Text(
                'Cats',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 110,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(color: Colors.purple),
            child: ListTile(
              leading: Image.asset(
                'images/dog.png',
                scale: 2,
              ),
              title: Text(
                'Dogs',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ]),        
      ),
    );
  }
}
