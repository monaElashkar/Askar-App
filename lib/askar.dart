// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
class askar extends StatefulWidget {
  final List askar_navegator;
  final String text;
   const askar({Key? key, required this.askar_navegator, required this.text}) : super(key: key) ;

  @override
  State<askar> createState() => _askarState();
}

class _askarState extends State<askar> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(widget.text,
        style: const TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...widget.askar_navegator.map((Item) => Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black87,width: 2,style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(Item["text"],
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                    textAlign:TextAlign.center,),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Item["number"]==0? Colors.green:Colors.black87
                      ),
                      child: Text("${Item["number"]}",
                        style: const TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                    onTap: (){
                      if(Item["number"]!=0){
                      Item["number"]--;}
                      setState(() {});
                    },
                  )
                ],
              ),

            ),),
          ],
        ),
      ),
    );
  }
}
