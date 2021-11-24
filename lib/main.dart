import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'Screens/axie_tutorial.dart';
import 'Screens/calculator.dart';
import 'Screens/slp_info.dart';
import 'Screens/slp_value.dart';
void main() => runApp(axieAIO());

class axieAIO extends StatelessWidget {
  const axieAIO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      home: axieMain(),
    );
  }
}

class axieMain extends StatefulWidget {
  const axieMain({Key? key}) : super(key: key);

  @override
  _axieMainState createState() => _axieMainState();
}

class _axieMainState extends State<axieMain> {
  @override
  Widget build(BuildContext context) {
    Get.put(Themes());
    return Scaffold(
      appBar: AppBar(
        title: Text("FOR ALL OF YOUR AXIE NEEDS",
            style: Theme.of(context).primaryTextTheme.headline6,),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [ //adds a small changing icon for dark/light mode
          GetBuilder<Themes>(
            builder: (controller) => IconButton(
              icon: Icon(
                Themes.isDark ? FontAwesomeIcons.sun : FontAwesomeIcons.moon,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              onPressed: () => controller.toggleMode(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          children: [
            Container(
              child: SizedBox(width: 400, height: 400),
              //FILLER LANG TO PUT THE LOGO HERE TY
            ),
            Column(
              children: [
                //ROW ITEMS 1 AND 2
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: Theme.of(context).colorScheme.primaryVariant,
                        child: Text(
                          "Calculator"
                        ),
                        onPressed: () {
                          Get.to(calculatorScreen());
                        },
                      )
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05),
                    Expanded(
                        child: MaterialButton(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          child: Text(
                              "Daily and Total SLP"
                          ),
                          onPressed: () {
                            Get.to(slpInfo());
                          },
                        )
                    )
                  ],
                ),
                // ROW ITEMS 3 AND 4
                Row(
                  children: [
                    Expanded(
                        child: MaterialButton(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          child: Text(
                              "SLP Value"
                          ),
                          onPressed: () {
                            Get.to(slpValue());
                          },
                        )
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05),
                    Expanded(
                        child: MaterialButton(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          child: Text(
                              "The Basics"
                          ),
                          onPressed: () {
                            Get.to(axieTutorial());
                          },
                        )
                    )
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}

