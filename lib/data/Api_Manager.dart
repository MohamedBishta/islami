import 'dart:convert';
import 'package:http/http.dart' as http;
import 'RadiosResponse/RadiosModel.dart';
class ApiManager {
  static Future<List<Radios>?> getRadios() async {
  var url = Uri.https("mp3quran.net","/api/v3/radios");
  http.Response response = await http.get(url);
  if (response.statusCode == 200) {
    RadiosModel radiosModel = RadiosModel.fromJson(jsonDecode(response.body));
    return radiosModel.radios;
  } else {
  print('Request failed with status: ${response.statusCode}.');
  }
  }
}