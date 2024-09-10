import 'package:flutter/material.dart';
import 'package:flutter_application_3/Models/FM_model.dart';
import 'package:audioplayers/audioplayers.dart';

class Familycategory extends StatelessWidget {
  const Familycategory({super.key, required this.fmModel});
  final FmModel fmModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.green,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(fmModel.FM_image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  fmModel.FM_jpname,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  fmModel.FM_enname,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();

              player.play(AssetSource(fmModel.FM_sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
