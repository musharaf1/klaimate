
import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkHelper{
String url;

NetworkHelper(this.url);

  Future getDate()async {
    http.Response response = await http.get(url
        //'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'
        );
    if (response.statusCode == 200) {
      print(response.body);
      String data = response.body;
       var decodedResponse = jsonDecode(data);
       return decodedResponse;
    }else{
      print(response.statusCode);
    }
  }

}