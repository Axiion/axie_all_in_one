import 'package:axie_all_in_one/Screens/slp_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
      body: Center(
          child:
          SpinKitDoubleBounce(
            color: Colors.black,
            size: 100.0,
          ),
      ),
    );
  }
}