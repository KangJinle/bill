import 'package:bill/adaptor.dart';
import 'package:bill/colors.dart';
import 'package:bill/iconfont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_daydart/flutter_daydart.dart';

class WealthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WealthState();
}

class WealthState extends State<WealthPage> {
  String _currentYear = (DayDart().year()).toString();
  int _selectedIndex = -1;

  List<String> _years = [
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008'
  ];

  @override
  void initState() {
    super.initState();
  }

  void _yearSelectOk() {
    setState(() {
      if (_selectedIndex != -1) {
        _currentYear = _years[_selectedIndex];
      }
    });
    Navigator.of(context).pop();
  }

  void _showYearSelect(BuildContext context) {
    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         titlePadding: EdgeInsets.only(
    //             top: Adaptor.px(20.0),
    //             bottom: 0,
    //             left: Adaptor.px(20.0),
    //             right: Adaptor.px(20.0)),
    //         contentPadding: EdgeInsets.only(
    //             top: 0,
    //             bottom: 0,
    //             left: Adaptor.px(20.0),
    //             right: Adaptor.px(20.0)),
    //         title: Text('选择查询年度',
    //             style: TextStyle(
    //                 fontSize: Adaptor.px(32.0),
    //                 fontWeight: FontWeight.w400,
    //                 color: AppColors.appTextDark)),
    //         content:
    //             StatefulBuilder(builder: (context, StateSetter setState) {
    //           return Container(
    //               height: Adaptor.px(350.0),
    //               child: Center(
    //                   child: Container(
    //                       width: Adaptor.px(200.0),
    //                       height: Adaptor.px(300.0),
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.center,
    //                         children: <Widget>[
    //                           Container(
    //                               width: Adaptor.px(180.0),
    //                               child: CupertinoPicker(
    //                                 itemExtent: Adaptor.px(64.0),
    //                                 backgroundColor: Colors.white,
    //                                 onSelectedItemChanged: (int i) {
    //                                   setState(() {
    //                                     _selectedIndex = i;
    //                                   });
    //                                 },
    //                                 children: List.generate(_years.length,
    //                                     (int index) {
    //                                   return Center(
    //                                       child: Text(_years[index],
    //                                           style: TextStyle(
    //                                               color: AppColors.appTextDark,
    //                                               fontSize: Adaptor.px(32.0),
    //                                               fontWeight:
    //                                                   FontWeight.normal)));
    //                                 }).toList(),
    //                               )),
    //                         ],
    //                       ))));
    //         }),
    //         actions: <Widget>[
    //           FlatButton(
    //             splashColor: Colors.transparent,
    //             highlightColor: Colors.transparent,
    //             onPressed: _yearSelectOk,
    //             child: Text('确定',
    //                 style: TextStyle(
    //                     fontSize: Adaptor.px(28.0),
    //                     color: AppColors.appYellow,
    //                     fontWeight: FontWeight.normal)),
    //           ),
    //           FlatButton(
    //               splashColor: Colors.transparent,
    //               highlightColor: Colors.transparent,
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //               },
    //               child: Text('取消',
    //                   style: TextStyle(
    //                       fontSize: Adaptor.px(28.0),
    //                       color: AppColors.appTextDark,
    //                       fontWeight: FontWeight.normal))),
    //         ],
    //       );
    //     });
    showModalBottomSheet(
      context: context,
      // sele: DateTime.now(),
      builder: (context) {
        return Container(
            width: Adaptor.screenW(),
            height: Adaptor.px(500),
            child: Wrap(
              children: <Widget>[
                Row(
                  children: <Widget>[Text('取消'), Text('确定')],
                ),
                Container(
                    width: Adaptor.screenW(),
                    height: Adaptor.px(300),
                    child: YearPicker(
                      selectedDate: DateTime.now(),
                      onChanged: (time) {
                        // Navigator.of(context).pop();
                      },
                      firstDate: DateTime.utc(2000, 1),
                      lastDate: DateTime.utc(2100, 12),
                    ))
              ],
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('资产',
                style: TextStyle(
                    fontSize: Adaptor.px(32.0), color: AppColors.appTextDark))),
        body: Container(
            child: SingleChildScrollView(
                child: Container(
          margin: EdgeInsets.only(
              top: Adaptor.px(10.0),
              left: Adaptor.px(10.0),
              right: Adaptor.px(10.0)),
          child: Wrap(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(
                      top: Adaptor.px(10.0),
                      left: Adaptor.px(10.0),
                      right: Adaptor.px(10.0)),
                  width: Adaptor.px(1040.0),
                  height: Adaptor.px(350.0),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.appYellowShadow,
                            blurRadius: 8.0,
                            offset: Offset(0, 1.0))
                      ],
                      gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            AppColors.appYellow,
                            AppColors.appYellowLight
                          ])),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            child: FlatButton(
                                padding: EdgeInsets.all(Adaptor.px(10.0)),
                                onPressed: () => _showYearSelect(context),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text('$_currentYear年',
                                        style: TextStyle(
                                            color: AppColors.appTextDark,
                                            fontSize: Adaptor.px(28.0),
                                            fontWeight: FontWeight.normal)),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: Adaptor.px(4.0)),
                                      child: Icon(IconFont.iconDown,
                                          size: Adaptor.px(20.0),
                                          color: AppColors.appTextDark),
                                    )
                                  ],
                                ))),
                        Container(
                          margin: EdgeInsets.only(bottom: Adaptor.px(40.0)),
                          child: Column(children: <Widget>[
                            Text('全年结余',
                                style: TextStyle(
                                    fontSize: Adaptor.px(32.0),
                                    color: AppColors.appTextDark)),
                            Text('0',
                                style: TextStyle(
                                    fontSize: Adaptor.px(48.0),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.appTextDark))
                          ]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Container(
                                    width: Adaptor.px(Adaptor.screenW()),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                width: Adaptor.onePx(),
                                                color:
                                                    AppColors.appBorderDark))),
                                    child: Column(
                                      children: <Widget>[
                                        Text('全年支出',
                                            style: TextStyle(
                                                fontSize: Adaptor.px(28.0),
                                                color: AppColors.appTextDark)),
                                        Text('0.00',
                                            style: TextStyle(
                                                fontSize: Adaptor.px(32.0),
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.appTextDark))
                                      ],
                                    ))),
                            Expanded(
                                flex: 1,
                                child: Container(
                                    child: Column(
                                  children: <Widget>[
                                    Text('全年收入',
                                        style: TextStyle(
                                            fontSize: Adaptor.px(28.0),
                                            color: AppColors.appTextDark)),
                                    Text('0.00',
                                        style: TextStyle(
                                            fontSize: Adaptor.px(32.0),
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.appTextDark))
                                  ],
                                )))
                          ],
                        )
                      ],
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: Adaptor.px(20.0),
                      bottom: Adaptor.px(20.0),
                      left: Adaptor.px(10.0),
                      right: Adaptor.px(10.0)),
                  width: Adaptor.px(1040.0),
                  padding: EdgeInsets.all(Adaptor.px(20.0)),
                  decoration: BoxDecoration(
                      color: AppColors.appWhite,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.appBlackShadow,
                            blurRadius: 5.0,
                            offset: Offset(0, 1.0))
                      ]),
                  child: Column(children: <Widget>[
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(80.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(10.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('月份',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(30.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text('收入',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(30.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text('支出',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(30.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text('结余',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(30.0),
                                        color: AppColors.appTextDark)),
                              )
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ])),
                    Container(
                        width: Adaptor.px(1040.0),
                        height: Adaptor.px(76.0),
                        padding: EdgeInsets.only(
                            bottom: Adaptor.px(20.0), top: Adaptor.px(20.0)),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text('2019-11',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                              Container(
                                child: Text(
                                  '1000000',
                                  style: TextStyle(
                                      fontSize: Adaptor.px(28.0),
                                      color: AppColors.appIncome),
                                ),
                              ),
                              Container(
                                  child: Text('1000000',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appOutlay))),
                              Container(
                                child: Text('800000',
                                    style: TextStyle(
                                        fontSize: Adaptor.px(28.0),
                                        color: AppColors.appTextDark)),
                              ),
                            ]))
                  ]))
            ],
          ),
        ))));
  }
}
