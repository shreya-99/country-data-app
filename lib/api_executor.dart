import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:rxdart/rxdart.dart';



class APIExecutor{
  PublishSubject stream = PublishSubject();
  String stringResponse;
  List listResponse;
  String mapResponse;
  List listOfTopLevelDomains;

  Future<List< dynamic>> fetchData() async {
    http.Response response;
    response = await http.get("https://restcountries.eu/rest/v2/all");
    if (response.statusCode == 200) {
      mapResponse= response.body;
      final dynamic  parsedResponse = jsonDecode(mapResponse);
      return parsedResponse;

    }
  }
}

