import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  BmiResult({@required this.Gender, @required this.result, @required this.age});
  final bool? Gender;
  final double? result;
  final int? age;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(25)),
                width:250,
                height: 50,
                child: Center(child: Text("Gender : ${Gender! ? " Male" : " Female"}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),)),
               

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(25)),
                width:250,
                height: 50,
                child: Center(child: Text(" Result : ${result?.round()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),)),


              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(25)),
                width:250,
                height: 50,
                child: Center(child: Text("Age : ${age}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),)),


              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade900,
    );
  }
}

//
//             Text("result : $result ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
//             Text("age : $age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
