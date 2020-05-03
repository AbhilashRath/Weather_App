import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weather_app/services/daily_weather_data.dart';


class GraphWidget extends StatelessWidget {
  GraphWidget({@required this.graphData});
  final List<DailyData>graphData;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfCartesianChart(
          // Initialize category axis
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(
              decimalPlaces: 1,
              maximumLabels: 1


          ),

          series: <ColumnSeries<DailyData,String>>[
            ColumnSeries<DailyData, String>(
              dataSource: graphData,
              borderRadius: BorderRadius.circular(10),
              width: 0.3,
//                color: Color(0xFF10103B),
              name: 'Humidity',
              pointColorMapper: (DailyData hourly,_)=>hourly.color,
              xValueMapper: (DailyData hourly, _) => hourly.time,
              yValueMapper: (DailyData hourly, _) => hourly.temprature,)
          ],));
  }
}