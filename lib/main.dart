import 'package:flutter/material.dart';
import '/home.dart';
import 'sebha.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> screen=[
    const home(),
    const sebha()
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text(currentIndex==0?"الأذكار":"السبحة",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
       body: screen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: false,type: BottomNavigationBarType.fixed,
          fixedColor:Colors.white,
          showSelectedLabels: true,
          unselectedItemColor: Colors.grey, currentIndex: currentIndex,
          backgroundColor: Colors.black, selectedFontSize: 20,
          onTap: (index){
            currentIndex=index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Azkar'),
            BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Sebha'),
          ],
        ),
      )
    );
  }
}
