import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
//1588313921
void main(){
//  getAddressFromLocation();
  getDate();
//List<bool> pressed = new List(10);
//for(int i=0;i<pressed.length;i++){
//  pressed[i] = false;
//}
//print(pressed);

}


//"lat":19.04,"lon":72.92
void getDate(){
  DateTime date = DateTime.fromMillisecondsSinceEpoch(1588363200*1000);
  String time = DateFormat('EEE').format(date);
  print(time);
}

Future<void> getData() async {
  http.Response response = await http.get('https://api.openweathermap.org/data/2.5/onecall?lat=60.99&lon=30.9&appid=b19f23d6304b17aaad167dcc2167f210');
  String body = response.body;
  var value = jsonDecode(body);
  print(value['hourly'][0]['temp']);
//  print('/01n');


}

void performTasks() async {
  task1();
  String r = await task2();
  task3(r);
}
void task1() {
  String result = 'This is task1.';
  print(result);
}

Future task2() async {
  Duration duration1  = Duration(seconds: 3);

  String result;
/*  sleep(duration);*/
  await Future.delayed(duration1,(){
    result = 'This is task2.';
    print(result);
  });
  return result;

}

void task3(String re) {
  String result = 'This is task3 with result from $re .';
  print(result);
}

