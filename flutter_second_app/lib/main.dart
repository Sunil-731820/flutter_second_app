//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const ({ Key? key }) : super(key: kM//yAppey);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
                Tab(icon: Icon(Icons.add))
              ],
            ),
            title: Text("Default ab"),
            backgroundColor: Colors.green,
          ),
          body: TabBarView(
            children: [
              Icon(Icons.music_note, size: 100),
              Icon(Icons.music_video, size: 100, color: Colors.blue),
              Icon(Icons.camera_alt, size: 100, semanticLabel: 'Camera'),
              Icon(Icons.grade,
                  size: 300, color: Colors.red, semanticLabel: 'star'),
              Icon(Icons.email),
              Icon(Icons.add, size: 200, color: Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}
