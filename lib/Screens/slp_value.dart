import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class slpValue extends StatefulWidget {
  const slpValue({Key? key}) : super(key: key);

  @override
  _calculatorScreenState createState() => _calculatorScreenState();
}

class _calculatorScreenState extends State<slpValue> {
  void initState() {
    super.initState();
    getSLPValue();
  }

  void getSLPValue() async {
    http.Response response = await http
        .get(Uri.parse('https://api.coingecko.com/api/v3/simple/price?ids='
            'smooth-love-potion&vs_currencies=usd'));
    print(response);
  }

  Widget build(BuildContext context) {
    Get.put(Themes());
    return Scaffold(
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
                      "\$0.06654",
                      style: TextStyle(
                        fontFamily: 'PoppinsBold',
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    width: 250,
                    child: Text(
                      "Php. 5.63",
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
        ));
  }
}
