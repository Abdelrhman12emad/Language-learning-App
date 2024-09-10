import 'package:flutter/material.dart';
import 'package:flutter_application_3/Components/NumCategory.dart';
import 'package:flutter_application_3/Models/Number.dart';

class Numberspage extends StatelessWidget {
  const Numberspage({super.key});
  final List<Number> Numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: "assets/images/numbers/number_one.png",
        enname: "One",
        jpname: " Ichi "),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: "assets/images/numbers/number_two.png",
        enname: "Two",
        jpname: "Ni"),
    Number(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: "assets/images/numbers/number_three.png",
        enname: "Three",
        jpname: "San"),
    Number(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: "assets/images/numbers/number_four.png",
        enname: "Four",
        jpname: "Shi/Yon"),
    Number(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: "assets/images/numbers/number_five.png",
        enname: "Five",
        jpname: "Go"),
    Number(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: "assets/images/numbers/number_six.png",
        enname: "Six",
        jpname: " Roku"),
    Number(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: "assets/images/numbers/number_seven.png",
        enname: "Seven",
        jpname: "Shichi/Nana"),
    Number(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: "assets/images/numbers/number_eight.png",
        enname: "Eight",
        jpname: " Hachi"),
    Number(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: "assets/images/numbers/number_nine.png",
        enname: "Nine",
        jpname: "Kyuu/Ku"),
    Number(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: "assets/images/numbers/number_ten.png",
        enname: "Ten",
        jpname: "Juu"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46322b),
          title: Text(
            "Numbers",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: Numbers.length,
          itemBuilder: (context, index) {
            return Numcategory(number: Numbers[index]);
          },
        ));
  }
}
