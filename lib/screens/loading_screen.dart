import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';


const apiKey = '98bba56f6756c7a55dce8ed85237fae9';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double? latitude;
  double? longitude;

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper('http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&APPID=$apiKey');

    var weatherData = await networkHelper.getData();

  }

  @override
  void initState() {
    getLocationData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Get Location'),
        ),
    );
  }
}
