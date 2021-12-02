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
          title: Center(
              child: Text(
            "The Basics",
            style: Theme.of(context).primaryTextTheme.headline3,
          )),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.secondary),
          actions: [
            GetBuilder<Themes>(
              builder: (controller) => IconButton(
                icon: Icon(
                  Themes.isDark
                      ? FontAwesomeIcons.solidSun
                      : FontAwesomeIcons.solidMoon,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () => controller.toggleMode(),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Here are things to get you started!",
                  style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 18),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            width: 295,
                            top: 5,
                            left: 75,
                            child: Container(
                              height: 70,
                              padding: EdgeInsets.fromLTRB(37.0, 5.0, 8.0, 0),
                              child: Text(
                                "These are your fantasy pets that you\n"
                                "can battle,raise, collect and breed.\n"
                                "Make sure to make a good team!",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: ltBlue,
                              ),
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                'images/axie.png',
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: MediaQuery.of(context).size.height * 0.30,
                            decoration: new BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Axies have their own ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          fontFamily: "Poppins"),
                      children: [
                        TextSpan(
                          text: "body parts ",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryVariant,
                              fontFamily: "PoppinsBold"),
                        ),
                        TextSpan(
                          text: "and ",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryVariant,
                              fontFamily: "Poppins"),
                        ),
                        TextSpan(
                          text: "classes",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryVariant,
                              fontFamily: "PoppinsBold"),
                        ),
                        TextSpan(text: "."),
                        TextSpan(
                          text:
                              " They\n determine your axies' abilities, stats and  your playstyle.",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryVariant,
                              fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image.asset("images/parts.png"),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Image.asset("images/class.png"),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: ltBlue,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage(
                                  "images/hp.png",
                                ),
                              ),
                              width: 35,
                              height: 35,
                            ),
                            Container(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: "Health ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "PoppinsBold"),
                                  children: [
                                    TextSpan(
                                      text:
                                          "determines the amount of damage an\n"
                                          "Axie can take before getting knocked out.",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.all(1),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: "Speed ",
                                    style: TextStyle(
                                      fontFamily: "PoppinsBold",
                                      fontSize: 10,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryVariant,
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            "determines the turn order. If same speed, the turn order in \n"
                                            "which axies will attack  can be determined by: \n",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 10,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            "High speed > Low HP > High Skill > High Morale > Low Fighter ID",
                                        style: TextStyle(
                                          fontFamily: "PoppinsBold",
                                          fontSize: 10,
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage(
                                  "images/speed.png",
                                ),
                              ),
                              width: 35,
                              height: 35,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: ltBlue,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage(
                                  "images/morale.png",
                                ),
                              ),
                              width: 35,
                              height: 35,
                            ),
                            Container(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: "Morale ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "PoppinsBold"),
                                  children: [
                                    TextSpan(
                                      text:
                                          "increases the chance of getting a\n"
                                          "crit. It also makes entering last stand likelier.",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.all(2),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: "Skill ",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryVariant,
                                      fontFamily: "PoppinsBold"),
                                  children: [
                                    TextSpan(
                                      text: "adds damage when your Axie plays\n"
                                          " multiple cards at once or also known as combo.",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage(
                                  "images/skill.png",
                                ),
                              ),
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
        //body:
        );
  }
}
