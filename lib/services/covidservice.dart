import 'dart:convert';

import 'package:covid_app/model/covidmodel.dart';
import 'package:http/http.dart' as http;
class CovidApiServices{
  Future<List<Covid>> getCovid() async{
    var client=http.Client();
    var url=Uri.parse("http://10.0.4.223:3009/api/covid/view");
    var response=await client.get(url);
    if(response.statusCode==200)
      {
        return covidFromJson(response.body);
      }
    else{
      return [];
    }
  }
}