import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Models/Number.dart';

class Numcategory extends StatelessWidget {
  const Numcategory({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffef9235),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(right: 16),
              color: Color(0xfffff6dc),
              child: Image.asset(number.image)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpname,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                number.enname,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();

                player.play(AssetSource(number.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
