// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
class sebha extends StatefulWidget {
  const sebha({Key? key}) : super(key: key);

  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  double angle=0;
  int index=0;
  List sebha=[
    {"shehada":"سبحان لله","counter":0},
    {"shehada":"الحمد لله","counter":0},
    {"shehada":"لا اله الا الله وحده لا شريك له له الملك وله الحمد وهو علي كل شئ قدير",
      "counter":0},
    {"shehada":"الله اكبر","counter":0}];
  click(){
   int count= sebha[index]["counter"]++;
   if(index<3){
   if(count==32){
     sebha[index]["counter"]=0;
     index++;
   }}else{
     index=0;
   }
   angle=angle+20;
   setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.black,
          height: 150,
            width: double.infinity,
            child: Image.asset("image/sebha_logo.jpeg",fit: BoxFit.cover,)),
        Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20)
        ),
          child: Text("${sebha[index]["counter"]}/33",
            style: const TextStyle(color: Colors.white,),),
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.white,
            height: 200,
            width: double.infinity,
            child: GestureDetector(
              onTap: click,
              child: Transform.rotate(
                angle: angle,
                child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("image/sebha_check.jpeg",fit: BoxFit.cover,),
                      const Text("click",
                        style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                ]),
              ),
            ),),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Text("${sebha[index]["shehada"]}",style: const TextStyle(color: Colors.white,),textAlign:TextAlign.center,),
        )
      ],
    );
  }
}
