import 'package:flutnew/models/radial_chart/chart_data_model.dart';
import 'package:flutnew/presentation/widgets/metrices/metrices.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Steve', 38, const Color(0xffd9a52e), '2%', '55%'),
      ChartData('David', 25, Theme.of(context).primaryColor, '2%', '65%'),
    ];
    return SizedBox(
      height: 250,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            width: double.infinity,

            margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
            // height: 231,
            decoration: const BoxDecoration(
              color: Color(0xffe7daee),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(200),
                topRight: Radius.circular(0),
              ),
              shape: BoxShape.rectangle,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: FractionallySizedBox(
                widthFactor: 0.39,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        child: Column(
                      children: [
                        const Metrices(
                          value: '0.1',
                          metriceName: 'Kms',
                          icon: Icons.directions_walk_outlined,
                          iconColor: Colors.red,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Metrices(
                          value: '190',
                          metriceName: 'Cal',
                          icon: Icons.local_fire_department_rounded,
                          iconColor: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Metrices(
                          value: '24',
                          metriceName: 'Coins',
                          icon: Icons.currency_exchange,
                          iconColor: Colors.yellow,
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: -20,
            top: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SfCircularChart(
                      margin: EdgeInsets.zero,
                      series: <CircularSeries>[
                        // Renders radial bar chart
                        RadialBarSeries<ChartData, String>(
                          useSeriesColor: true,
                          strokeColor: Colors.grey.withOpacity(0.3),
                          radius: '80%',
                          innerRadius: '65%',
                          gap: '-0%',
                          trackOpacity: 0.3,
                          cornerStyle: CornerStyle.bothCurve,
                          dataSource: chartData,
                          pointRadiusMapper: (ChartData data, _) => '80%',
                          pointColorMapper: (ChartData data, _) => data.color,
                          xValueMapper: (ChartData sales, _) => sales.x,
                          yValueMapper: (ChartData sales, _) => sales.y,
                        ),
                      ]),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '259',
                        style: TextStyle(
                            color: Color(0xff2f083b),
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'of 2000 steps',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
