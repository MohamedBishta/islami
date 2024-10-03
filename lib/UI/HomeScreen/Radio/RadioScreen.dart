import 'package:audioplayers/audioplayers.dart';
import 'package:firsttask/data/Api_Manager.dart';
import 'package:flutter/material.dart';

import 'RadioItem.dart';

class Radioscreen extends StatefulWidget {
  static const String routeName = 'radioPage';
  Radioscreen({super.key});

  @override
  State<Radioscreen> createState() => _RadioscreenState();
}

class _RadioscreenState extends State<Radioscreen> {
  late AudioPlayer audioPlayer;
@override
  void initState() {
  audioPlayer = AudioPlayer();
  }
  @override
  void dispose() {
    audioPlayer.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 120,),
        Image.asset("assets/images/radio_icon.png"),
        FutureBuilder(future: ApiManager.getRadios(), builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }else if(snapshot.hasError){
            return Center(child: Text(snapshot.error.toString()),);
          }else{
            return Expanded(
              child: ListView.builder(
                physics: PageScrollPhysics(),
                itemExtent: width,
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                return RadioItem(radios: snapshot.data![index], audioPlayer: audioPlayer,);
              },),
            );
          }
        },),
      ],
    );
  }
}
