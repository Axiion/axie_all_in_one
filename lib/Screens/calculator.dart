import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:axie_all_in_one/colors.dart';

class calculatorScreen extends StatefulWidget {
  const calculatorScreen({Key? key}) : super(key: key);

  @override
  _calculatorScreenState createState() => _calculatorScreenState();
}

class _calculatorScreenState extends State<calculatorScreen> {
  @override
  int round = 1;
  int energy = 3;
  int usedEnergy = 0, destroyedEnergy = 0, gainedEnergy = 0;
  Widget build(BuildContext context) {
    Get.put(Themes());
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Calculator",
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
        padding: EdgeInsets.fromLTRB(75, 0, 75, 0),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Round $round",
                      style: Theme.of(context).primaryTextTheme.headline4,
                    ),
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: MediaQuery.of(context).size.height * 0.20,
                            decoration: new BoxDecoration(
                              color: ltBlue,
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("$energy",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "Energy Used",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 33,
                                decoration: BoxDecoration(
                                  color: dkRed,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  //iconSize: ,
                                  onPressed: () =>
                                      {/*create method to minus properly*/},
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: dkGrey,
                                ),
                                width: 60,
                                height: 40,
                                child: Text(
                                  "$usedEnergy",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 33,
                                decoration: BoxDecoration(
                                  color: lterBlue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  //iconSize: ,
                                  onPressed: () =>
                                      {/*create method to add properly*/},
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "Energy Destroyed",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 33,
                                decoration: BoxDecoration(
                                  color: dkRed,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  //iconSize: ,
                                  onPressed: () =>
                                      {/*create method to minus properly*/},
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: dkGrey,
                                ),
                                width: 60,
                                height: 40,
                                child: Text(
                                  "$destroyedEnergy",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 33,
                                decoration: BoxDecoration(
                                  color: lterBlue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  //iconSize: ,
                                  onPressed: () =>
                                      {/*create method to add properly*/},
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "Energy Gained",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 33,
                                decoration: BoxDecoration(
                                  color: dkRed,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  //iconSize: ,
                                  onPressed: () =>
                                      {/*create method to minus properly*/},
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: dkGrey,
                                ),
                                width: 60,
                                height: 40,
                                child: Text(
                                  "$gainedEnergy",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 33,
                                decoration: BoxDecoration(
                                  color: lterBlue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  //iconSize: ,
                                  onPressed: () =>
                                      {/*create method to add properly*/},
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                      ),
                      margin: EdgeInsets.only(left: 45),
                      child: TextButton(
                        child: Text(
                          "End Turn",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'PoppinsBold',
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 30),
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.redoAlt),
                        iconSize: 40,
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
