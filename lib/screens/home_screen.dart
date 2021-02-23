import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelApp/constants/color_constants.dart';
import 'package:travelApp/widgets/bottom_navigation_travelkuy.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationTravelkuy(),
      body: Container(),
    );
  }
}
