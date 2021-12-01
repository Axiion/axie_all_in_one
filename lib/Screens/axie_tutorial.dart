import 'dart:ui';

import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class axieTutorial extends StatefulWidget {
  const axieTutorial({Key? key}) : super(key: key);

  @override
  _calculatorScreenState createState() => _calculatorScreenState();
}

class _calculatorScreenState extends State<axieTutorial> {
  @override
  Widget build(BuildContext context) {
    Get.put(Themes());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("The Basics", style: Theme.of(context).primaryTextTheme.headline6,)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          GetBuilder<Themes>(
            builder: (controller) => IconButton(
              icon: Icon(
                Themes.isDark ? FontAwesomeIcons.sun : FontAwesomeIcons.moon,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () => controller.toggleMode(),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.only(top: 10),
            child: Text("Here are things to get you started!!",
              style: TextStyle(fontFamily: 'PoppinsBold',
              fontSize: 18),
              ),
            ),
          ),
          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                "images/axie.png",
                width: 100,
                height: 130,
                ),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                padding: EdgeInsets.all(6.0),
                child: Text("These are your fantasy pets that you\n"
                    "can battle,raise, collect and breed.\n"
                    "Make sure to make a good team!",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: ltBlue,
                ),
              )
            ],
           ),
          ),
          Expanded(child: Container(
            padding: EdgeInsets.only(top:10),
            child: RichText(
              text: TextSpan( text:"Axies have their own " ,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "poppins"
                ),
                children: [
                  TextSpan(text: "body parts ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppinsbold"
                    ),),
                  TextSpan(text: "and ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppins"
                    ),),
                  TextSpan(text: "classes",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppinsbold"
                    ),),
                  TextSpan(text: "."),
                  TextSpan(text: "They\n determine your axies' abilities, stats and  your playstyle.",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppins"
                    ),),
                ]
              ),
            ),
           ),
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.asset("images/parts.png"),
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[800],
                ),
              ),
              Container(
                child: Image.asset("images/class.png"),
                width: 180,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[800],
                ),
              )
            ],
            ),
          ),
          Expanded(child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image(image: AssetImage("images/hp.png",
                    ),
                  ),
                  width: 40,
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: RichText(
                    text: TextSpan(
                    text: "Health ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppinsbold"
                      ),
                      children: [
                        TextSpan(text:"determines the amount of damage an\n"
                            " Axie can take before getting knocked out.",
                        style: TextStyle(
                          fontFamily: "poppins"
                        ),
                      ),
                      ]
                    ),
                  ),
                )
              ],
            ),
            ),
          ),
          Expanded(child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(1),
                  child: RichText(
                    text: TextSpan(
                      text: "Speed ",
                      style: TextStyle(
                        fontFamily: "poppinsbold",
                        fontSize: 10,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "determines the turn order. If same speed, the turn order in \n"
                            "                     which axies will attack  can be determined by: \n",
                        style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 10,

                          ),
                        ),
                        TextSpan(text: "High speed > Low HP > High Skill > High Morale > Low Fighter ID",
                        style: TextStyle(
                          fontFamily: "poppinsbold",
                          fontSize: 11,
                        ),
                        )
                      ]
                    ),
                  ),
                ),
                Container(
                  child: Image(image: AssetImage("images/speed.png",
                  ),
                  ),
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
          ),
          Expanded(child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image(image: AssetImage("images/morale.png",
                  ),
                  ),
                  width: 40,
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: RichText(
                    text: TextSpan(
                      text: "Morale ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppinsbold"
                      ),
                      children: [
                        TextSpan(text:"increases the chance of getting a crit.\n "
                            "It also makes entering last stand likelier.",
                          style: TextStyle(
                            fontFamily: "poppins",

                          )
                        ),
                      ]
                    ),
                  ),
                )
              ],
            ),
          ),
          ),
          Expanded(child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    text: TextSpan(
                      text: "Skill ",
                      style: TextStyle(
                        fontFamily: "poppinsbold",
                        color: Colors.black
                      ),
                      children: [
                        TextSpan(
                          text: "adds damage when your Axie plays multiple\n"
                              " cards at once or also known as ""combo"".",
                          style: TextStyle(
                            fontFamily: "poppins",
                            color: Colors.black,
                          )
                        ),
                      ]
                    ),
                  ),
                ),
                Container(
                  child: Image(image: AssetImage("images/skill.png",
                  ),
                  ),
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
          ),
        ],
      )
      //body:
    );
  }
}

