import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

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
        title: Center(child: Text("Calculator", style: Theme.of(context).primaryTextTheme.headline6,)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
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
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25),
        child: Column(
          children: [
            Center(
              child: Text(
                "ROUND $round",
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: new BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.09,
                    left: MediaQuery.of(context).size.width * 0.095,
                    child: Text("$energy", style: Theme.of(context).primaryTextTheme.headline2),
                  ),
                ],
              )
            ),
            Column(
              children: [
                Center(
                  child: Text("Energy Used"),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.minus,),
                        //iconSize: ,
                        onPressed: () => { /*create method to minus properly*/ },
                      ),
                      Text("$usedEnergy"),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.plus,),
                        //iconSize: ,
                        onPressed: () => { /*create method to add properly*/ },
                      ),
                    ],
                  )
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Column(
              children: [
                Center(
                  child: Text("Energy Destroyed"),
                ),
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.minus,),
                          //iconSize: ,
                          onPressed: () => { /*create method to minus properly*/ },
                        ),
                        Text("$destroyedEnergy"),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.plus,),
                          //iconSize: ,
                          onPressed: () => { /*create method to add properly*/ },
                        ),
                      ],
                    )
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Column(
              children: [
                Center(
                  child: Text("Energy Gained"),
                ),
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.minus,),
                          //iconSize: ,
                          onPressed: () => { /*create method to minus properly*/ },
                        ),
                        Text("$gainedEnergy"),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.plus,),
                          //iconSize: ,
                          onPressed: () => { /*create method to add properly*/ },
                        ),
                      ],
                    )
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Text("End"),
                    onPressed: () => {},
                  )
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.windowRestore),
                    onPressed: () => {},
                  )
                )
              ],
            )
          ],
        )
      )
    );
  }
}

