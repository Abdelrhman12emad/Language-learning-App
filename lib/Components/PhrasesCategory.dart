import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_application_3/Models/PhrasesModel.dart';

class Phrasescategory extends StatelessWidget {
  const Phrasescategory({super.key, required this.phrasesmodel});
  final Phrasesmodel phrasesmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 152, 58, 183),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Text(phrasesmodel.PhraseJName),
                Text(phrasesmodel.PhraseEName),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();

              player.play(AssetSource(phrasesmodel.PhraseSound));
            },
            icon: Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}
