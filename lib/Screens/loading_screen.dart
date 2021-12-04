import 'package:axie_all_in_one/Screens/slp_value.dart';
import 'package:flutter/material.dart';
import 'coingecko_slp.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getSLPPrice();
  }

  void getSLPPrice() async {
    coingecko_slp slpPrice = new coingecko_slp(
        "https://api.coingecko.com/api/v3/simple/price?ids=smooth-love-potion&vs_currencies=php%2Cusd");
    var slpData = await slpPrice.getPrice();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return slpValue(
        data: slpData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 250),
            child: Center(
              child: Image(
                width: 100,
                height: 100,
                image: AssetImage('images/loading.gif'),
              ),
            ),
          ),
          Center(
            child: Text(
              'Fetching SLP value\n Please wait...',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
