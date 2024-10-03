import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../../../data/RadiosResponse/RadiosModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioItem extends StatefulWidget {
  RadioItem({super.key,required this.radios,required this.audioPlayer});
  AudioPlayer audioPlayer;
  Radios radios;
  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Spacer(),
      Text(widget.radios.name??'',
        style: Theme.of(context).textTheme.titleMedium,),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){
            play();
          }, icon: Icon(Icons.play_arrow),iconSize: 40,color: Theme.of(context).colorScheme.secondary,),
          IconButton(onPressed: (){
            stop();
          }, icon: Icon(Icons.pause),iconSize: 40,color: Theme.of(context).colorScheme.secondary,)
        ],),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_back_ios,size: 25,color: Theme.of(context).colorScheme.secondary,),
          SizedBox(width: 5,),
          Text(AppLocalizations.of(context)!.text2,style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),),
          SizedBox(width: 5,),
          Icon(Icons.arrow_forward_ios,size: 25,color: Theme.of(context).colorScheme.secondary,),
        ],
      ),
      Spacer(),
    ],);
  }

  void play() async{
    await widget.audioPlayer.play(UrlSource(widget.radios.url??""));
  }

  void stop() async{
    await widget.audioPlayer.stop();
  }
}
