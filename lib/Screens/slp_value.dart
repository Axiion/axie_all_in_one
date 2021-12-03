import 'dart:async';

import 'package:axie_all_in_one/Screens/coingecko_slp.dart';
import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../main.dart';

class slpValue extends StatefulWidget {
  final data;
  slpValue({this.data});

  @override
  _calculatorScreenState createState() => _calculatorScreenState();
}

class _calculatorScreenState extends State<slpValue> {
  late final Timer timer;
  late double slpPHP;
  late double slpUSD;

  void updatePrice(dynamic data) {
    slpPHP = data['smooth-love-potion']['php'];
    slpUSD = data['smooth-love-potion']['usd'];
    print(slpPHP);
    print(slpUSD);
  }

  @override
  void initState() {
    super.initState();
    updatePrice(widget.data);
  }

  Widget build(BuildContext context) {
    int ctr = 0;
    Get.put(Themes());
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).popUntil((_) => ctr++ >= 2);
        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "SLP Value",
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
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25),
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Image(
                        image: AssetImage('images/slp.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        "Smooth Love\n Potion Value (SLP)",
                        style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 30.0,
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          height: 1.1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: ltBlue,
                      ),
                      alignment: Alignment.center,
                      width: 250,
                      child: Text(
                        "USD. $slpUSD",
                        style: Theme.of(context).primaryTextTheme.headline4,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      width: 250,
                      child: Text(
                        "Php. $slpPHP",
                        style: Theme.of(context).primaryTextTheme.headline4,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                      ),
                      margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                      alignment: Alignment.center,
                      width: 200,
                      child: Text(
                        "as of 11/29/2021",
                        style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text("from API"),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
