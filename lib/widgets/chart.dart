import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChartWidget extends StatefulWidget {
  final List<FlSpot> dataPoint;
  const ChartWidget({Key key, this.dataPoint}): super(key: key);
  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<ChartWidget> {
  List<Color> gradientColors = [
    const Color(0xff29ABE2),
    const Color(0x4029abe2),
  ];


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Color(0xff000D18)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 10.0,
                  left: 10.0,
                  top: 20,
                  bottom: 20
              ),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
        ),
      ],
    );
  }
  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: false,
      ),
      borderData:
      FlBorderData(
          show: true,
          border: Border.all(
              color: const Color(0xff37434d),
              width: 1
          )
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: widget.dataPoint,
          isCurved: true,
          colors: [
            Color(0xff29ABE2),
          ],
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors
          ),
        ),
      ],
    );
  }

}