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
        title: Center(child: Text("Daily and Total SLP", style: Theme.of(context).primaryTextTheme.headline6,)),
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
      //body:
    );
  }
}

