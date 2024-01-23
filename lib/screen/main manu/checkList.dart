
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
   const CheckList({super.key});

   @override
   State<CheckList> createState() => _CheckListState();
 }

 class _CheckListState extends State<CheckList> {
  bool firstValue = false;
  bool secondValue = false;
  bool thirdValue  = false;
  bool fouthValue  = false;
   @override
   Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blueAccent,
       title: Text("CheckList"),
       centerTitle: true,
     ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Event CheckList",style: TextStyle(color: Colors.black ,
                fontSize: 20,fontWeight: FontWeight.bold),),
           SizedBox(
              height: 20,
            ),
            Row(children: [
              Checkbox(value: firstValue, onChanged:(value){
                setState(() {
                 firstValue=value!;
                });
              }),
              Text("Event")

            ],),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Checkbox(value: secondValue, onChanged:(value){
                setState(() {
                  secondValue=value!;
                });
              }),
              Text("Event")

            ],),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Checkbox(value: thirdValue, onChanged:(value){
                setState(() {
                  thirdValue=value!;
                });
              }),
              Text("Event")

            ],),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Checkbox(value: fouthValue, onChanged:(value){
                setState(() {
                  fouthValue=value!;
                });
              }),
              Text("Event")

            ],),

          ],
        ),
      ),
    );
   }
 }

