import 'package:flutter/material.dart';
import 'package:flutter_application_3/Components/PhrasesCategory.dart';
import 'package:flutter_application_3/Models/PhrasesModel.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  final List<Phrasesmodel> phrases = [
    Phrasesmodel(
        PhraseSound: "sounds/phrases/dont_forget_to_subscribe.wav",
        PhraseJName: "KOdoku sure koto o wasurenaide kudasai",
        PhraseEName: 'Donot forget to subscibe'),
    Phrasesmodel(
        PhraseSound: 'sounds/phrases/i_love_programming.wav',
        PhraseJName: "Watashi wa puroguraming ga dasukidesu",
        PhraseEName: 'I love programming'),
    Phrasesmodel(
        PhraseSound: 'sounds/phrases/programming_is_easy.wav',
        PhraseJName: " puroguraming wa kanatandesu",
        PhraseEName: 'Programming is easy'),
    Phrasesmodel(
        PhraseSound: 'sounds/phrases/where_are_you_going.wav',
        PhraseJName: "Doko ni iku no",
        PhraseEName: 'Where are you going'),
    Phrasesmodel(
        PhraseSound: 'sounds/phrases/what_is_your_name.wav',
        PhraseJName: "Namae wa nandesu ka ",
        PhraseEName: 'What is your name '),
    Phrasesmodel(
        PhraseSound: 'sounds/phrases/i_love_anime.wav',
        PhraseJName: "Watashi wa anime ga daisukidesu",
        PhraseEName: ' i love anime'),
    Phrasesmodel(
        PhraseSound: 'sounds/phrases/how_are_you_feeling.wav',
        PhraseJName: "Go kibun wa ikagadesu ka",
        PhraseEName: 'Haw are you feeling'),
    Phrasesmodel(
        PhraseSound: 'sounds/phrases/are_you_coming.wav',
        PhraseJName: "Kimasu ka",
        PhraseEName: 'Are you caming')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46322b),
          title: Text(
            "Phrases",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return Phrasescategory(phrasesmodel: phrases[index]);
          },
        ));
  }
}
