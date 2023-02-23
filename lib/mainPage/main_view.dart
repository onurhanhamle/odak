import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odak/announcement/announcement.dart';
import 'package:odak/constant/color_constants.dart';
import 'package:odak/constant/context_extension_constants.dart';
import 'package:odak/mainPage/main_viewmodel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  final double year;
  final double sales;

  SalesData(this.year, this.sales);
}

class MainView extends MainViewModel {
  final _calendarControllerToday = AdvancedCalendarController.today();

  final List<DateTime> events = [
    DateTime.now(),
    DateTime(2022, 10, 10),
  ];

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(1, 5),
      SalesData(2, 6),
      SalesData(3, 7),
      SalesData(4, 8),
      SalesData(5, 0),
    ];
    return chartData;
  }

  late List<SalesData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
          width: 60,
          decoration: BoxDecoration(
              color: ColorConstants.appWhite,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                )
              ]),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.density_medium_rounded,
              color: ColorConstants.appBlue,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10, top: 5, bottom: 5),
            width: 50,
            decoration: BoxDecoration(
                color: ColorConstants.appWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                  )
                ]),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_alert_outlined,
                color: ColorConstants.appBlue,
              ),
            ),
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Anasayfa",
          style: GoogleFonts.inter(fontSize: 15, color: ColorConstants.appBlue),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: context.dynamicWidth(0.05),
            right: context.dynamicWidth(0.05)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hoşgeldiniz!",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text("Girişler ve Çıkışlar!"),
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(10),
              height: context.dynamicHeight(0.25),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.appBlue, width: 2),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bu Ay Toplam Saati"),
                        IconButton(
                          icon: Icon(Icons.reddit),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Expanded(child: Text("45 Saat")),
                  Expanded(
                    flex: 8,
                    child: SfCartesianChart(
                      series: <ChartSeries>[
                        LineSeries<SalesData, double>(
                            dataSource: _chartData,
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true))
                      ],
                      primaryXAxis: NumericAxis(
                          edgeLabelPlacement: EdgeLabelPlacement.shift),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Duyurular"),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                          maintainState: false,
                            builder: (context) {
                      return Announcement();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: context.dynamicWidth(0.2),
                    height: context.dynamicHeight(0.04),
                    decoration: BoxDecoration(
                        color: ColorConstants.appBlue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Tümü",
                      style: TextStyle(color: ColorConstants.appWhite),
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(5),
              height: context.dynamicHeight(0.065),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.appBlue, width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstants.appWhite),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add_alert_outlined,
                    color: ColorConstants.appBlue,
                    size: 35,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Duyurular 1",
                        style: GoogleFonts.inter(),
                      ),
                      Text(
                        "12.01.2023",
                        style: GoogleFonts.inter(
                            color: Colors.black.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mail_outline,
                            color: ColorConstants.appBlue,
                          )),
                      Container(
                        alignment: Alignment.center,
                        height: context.dynamicHeight(0.04),
                        width: context.dynamicWidth(0.15),
                        decoration: BoxDecoration(
                            color: ColorConstants.appBlue,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Detay",
                          style:
                              GoogleFonts.inter(color: ColorConstants.appWhite),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(5),
              height: context.dynamicHeight(0.065),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.appBlue, width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstants.appWhite),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add_alert_outlined,
                    color: ColorConstants.appBlue,
                    size: 35,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Duyurular 1",
                        style: GoogleFonts.inter(),
                      ),
                      Text(
                        "12.01.2023",
                        style: GoogleFonts.inter(
                            color: Colors.black.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mail_outline,
                            color: ColorConstants.appBlue,
                          )),
                      Container(
                        alignment: Alignment.center,
                        height: context.dynamicHeight(0.04),
                        width: context.dynamicWidth(0.15),
                        decoration: BoxDecoration(
                            color: ColorConstants.appBlue,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Detay",
                          style:
                              GoogleFonts.inter(color: ColorConstants.appWhite),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Takvim"),
                Container(
                  height: context.dynamicHeight(0.15),
                  decoration: BoxDecoration(
                      color: ColorConstants.appWhite,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: ColorConstants.appBlue)),
                  child: Column(
                    children: [
                      AdvancedCalendar(
                        controller: _calendarControllerToday,
                        events: events,
                        startWeekDay: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
