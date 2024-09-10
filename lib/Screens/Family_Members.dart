import 'package:flutter/material.dart';
import 'package:flutter_application_3/Components/FamilyCategory.dart';
import 'package:flutter_application_3/Models/FM_model.dart';

class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});
  final List<FmModel> familymodels = [
    FmModel(
        FM_enname: "Father",
        FM_image: 'assets/images/family_members/family_father.png',
        FM_jpname: 'Chichioya',
        FM_sound: 'sounds/family_members/father.wav'),
    FmModel(
        FM_enname: "Daughter",
        FM_image: 'assets/images/family_members/family_daughter.png',
        FM_jpname: 'Musume',
        FM_sound: 'sounds/family_members/daughter.wav'),
    FmModel(
        FM_enname: "Grand father",
        FM_image: 'assets/images/family_members/family_grandfather.png',
        FM_jpname: 'Ojisan',
        FM_sound: 'sounds/family_members/grand father.wav'),
    FmModel(
        FM_enname: "Mother",
        FM_image: 'assets/images/family_members/family_mother.png',
        FM_jpname: 'Hahaoya',
        FM_sound: 'sounds/family_members/mother.wav'),
    FmModel(
        FM_enname: "Grand Mother",
        FM_image: 'assets/images/family_members/family_grandmother.png',
        FM_jpname: 'Soba',
        FM_sound: 'sounds/family_members/grand mother.wav'),
    FmModel(
        FM_enname: "Older brother",
        FM_image: 'assets/images/family_members/family_older_brother.png',
        FM_jpname: 'Nisan',
        FM_sound: 'assets/sounds/family_members/older bother.wav'),
    FmModel(
        FM_enname: "Older sister",
        FM_image: 'assets/images/family_members/family_younger_sister.png',
        FM_jpname: 'Ane',
        FM_sound: 'assets/sounds/family_members/older sister.wav'),
    FmModel(
        FM_enname: "Son",
        FM_image: 'assets/images/family_members/family_son.png',
        FM_jpname: 'Musuko',
        FM_sound: 'sounds/family_members/son.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46322b),
          title: Text(
            "Family Members",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: familymodels.length,
          itemBuilder: (context, index) {
            return Familycategory(fmModel: familymodels[index]);
          },
        ));
  }
}
