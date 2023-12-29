import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Trends extends StatefulWidget {
  const Trends({Key? key}) : super(key: key);

  @override
  State<Trends> createState() => _TrendsState();
}

class _TrendsState extends State<Trends> {
  late List<SampleData> sampleData;

  @override
  void initState() {
    super.initState();
    // Call a function to update the graph data when the widget is initialized
    updateGraphData();
  }

  // Function to update the graph data
  void updateGraphData() {
    // Generate random sample data within the range of 1 to 9
    Random random = Random();
    sampleData = List.generate(
      4,
          (index) => SampleData(date: DateTime.now(), rate: random.nextInt(9) + 1),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 80, 40, 40),
      child: Container(
        child: LineChart(
          LineChartData(
            minY: 0,
            maxY: 10,
            minX: 0,
            maxX: 15,
            borderData: FlBorderData(
              show: true,
              border: Border.all(),
            ),
            titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: sampleData
                    .asMap()
                    .map((key, value) =>
                    MapEntry(key, FlSpot(key.toDouble(), value.rate)))
                    .values
                    .toList(),
                isCurved: true,
                color: Colors.white,
                barWidth: 2.5,
                belowBarData: BarAreaData(
                  show: true,
                  color: Color.fromARGB(99, 142, 152, 169),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SampleData {
  final DateTime date;
  final double rate;

  SampleData({required this.date, required this.rate});
}