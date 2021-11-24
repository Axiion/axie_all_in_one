import 'package:axie_all_in_one/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class slpValue extends StatefulWidget {
  const slpValue({Key? key}) : super(key: key);

  @override
  _calculatorScreenState createState() => _calculatorScreenState();
}

class _calculatorScreenState extends State<slpValue> {
  @override
  Widget build(BuildContext context) {
    Get.put(Themes());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("SLP Value", style: Theme.of(context).primaryTextTheme.headline6,)),
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
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Text("Image here"),
              ),
              Expanded(
                flex: 2,
                child: Text("Smooth Love Potion Value (SLP)"),
              ),
              Expanded(
                flex: 1,
                child: Text("PLACEHOLDER FOR API SLP VALUE"),
              ),
              Expanded(
                flex: 1,
                child: Text("PLACEHOLDER FOR API SLP VALUE IN PHP"),
              ),
              Expanded(
                flex: 1,
                child: Text("as of DATE"),
              ),
              Expanded(
                flex: 1,
                child: Text("from API"),
              )
            ],
          ),
        ),
      )
    );
  }
}

