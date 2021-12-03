import 'package:http/http.dart' as http;
import 'dart:convert';

class coingecko_slp{

  coingecko_slp(this.url);
  final String url;
  Future getPrice() async{
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else{
      print(response.statusCode);
    }
  }

}