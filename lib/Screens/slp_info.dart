import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class slpInfo extends StatefulWidget {
  const slpInfo({Key? key}) : super(key: key);

  @override
  _calculatorScreenState createState() => _calculatorScreenState();
}

class _calculatorScreenState extends State<slpInfo> {
  @override
  Widget build(BuildContext context) {
    Get.put(Themes());
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "SLP per MMR",
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                color: Theme.of(context).colorScheme.secondaryVariant,
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  "Axie Arena SLP Guide",
                  style: TextStyle(
                    fontFamily: 'PoppinsBold',
                    fontSize: 24,
                    color: Theme.of(context).colorScheme.primaryVariant,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey,
                        height: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Image(
                                image: AssetImage('images/axieMMR.png'),
                                width: 55,
                                height: 55,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'M M R',
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey,
                        height: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Image(
                                image: AssetImage('images/slp.png'),
                                width: 45,
                                height: 45,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'S L P',
                                  style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '800 - 899',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '1 SLP per win',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '1000 - 1099',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '3 SLP per win',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '1100 - 1299',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '6 SLP per win',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '1300 - 1499',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '9 SLP per win',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '1500 - 1799',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '12 SLP per win',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '1800- 1999',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '15 SLP per win',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '2000- 2199',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '18 SLP per win',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '2200 - above',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: ltBlue,
                        height: 40,
                        child: Text(
                          '21 SLP per win',
                          style: TextStyle(
                            fontFamily: 'PoppinsBold',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
