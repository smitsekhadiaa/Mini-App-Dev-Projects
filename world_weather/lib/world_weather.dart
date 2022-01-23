import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldWeather{

  late String location;
  late String country;
  late String localtime;
  late String url;
  late String flag;
  late String temperature;
  late String windspeed;
  late String feelslike;
  late String pressure;
  late String humidity;
  late String visibility;
  late String isDay;
  late String weather;

  WorldWeather({required this.location , required this.country , required this.flag, required this.url, required this.windspeed, required this.temperature, required this.pressure, required this.visibility , required this.feelslike, required this.humidity, required this.isDay, required this.localtime})

  Future <void> getWeather() async{

    try{
      Response response= await get(Uri.parse('http://api.weatherstack.com/current?access_key=b771eef0c4e3c1dcf0d6aba3e2d66986&query=New%20York'));
      Map data= jsonDecode(response.body);
      Map data2=data['location'];
      print(data);
      Map data3=data['current'];
      print(data2);
      print(data3);
      weather=

    }
    catch(e){
      print('error : $e');
      weather='couldnt not get weather sorry gais :)';
    }

  }

}