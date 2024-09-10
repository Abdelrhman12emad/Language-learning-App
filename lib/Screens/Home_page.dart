import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/Components/Category.dart';
import 'package:flutter_application_3/Screens/Family_Members.dart';
import 'package:flutter_application_3/Screens/NumbersPage.dart';
import 'package:flutter_application_3/Screens/Phrases_page.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6bd),
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          "Toku",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Numberspage();
              }));
            },
            color: Color(0xffef9235),
            text: "Numbers",
          ),
          SizedBox(
            height: 4,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              }));
            },
            color: Color.fromARGB(156, 105, 188, 240),
            text: "Family Members",
          ),
          SizedBox(
            height: 4,
          ),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }));
              },
              color: Colors.cyan,
              text: "Phrase")
        ],
      ),
    );
  }
}
