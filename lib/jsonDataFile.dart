import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:http_request_get/model.dart';
import 'dart:convert';

import 'main.dart';

class Countries {
  Countries({List<dynamic> data}) {
    List<dynamic> rawList = data;

    listOfCountries = <Autogenerated>[];

    for (Map<String, dynamic> oneCountry in rawList) {
      listOfCountries.add(Autogenerated(countryData: oneCountry));
    }
  }
  List<Autogenerated> listOfCountries;
}

class Autogenerated {
  String name;

  // List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;

  // List<String> callingCodes;
  String capital;

  // List<String> altSpellings;
  String region;
  String subregion;
  int population;

  // List<int> latlng;
  String demonym;

  // int area;
  double gini;

  // List<String> timezones;
  List<dynamic> borders;
  String nativeName;
  String numericCode;

  List<dynamic> currencies;
  List<dynamic> languages;

  // Translations translations;
  String flag;

  //List<RegionalBlocs> regionalBlocs;
  String cioc;

  Autogenerated({Map<String, dynamic> countryData}) {
    this.name = countryData['name'];
    // this.topLevelDomain = countryData['topLevelDomain'];
    this.alpha2Code = countryData['alpha2Code'];
    this.alpha3Code = countryData['alpha3Code'];
    // this.callingCodes = countryData['callingCodes'];
    this.capital = countryData['capital'];
    // this.altSpellings = countryData['altSpellings'];
    this.region = countryData['region'];
    this.subregion = countryData['subregion'];
    this.population = countryData['population'];
    // this.latlng = countryData['latlng'];
    this.demonym = countryData['demonym'];
    // this.area = countryData['area'];
    this.gini = countryData['gini'];
    // this.timezones = countryData['timezones'];
     this.borders = countryData['borders'];
    this.nativeName = countryData['nativeName'];
    this.numericCode = countryData['numericCode'];
    this.currencies = countryData['currencies'];
    this.languages = countryData['languages'];
    // this.translations = countryData['translations'];
    this.flag = countryData['flag'];
    // this.regionalBlocs,
    this.cioc = countryData['cioc'];

    List<dynamic> rawCurrency = countryData['currencies'];
    currencies = [];
    for (Map<String, dynamic> mapCurrency in rawCurrency) {
      currencies.add(Currencies(currencyData: mapCurrency));
    }

    List<dynamic> rawLanguage = countryData['languages'];
    languages = [];
    for (Map<String, dynamic> mapLanguage in rawLanguage) {
      languages.add(Languages(languageData: mapLanguage));
    }


  }
}

class Currencies {
  String code;
  String name;
  String symbol;

  Currencies({Map<String, dynamic> currencyData}) {
    this.code = currencyData['code'];
    this.name = currencyData['name'];
    this.symbol = currencyData['symbol'];
  }
}

class Languages {
  String iso6391;
  String iso6392;
  String name;
  String nativeName;

  Languages({Map<String, dynamic> languageData}) {
    this.iso6391 = languageData['iso639_1'];
    this.iso6392 = languageData['iso639_2'];
    this.name = languageData['name'];
    this.nativeName = languageData['nativeName'];
  }
}

// class Borders {
//
//   Borders({String borderData});
// }
