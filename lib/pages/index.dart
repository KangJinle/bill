import 'package:bill/adaptor.dart';
import 'package:bill/colors.dart';
import 'package:bill/iconfont.dart';
import 'package:bill/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IndexState();
}

class IndexState extends State<IndexPage> {
  @override
  void initState() {
    super.initState();
  }

  void _toRecord(context) {
    AppRouter.toPage(context, 'record');
  }

  void _toLimitset(context) {
    AppRouter.toPage(context, 'limit-set');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('首页', style: TextStyle(fontSize: 16.0))),
        body: Observer(
          builder: (_) => Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: Adaptor.px(180.0),
                          margin: EdgeInsets.only(
                              left: Adaptor.px(8.0), right: Adaptor.px(8.0)),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: AppColors.appYellowShadow,
                                    blurRadius: 8.0,
                                    offset: Offset(2.0, 1.0))
                              ],
                              gradient: const LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    AppColors.appYellow,
                                    AppColors.appYellowLight
                                  ])),
                          child: Container(
                            margin: const EdgeInsets.only(left: 20.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '支出',
                                    style: TextStyle(
                                      color: AppColors.appWhite,
                                      fontSize: Adaptor.px(26.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: Adaptor.px(6.0),
                                        bottom: Adaptor.px(6.0)),
                                    child: Text('100.00',
                                        style: TextStyle(
                                            color: AppColors.appWhite,
                                            fontSize: Adaptor.px(34.0),
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Text('比上月多100000',
                                      style: TextStyle(
                                          color: AppColors.appWhite,
                                          fontSize: Adaptor.px(26.0))),
                                ]),
                          )),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: Adaptor.px(180.0),
                            margin: EdgeInsets.only(
                                left: Adaptor.px(8.0), right: Adaptor.px(8.0)),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.appGreenShadow,
                                      blurRadius: 8.0,
                                      offset: Offset(2.0, 1.0))
                                ],
                                gradient: const LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      AppColors.appGreen,
                                      AppColors.appGreenLight
                                    ])),
                            child: Container(
                              margin: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('收入',
                                        style: TextStyle(
                                            color: AppColors.appWhite,
                                            fontSize: Adaptor.px(26.0))),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Adaptor.px(6.0),
                                          bottom: Adaptor.px(6.0)),
                                      child: Text('100.00',
                                          style: TextStyle(
                                              color: AppColors.appWhite,
                                              fontSize: Adaptor.px(34.0),
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Text('比上月多100000',
                                        style: TextStyle(
                                          color: AppColors.appWhite,
                                          fontSize: Adaptor.px(26.0),
                                        )),
                                  ]),
                            )))
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: Adaptor.px(20.0)),
                    width: Adaptor.px(1020),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: AppColors.appWhite,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.appBlackShadow,
                              blurRadius: 5.0,
                              offset: Offset(0, 1.0))
                        ]),
                    child: Wrap(children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '本月预算',
                              style: TextStyle(
                                  color: AppColors.appTextDark,
                                  fontSize: Adaptor.px(28.0)),
                            ),
                            GestureDetector(
                              onTap: () => _toLimitset(context),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    IconFont.iconSettings,
                                    size: Adaptor.px(26.0),
                                    color: AppColors.appTextDark,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: Adaptor.px(4.0)),
                                    child: Text('设置预算',
                                        style: TextStyle(
                                            color: AppColors.appTextDark,
                                            fontSize: Adaptor.px(28.0))),
                                  )
                                ],
                              ),
                            )
                          ]),
                      Container(
                        margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('￥100',
                                  style: TextStyle(
                                      color: AppColors.appTextDark,
                                      fontSize: Adaptor.px(28.0))),
                              Text('￥100',
                                  style: TextStyle(
                                      color: AppColors.appTextDark,
                                      fontSize: Adaptor.px(28.0))),
                            ]),
                      ),
                      FAProgressBar(
                          direction: Axis.horizontal,
                          currentValue: 80,
                          displayText: '%',
                          size: Adaptor.px(28.0))
                    ])),
                Container(
                    margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    width: Adaptor.px(1020.0),
                    height: Adaptor.px(80.0),
                    decoration: BoxDecoration(
                        color: AppColors.appWhite,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.appBlackShadow,
                              blurRadius: 5.0,
                              offset: Offset(0, 1.0))
                        ]),
                    child: FlatButton(
                        onPressed: () => _toRecord(context),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(IconFont.iconEdit,
                                size: Adaptor.px(32.0),
                                color: AppColors.appTextNormal),
                            Padding(
                              padding: EdgeInsets.only(left: Adaptor.px(10.0)),
                              child: Text('记一笔',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.appTextDark,
                                      fontSize: Adaptor.px(28.0))),
                            )
                          ],
                        ))),
                Container(
                    child: Expanded(
                        child: ListView(children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(
                          left: Adaptor.px(6.0),
                          right: Adaptor.px(6.0),
                          bottom: Adaptor.px(10.0),
                          top: Adaptor.onePx()),
                      padding: EdgeInsets.all(Adaptor.px(16.0)),
                      decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.appBlackShadow,
                                blurRadius: 5.0,
                                offset: Offset(0, 1.0))
                          ]),
                      child: Wrap(children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(
                                top: Adaptor.px(16.0),
                                bottom: Adaptor.px(16.0)),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  width: Adaptor.onePx(),
                                  color: AppColors.appBorder),
                            )),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('2019-11-12',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appTextNormal)),
                                  Text('支出7.50',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appTextNormal)),
                                ])),
                        Wrap(children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(
                                  top: Adaptor.px(20.0),
                                  bottom: Adaptor.px(20.0)),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder),
                              )),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: Adaptor.px(80.0),
                                              height: Adaptor.px(80.0),
                                              decoration: BoxDecoration(
                                                  color: AppColors.appYellow,
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(
                                                          Adaptor.px(40.0)))),
                                              child: Center(
                                                  child: Icon(
                                                      IconFont.iconAlipay,
                                                      size: Adaptor.px(60.0))),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: Adaptor.px(20.0)),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Text('交通',
                                                          style: TextStyle(
                                                              fontSize:
                                                                  Adaptor.px(
                                                                      30.0),
                                                              color: AppColors
                                                                  .appTextDark)),
                                                      Text('地铁',
                                                          style: TextStyle(
                                                              fontSize:
                                                                  Adaptor.px(
                                                                      24.0),
                                                              color: AppColors
                                                                  .appTextDark))
                                                    ]))
                                          ])
                                    ]),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('3.00',
                                            style: TextStyle(
                                              fontSize: Adaptor.px(36.0),
                                              color: AppColors.appOutlay,
                                            )),
                                        SizedBox(
                                          width: Adaptor.px(8.0),
                                        ),
                                        Icon(IconFont.iconMore,
                                            size: Adaptor.px(20.0),
                                            color: AppColors.appTextNormal),
                                      ],
                                    )
                                  ])),
                          Container(
                              padding: EdgeInsets.only(
                                  top: Adaptor.px(20.0),
                                  bottom: Adaptor.px(20.0)),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder),
                              )),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(children: <Widget>[
                                        Container(
                                          width: Adaptor.px(80.0),
                                          height: Adaptor.px(80.0),
                                          decoration: BoxDecoration(
                                              color: AppColors.appYellow,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Adaptor.px(40.0)))),
                                          child: Center(
                                              child: Icon(IconFont.iconAlipay,
                                                  size: Adaptor.px(60.0))),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: Adaptor.px(20.0)),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('交通',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(30.0),
                                                          color: AppColors
                                                              .appTextDark)),
                                                  Text('地铁',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(24.0),
                                                          color: AppColors
                                                              .appTextDark))
                                                ]))
                                      ])
                                    ]),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('3.00',
                                            style: TextStyle(
                                              fontSize: Adaptor.px(36.0),
                                              color: AppColors.appOutlay,
                                            )),
                                        SizedBox(
                                          width: Adaptor.px(8.0),
                                        ),
                                        Icon(IconFont.iconMore,
                                            size: Adaptor.px(20.0),
                                            color: AppColors.appTextNormal),
                                      ],
                                    )
                                  ]))
                        ])
                      ])),
                  Container(
                      margin: EdgeInsets.only(
                          left: Adaptor.px(6.0),
                          right: Adaptor.px(6.0),
                          bottom: Adaptor.px(10.0),
                          top: Adaptor.onePx()),
                      padding: EdgeInsets.all(Adaptor.px(16.0)),
                      decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.appBlackShadow,
                                blurRadius: 5.0,
                                offset: Offset(0, 1.0))
                          ]),
                      child: Wrap(children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(
                                top: Adaptor.px(16.0),
                                bottom: Adaptor.px(16.0)),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  width: Adaptor.onePx(),
                                  color: AppColors.appBorder),
                            )),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('2019-11-12',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appTextNormal)),
                                  Text('支出7.50',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appTextNormal)),
                                ])),
                        Wrap(children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(
                                  top: Adaptor.px(20.0),
                                  bottom: Adaptor.px(20.0)),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder),
                              )),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(children: <Widget>[
                                        Container(
                                          width: Adaptor.px(80.0),
                                          height: Adaptor.px(80.0),
                                          decoration: BoxDecoration(
                                              color: AppColors.appYellow,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Adaptor.px(40.0)))),
                                          child: Center(
                                              child: Icon(IconFont.iconAlipay,
                                                  size: Adaptor.px(60.0))),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: Adaptor.px(20.0)),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('交通',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(30.0),
                                                          color: AppColors
                                                              .appTextDark)),
                                                  Text('地铁',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(24.0),
                                                          color: AppColors
                                                              .appTextDark))
                                                ]))
                                      ])
                                    ]),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('3.00',
                                            style: TextStyle(
                                              fontSize: Adaptor.px(36.0),
                                              color: AppColors.appOutlay,
                                            )),
                                        SizedBox(
                                          width: Adaptor.px(8.0),
                                        ),
                                        Icon(IconFont.iconMore,
                                            size: Adaptor.px(20.0),
                                            color: AppColors.appTextNormal),
                                      ],
                                    )
                                  ])),
                          Container(
                              padding: EdgeInsets.only(
                                  top: Adaptor.px(20.0),
                                  bottom: Adaptor.px(20.0)),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder),
                              )),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(children: <Widget>[
                                        Container(
                                          width: Adaptor.px(80.0),
                                          height: Adaptor.px(80.0),
                                          decoration: BoxDecoration(
                                              color: AppColors.appYellow,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Adaptor.px(40.0)))),
                                          child: Center(
                                              child: Icon(IconFont.iconAlipay,
                                                  size: Adaptor.px(60.0))),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: Adaptor.px(20.0)),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('交通',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(30.0),
                                                          color: AppColors
                                                              .appTextDark)),
                                                  Text('地铁',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(24.0),
                                                          color: AppColors
                                                              .appTextDark))
                                                ]))
                                      ])
                                    ]),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text('3.00',
                                            style: TextStyle(
                                              fontSize: Adaptor.px(36.0),
                                              color: AppColors.appOutlay,
                                            )),
                                        SizedBox(
                                          width: Adaptor.px(8.0),
                                        ),
                                        Icon(IconFont.iconMore,
                                            size: Adaptor.px(20.0),
                                            color: AppColors.appTextNormal),
                                      ],
                                    )
                                  ]))
                        ])
                      ])),
                  Container(
                      margin: EdgeInsets.only(
                          left: Adaptor.px(6.0),
                          right: Adaptor.px(6.0),
                          bottom: Adaptor.px(10.0),
                          top: Adaptor.onePx()),
                      padding: EdgeInsets.all(Adaptor.px(16.0)),
                      decoration: BoxDecoration(
                          color: AppColors.appWhite,
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.appBlackShadow,
                                blurRadius: 5.0,
                                offset: Offset(0, 1.0))
                          ]),
                      child: Wrap(children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(
                                top: Adaptor.px(16.0),
                                bottom: Adaptor.px(16.0)),
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  width: Adaptor.onePx(),
                                  color: AppColors.appBorder),
                            )),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('2019-11-12',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appTextNormal)),
                                  Text('支出7.50',
                                      style: TextStyle(
                                          fontSize: Adaptor.px(28.0),
                                          color: AppColors.appTextNormal)),
                                ])),
                        Wrap(children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(
                                  top: Adaptor.px(20.0),
                                  bottom: Adaptor.px(20.0)),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder),
                              )),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(children: <Widget>[
                                        Container(
                                          width: Adaptor.px(80.0),
                                          height: Adaptor.px(80.0),
                                          decoration: BoxDecoration(
                                              color: AppColors.appYellow,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Adaptor.px(40.0)))),
                                          child: Center(
                                              child: Icon(IconFont.iconAlipay,
                                                  size: Adaptor.px(60.0))),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: Adaptor.px(20.0)),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('交通',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(30.0),
                                                          color: AppColors
                                                              .appTextDark)),
                                                  Text('地铁',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(24.0),
                                                          color: AppColors
                                                              .appTextDark))
                                                ]))
                                      ])
                                    ]),
                                    Text('3.00',
                                        style: TextStyle(
                                          fontSize: Adaptor.px(36.0),
                                          color: AppColors.appOutlay,
                                        ))
                                  ])),
                          Container(
                              padding: EdgeInsets.only(
                                  top: Adaptor.px(20.0),
                                  bottom: Adaptor.px(20.0)),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: Adaptor.onePx(),
                                    color: AppColors.appBorder),
                              )),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(children: <Widget>[
                                        Container(
                                          width: Adaptor.px(80.0),
                                          height: Adaptor.px(80.0),
                                          decoration: BoxDecoration(
                                              color: AppColors.appYellow,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Adaptor.px(40.0)))),
                                          child: Center(
                                              child: Icon(IconFont.iconAlipay,
                                                  size: Adaptor.px(60.0))),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: Adaptor.px(20.0)),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('交通',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(30.0),
                                                          color: AppColors
                                                              .appTextDark)),
                                                  Text('地铁',
                                                      style: TextStyle(
                                                          fontSize:
                                                              Adaptor.px(24.0),
                                                          color: AppColors
                                                              .appTextDark))
                                                ]))
                                      ])
                                    ]),
                                    Text('3.00',
                                        style: TextStyle(
                                            fontSize: Adaptor.px(36.0),
                                            color: AppColors.appIncome))
                                  ]))
                        ])
                      ]))
                ])))
              ])),
        ));
  }
}
