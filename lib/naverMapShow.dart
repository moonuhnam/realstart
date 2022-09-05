import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:naver_map_plugin/naver_map_plugin.dart';

class NaverMapShow extends StatelessWidget {
  const NaverMapShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: NaverMap(
        mapType: MapType.Basic,
        initLocationTrackingMode: LocationTrackingMode.Follow,
    ),);
  }
}
