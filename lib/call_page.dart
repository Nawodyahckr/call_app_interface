import 'package:call_app/functional_buttons.dart';
import 'package:flutter/material.dart';


class VoiceCallPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VoiceCallPageState();
  }
}

class _VoiceCallPageState extends State<VoiceCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // color: Colors.white,
          ),
          padding: EdgeInsets.all(50),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Voice Call',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Nawodya Jayalath',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '00:00',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    'images/profile.jpg',
                    fit: BoxFit.fitHeight,
                    height: 200,
                    width: 200,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FunctionalButton(title: 'Speaker',icon: Icons.phone_in_talk,onPressed: null,),
                      FunctionalButton(title: 'Video Call',icon: Icons.mic_off,onPressed: null,),
                      FunctionalButton(title: 'Mute',icon: Icons.mic_off,onPressed: null,)
                    ]),
                    SizedBox(height: 100,),
                    FloatingActionButton(
                      onPressed: null,
                      elevation: 20,
                      shape: CircleBorder(side:BorderSide(color: Colors.red)),
                      child: Icon(Icons.call_end, color:Colors.red),
                      backgroundColor: Colors.red[100],
                    )
              ]),
        ),
      ),
    );
  }
}
