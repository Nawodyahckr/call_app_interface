import 'package:flutter/material.dart';

class VoiceCallPage extends StatefulWidget{
  @override 
  State<StatefulWidget> createState() {
    
    return _VoiceCallPageState();
  }
}

class _VoiceCallPageState extends State<VoiceCallPage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
           color: Colors.white,
         ),
         padding: EdgeInsets.all(50),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           mainAxisSize: MainAxisSize.max,
           crossAxisAlignment: CrossAxisAlignment.center,
           children:<Widget>[
             SizedBox(height: 10,),
             Text('Voice Call',style: TextStyle(
               color: Colors.deepPurpleAccent, fontWeight: FontWeight.w300,
               fontSize: 15,
             ),
             ),
             SizedBox(height: 20,),
             Text('Nawodya Jayalath',style: TextStyle(
               color: Colors.deepPurpleAccent, fontWeight: FontWeight.w900,
               fontSize: 15,
             ),
             ),
             SizedBox(height: 20,),
             Text(
               '00:00',
             style: TextStyle(
               color: Colors.deepPurpleAccent, fontWeight: FontWeight.w300,
               fontSize: 15,
             ),
             ),
           ]
         ),
      ),
    );
  }
}